require("score")
mouse = {}
-- ��ȡ������ݵĺ��� --
local mousePosition = {0, 0, 0, 0}

-- �������¼� --
function mouse.mouseLinsener()
    --------------------
    --     �¼�����    --
    --------------------
    -- ��������¼� --
    -- ��ʼ���

    local touchBeginPoint = nil
    local function onTouchBegan(touch, event)
        local touchBeginPoint = touch:getLocation()
        cclog("onTouchBegan: %0.2f, %0.2f", touchBeginPoint.x, touchBeginPoint.y)
        -- CCTOUCHBEGAN event must return true
        mousePosition[1] = touchBeginPoint.x
        mousePosition[2] = touchBeginPoint.y
        -- ��������ú��������Ϣ���� --
        ui.index:removeChild(ui.temp, true)
        return true
    end

    -- ����ɿ�
    local function onTouchEnded(touch, event)
        local touchEndPoint = touch:getLocation()
        cclog("onTouchEnded: %0.2f, %0.2f", touchEndPoint.x, touchEndPoint.y)
        touchBeginPoint = nil
        mousePosition[3] = touchEndPoint.x
        mousePosition[4] = touchEndPoint.y
        
        
        -- �ж�����ƶ��ķ���--
        if math.abs(mousePosition[3] - mousePosition[1]) <= math.abs(mousePosition[4] - mousePosition[2]) and mousePosition[4] > mousePosition[2] then
            -- mouse.getMoveInformation(1)
            -- �����㷨�������д��� --
            local ArrayValue = algorithm.direction(1)
            -- ���н������Ⱦ
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

        -- ������ʹ�õĴ��� --
        -- a = algorithm.piece_class.new(12)
        -- a:print_x()
    end
    
    
    -- ����¼�����,ע������¼� --
    local listener = cc.EventListenerTouchOneByOne:create()
    listener:registerScriptHandler(onTouchBegan,cc.Handler.EVENT_TOUCH_BEGAN )
    listener:registerScriptHandler(onTouchEnded,cc.Handler.EVENT_TOUCH_ENDED )
    return listener

end

-- ��������ƶ���Ϣ�ĺ��� --
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