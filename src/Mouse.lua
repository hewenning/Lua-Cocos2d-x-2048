require "Algorithm.lua"


-- ��д����ƶ��ĺ���,1,2,3,4�ֱ������������ --
function MouseMove()
    -- �ж������ƶ�����
end

function mouseLinsener(mouse)
    --------------------
    --     �¼�����    --
    --------------------
    -- ��������¼� --
    -- ��ʼ���
    local touchBeginPoint = nil
    local function onTouchBegan(touch, event)
        local location = touch:getLocation()
        cclog("onTouchBegan: %0.2f, %0.2f", location.x, location.y)
        touchBeginPoint = {x = location.x, y = location.y}
        -- CCTOUCHBEGAN event must return true
        return true
    end

    -- ����ƶ�
    local function onTouchMoved(touch, event)
        local location = touch:getLocation()
        cclog("onTouchMoved: %0.2f, %0.2f", location.x, location.y)
        if touchBeginPoint then
            local cx, cy = mouse:getPosition()
            mouse:setPosition(cx + location.x - touchBeginPoint.x, cy + location.y - touchBeginPoint.y)
            touchBeginPoint = {x = location.x, y = location.y}
        end
    end

    -- ����ɿ�
    local function onTouchEnded(touch, event)
        local location = touch:getLocation()
        cclog("onTouchEnded: %0.2f, %0.2f", location.x, location.y)
        touchBeginPoint = nil
    end

    -- ����¼�����
    local listener = cc.EventListenerTouchOneByOne:create()
    listener:registerScriptHandler(onTouchBegan,cc.Handler.EVENT_TOUCH_BEGAN )
    listener:registerScriptHandler(onTouchMoved,cc.Handler.EVENT_TOUCH_MOVED )
    listener:registerScriptHandler(onTouchEnded,cc.Handler.EVENT_TOUCH_ENDED )
    local eventDispatcher = mouse:getEventDispatcher()
    eventDispatcher:addEventListenerWithSceneGraphPriority(listener, mouse)

end