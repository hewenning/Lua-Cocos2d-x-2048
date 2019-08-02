require "algorithm"
ui = {index = 1, temp = 2,}

-- ��������ͼ�� --
function ui.createLayerBackground()
        
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
    ui.index = GameBoard

    -- �½�һ����Ϊ��Ⱦ��ͼ�� --
    local GameBoard_Test = cc.Sprite:create("board.jpg")
    GameBoard_Test:setPosition(0, 0)
    GameBoard_Test:setAnchorPoint(0, 0)
    GameBoard:addChild(GameBoard_Test)
    ui.temp = GameBoard_Test
    
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
    local eventDispatcher = BackGround:getEventDispatcher()
    eventDispatcher:addEventListenerWithSceneGraphPriority(listener, BackGround)
    

    -- ����ͼ�� -- 
    return LayerBackground

end

--��������Ҫ��ʾ��ǩ����ֵ --
local ArrayPosition = {{25, 175}, {75, 175}, {125, 175}, {175, 175},
                {25, 125}, {75, 125}, {125, 125}, {175, 125},
                {25, 75}, {75, 75}, {125, 75}, {175, 75},
                {25, 25}, {75, 25}, {125, 25}, {175, 25}}

-- �����������ֵ��λ����Ⱦ�ĺ��� --
function ui.ArrayLabel(Array)
    local ArrayValue = Array
    -- �����GameBorad�Ľڵ���Ϣ --
    for i,v in ipairs(ArrayValue) do
        local numberLabel = cc.LabelTTF:create(v, "fonts/Marker Felt.ttf", 40)
        ui.index:addChild(numberLabel)
        numberLabel:setPosition(ArrayPosition[i][1], ArrayPosition[i][2])
        numberLabel:setAnchorPoint(0.5, 0.5) 
        print(v)    
    end
    -- ui.index:removeChild(ui.temp)
end

return ui