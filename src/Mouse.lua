require "Algorithm.lua"


-- 编写鼠标移动的函数,1,2,3,4分别代表上下左右 --
function MouseMove()
    -- 判断鼠标的移动方向
end

function mouseLinsener(mouse)
    --------------------
    --     事件部分    --
    --------------------
    -- 处理鼠标事件 --
    -- 开始点击
    local touchBeginPoint = nil
    local function onTouchBegan(touch, event)
        local location = touch:getLocation()
        cclog("onTouchBegan: %0.2f, %0.2f", location.x, location.y)
        touchBeginPoint = {x = location.x, y = location.y}
        -- CCTOUCHBEGAN event must return true
        return true
    end

    -- 鼠标移动
    local function onTouchMoved(touch, event)
        local location = touch:getLocation()
        cclog("onTouchMoved: %0.2f, %0.2f", location.x, location.y)
        if touchBeginPoint then
            local cx, cy = mouse:getPosition()
            mouse:setPosition(cx + location.x - touchBeginPoint.x, cy + location.y - touchBeginPoint.y)
            touchBeginPoint = {x = location.x, y = location.y}
        end
    end

    -- 鼠标松开
    local function onTouchEnded(touch, event)
        local location = touch:getLocation()
        cclog("onTouchEnded: %0.2f, %0.2f", location.x, location.y)
        touchBeginPoint = nil
    end

    -- 鼠标事件监听
    local listener = cc.EventListenerTouchOneByOne:create()
    listener:registerScriptHandler(onTouchBegan,cc.Handler.EVENT_TOUCH_BEGAN )
    listener:registerScriptHandler(onTouchMoved,cc.Handler.EVENT_TOUCH_MOVED )
    listener:registerScriptHandler(onTouchEnded,cc.Handler.EVENT_TOUCH_ENDED )
    local eventDispatcher = mouse:getEventDispatcher()
    eventDispatcher:addEventListenerWithSceneGraphPriority(listener, mouse)

end