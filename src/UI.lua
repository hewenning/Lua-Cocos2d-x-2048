require "algorithm"
-- ��������ͼ�� --
function createLayerBackground()
        
    local LayerBackground = cc.Layer:create()
    local visibleSize = cc.Director:getInstance():getVisibleSize()

    --------------------
    --     UI����     --
    --------------------
    -- �ѱ���ͼ����ͼ�� --
    local BackGround = cc.Sprite:create("background.jpg")
    BackGround:setPosition(visibleSize.width / 2, visibleSize.height / 2)
    LayerBackground:addChild(BackGround)
    

    -- ����Ϸ����ı���ͼ��ӵ�ͼ�� --
    local GameBoard = cc.Sprite:create("board.jpg")
    GameBoard:setPosition(visibleSize.width / 2 , visibleSize.height / 3)
    LayerBackground:addChild(GameBoard)
    
    -- 2048��LOGO --
    local LOGO = cc.Label:createWithTTF( "2048", "fonts/Fingerpop.ttf", 45)
    LOGO:enableShadow(cc.BLACK, cc.size(5,2), 3)
    LayerBackground:addChild(LOGO)
    LOGO:setPosition(120,290)
    LOGO:setAnchorPoint(0.5, 0.5)

    -- �ѷ��������ǩ����ʾ����Ϸ������Ϸ� --
    local ScoreLabel = cc.Label:createWithBMFont( "fonts/bitmapFontTest4.fnt", "Score:")
    LayerBackground:addChild(ScoreLabel)
    ScoreLabel:setPosition(45, 220)
    ScoreLabel:setAnchorPoint(0, 0)

    
    -- ������ֵ��ǩ --
    local ScoreValue = cc.LabelTTF:create("00000", "fonts/Marker Felt.ttf", 25)
    LayerBackground:addChild(ScoreValue)
    ScoreValue:setPosition(135, 226)
    ScoreValue:setAnchorPoint(0, 0)


    -- ��ʾ����� --
    --randomNumber = algorithm.random()
    --GameBoard:addChild(randomNumber)

    -- ������궯��
    listener = mouse.mouseLinsener()
    local eventDispatcher = GameBoard:getEventDispatcher()
    eventDispatcher:addEventListenerWithSceneGraphPriority(listener, GameBoard)
    
    -- ���Դ���--
    -- local number = mouse.MouseMove()    
    -- print(number)

    -- ����ͼ�� -- 
    return LayerBackground

end