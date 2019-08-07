-- CC_USE_DEPRECATED_API = true --
require "cocos.init"
require "ui"



-- cclog��Ϣ --
cclog = function(...)
    print(string.format(...))
end

-- ���½�OpenGl����Ϣ --
local function initGLView()
    local director = cc.Director:getInstance()
    local glView = director:getOpenGLView()
    if nil == glView then
        -- ���ڴ�С
        glView = cc.GLViewImpl:createWithRect("2048" ,cc.rect(0, 0, 320, 480))
        director:setOpenGLView(glView)
    end

    director:setOpenGLView(glView)

    -- ��Ʒֱ���
    glView:setDesignResolutionSize(240, 360, cc.ResolutionPolicy.NO_BORDER)

    -- ��FPS�Ŀ���
    director:setDisplayStats(false)

    --����FPS��Ĭ��ֵΪ1.0/60
    director:setAnimationInterval(1.0 / 60)
end



local function main()

    -- �����ڴ�й¶ --
    collectgarbage("setpause", 100)
    collectgarbage("setstepmul", 5000)
    -- ��ʼ��OpenGL --
    initGLView()

    ---------------
    -- ��ʼ���� --
    -- ��������
    local sceneGame = cc.Scene:create()
    -- �ѱ���ͼ�㺯�����뵽������
    sceneGame:addChild(ui.createLayerBackground())
    -- ���г���
    cc.Director:getInstance():runWithScene(sceneGame)

    
    --
    do
        local poco = require('poco.poco_manager')
        poco:init_server(15005)  -- default port number is 15004, change to another if you like
    end

    print("class" ,class)

end


main()


