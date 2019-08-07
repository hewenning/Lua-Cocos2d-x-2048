require "algorithm"
ui = {index = 1, temp = 2,}
--��������Ҫ��ʾ��ǩ����ֵ --
local ArrayPosition = {{25, 175}, {75, 175}, {125, 175}, {175, 175},
                {25, 125}, {75, 125}, {125, 125}, {175, 125},
                {25, 75}, {75, 75}, {125, 75}, {175, 75},
                {25, 25}, {75, 25}, {125, 25}, {175, 25}}

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

    -- ����restart��ť�� --
    local restartLabel = cc.Sprite:create("restart.png")
    restartLabel:setPosition(205, 240)
    LayerBackground:addChild(restartLabel) 

    -- ��Ⱦ�ʼ�����̽��� --
    ui.initUI()
    
    -- ������ֵ��ǩ --
    local ScoreValue = cc.LabelTTF:create("0", "fonts/Marker Felt.ttf", 25)
    ui.temp:addChild(ScoreValue)
    ScoreValue:setPosition(115, 207)
    ScoreValue:setAnchorPoint(0, 0)


    -- ������궯��--
    listener = mouse.mouseLinsener()
    local eventDispatcher = GameBoard:getEventDispatcher()
    eventDispatcher:addEventListenerWithSceneGraphPriority(listener, ui.index)
  

    -- ����ͼ�� -- 
    return LayerBackground

end

-- �ʼ��ʱ�������ϵ�ui���� --
function ui.initUI()
    ------------------
    --   ��ʼ��UI����  --
    ------------------
    -- �½�һ����Ϊ��Ⱦ��ͼ�� --
    local GameBoard_Test = cc.Sprite:create("board.jpg")
    GameBoard_Test:setPosition(0, 0)
    GameBoard_Test:setAnchorPoint(0, 0)
    ui.index:addChild(GameBoard_Test)
    ui.temp = GameBoard_Test

    -- ���ʼ�����ݺͷ���ˢ��ȥ --
    local initArray = algorithm.index
    for i,v in ipairs(initArray) do
        local initLabel = cc.LabelTTF:create(v, "fonts/Marker Felt.ttf", 20)
        ui.temp:addChild(initLabel)
        initLabel:setPosition(ArrayPosition[i][1], ArrayPosition[i][2])
        initLabel:setAnchorPoint(0.5, 0.5) 
        print(v)    
    end

end



-- �����������ֵ��λ����Ⱦ�ĺ��� --
function ui.ArrayLabel(Array)
    local ArrayValue = algorithm.getRandomNumber(Array)
    -- ���¼�ͼ��ڵ� --
    local tempGameBoard = cc.Sprite:create("board.jpg")
    tempGameBoard:setPosition(0, 0)
    tempGameBoard:setAnchorPoint(0, 0)
    ui.index:addChild(tempGameBoard)
    ui.temp = tempGameBoard
    for i,v in ipairs(ArrayValue) do
        local numberLabel = cc.LabelTTF:create(v, "fonts/Marker Felt.ttf", 20)
        ui.temp:addChild(numberLabel)
        numberLabel:setPosition(ArrayPosition[i][1], ArrayPosition[i][2])
        numberLabel:setAnchorPoint(0.5, 0.5)
        numberLabel:runAction(cc.Sequence:create(cc.ScaleTo:create(0, 0.1, 0.1), cc.ScaleTo:create(0.5, 1, 1))) 
        print(v)    
    end
    local ScoreValue = cc.LabelTTF:create(score.count, "fonts/Marker Felt.ttf", 25)
    ScoreValue:runAction(cc.Sequence:create(cc.ScaleTo:create(0, 0.1, 0.1), cc.ScaleTo:create(0.5, 1, 1))) 
    ui.temp:addChild(ScoreValue)
    ScoreValue:setPosition(115, 207)
    ScoreValue:setAnchorPoint(0, 0)
    -- ���Է����ܷ�������� --
    print("-----------------")
    print("-- score:" .. score.count .. " --")
    print("-----------------")
end

return ui