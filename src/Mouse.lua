require("score")
mouse = {}
-- 存取鼠标数据的函数 --
local mousePosition = {0, 0, 0, 0}

-- 鼠标监听事件 --
function mouse.mouseLinsener()
    --------------------
    --     事件部分    --
    --------------------
    -- 处理鼠标事件 --
    -- 开始点击

    local touchBeginPoint = nil
    local function onTouchBegan(touch, event)
        local touchBeginPoint = touch:getLocation()
        cclog("onTouchBegan: %0.2f, %0.2f", touchBeginPoint.x, touchBeginPoint.y)
        -- CCTOUCHBEGAN event must return true
        mousePosition[1] = touchBeginPoint.x
        mousePosition[2] = touchBeginPoint.y
        -- 在这里调用函数清空信息即可 --
        ui.index:removeChild(ui.temp, true)
        return true
    end

    -- 鼠标松开
    local function onTouchEnded(touch, event)
        local touchEndPoint = touch:getLocation()
        cclog("onTouchEnded: %0.2f, %0.2f", touchEndPoint.x, touchEndPoint.y)
        touchBeginPoint = nil
        mousePosition[3] = touchEndPoint.x
        mousePosition[4] = touchEndPoint.y
        
        
        -- 判断鼠标移动的方向--
        if math.abs(mousePosition[3] - mousePosition[1]) <= math.abs(mousePosition[4] - mousePosition[2]) and mousePosition[4] > mousePosition[2] then
            -- mouse.getMoveInformation(1)
            -- 进入算法函数进行处理 --
            local ArrayValue = algorithm.direction(1)
            -- 进行界面的渲染
            ui.ArrayLabel(ArrayValue)

        elseif math.abs(mousePosition[3] - mousePosition[1]) <= math.abs(mousePosition[4] - mousePosition[2]) and mousePosition[4] <= mousePosition[2] then
            -- mouse.getMoveInformation(2)
            --algorithm.direction(2)
            local ArrayValue = algorithm.direction(2)
            ui.ArrayLabel(ArrayValue)

        elseif math.abs(mousePosition[3] - mousePosition[1]) > math.abs(mousePosition[4] - mousePosition[2]) and mousePosition[3] <= mousePosition[1] then
            -- mouse.getMoveInformation(3)
            -- algorithm.direction(3)
            local ArrayValue = algorithm.direction(3)
            ui.ArrayLabel(ArrayValue)

        elseif math.abs(mousePosition[3] - mousePosition[1]) > math.abs(mousePosition[4] - mousePosition[2]) and mousePosition[3] > mousePosition[1] then
            -- mouse.getMoveInformation(4)
            -- algorithm.direction(4)
            local ArrayValue = algorithm.direction(4)
            ui.ArrayLabel(ArrayValue)
 
        end

        -- 测试类使用的代码 --
        -- a = algorithm.piece_class.new(12)
        -- a:print_x()
    end
    
    
    -- 鼠标事件监听,注册鼠标事件 --
    local listener = cc.EventListenerTouchOneByOne:create()
    listener:registerScriptHandler(onTouchBegan,cc.Handler.EVENT_TOUCH_BEGAN )
    listener:registerScriptHandler(onTouchEnded,cc.Handler.EVENT_TOUCH_ENDED )
    return listener

end

-- 测试鼠标移动信息的函数 --
function mouse.getMoveInformation(number)
    if number == 1 then
        print("up")
    elseif number == 2 then
        print("down")
    elseif number == 3 then
        print("left")
    elseif number == 4 then
        print("right")
    end
end

return mouse