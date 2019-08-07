require "algorithm"
ui = {index = 1, temp = 2,}
--棋子所需要显示标签的数值 --
local ArrayPosition = {{25, 175}, {75, 175}, {125, 175}, {175, 175},
                {25, 125}, {75, 125}, {125, 125}, {175, 125},
                {25, 75}, {75, 75}, {125, 75}, {175, 75},
                {25, 25}, {75, 25}, {125, 25}, {175, 25}}

-- 创建背景图层 --
function ui.createLayerBackground()
        
    local LayerBackground = cc.Layer:create()
    local visibleSize = cc.Director:getInstance():getVisibleSize()

    --------------------
    --     UI部分     --
    --------------------
    -- 把背景图加入图层 --
    local BackGround = cc.Sprite:create("background.jpg")
    BackGround:setPosition(visibleSize.width / 2, visibleSize.height / 2)
    LayerBackground:addChild(BackGround)
    

    -- 把游戏区域的背景图添加到图层 --
    local GameBoard = cc.Sprite:create("board.jpg")
    GameBoard:setPosition(visibleSize.width / 2 , visibleSize.height / 3)
    LayerBackground:addChild(GameBoard)
    ui.index = GameBoard

    
    -- 2048的LOGO --
    local LOGO = cc.Label:createWithTTF( "2048", "fonts/Fingerpop.ttf", 45)
    LOGO:enableShadow(cc.BLACK, cc.size(5,2), 3)
    LayerBackground:addChild(LOGO)
    LOGO:setPosition(120,290)
    LOGO:setAnchorPoint(0.5, 0.5)

    -- 把分数字体标签，显示在游戏区域的上方 --
    local ScoreLabel = cc.Label:createWithBMFont( "fonts/bitmapFontTest4.fnt", "Score:")
    LayerBackground:addChild(ScoreLabel)
    ScoreLabel:setPosition(45, 220)
    ScoreLabel:setAnchorPoint(0, 0)

    -- 加入restart按钮键 --
    local restartLabel = cc.Sprite:create("restart.png")
    restartLabel:setPosition(205, 240)
    LayerBackground:addChild(restartLabel) 

    -- 渲染最开始的棋盘界面 --
    ui.initUI()
    
    -- 分数数值标签 --
    local ScoreValue = cc.LabelTTF:create("0", "fonts/Marker Felt.ttf", 25)
    ui.temp:addChild(ScoreValue)
    ScoreValue:setPosition(115, 207)
    ScoreValue:setAnchorPoint(0, 0)


    -- 处理鼠标动作--
    listener = mouse.mouseLinsener()
    local eventDispatcher = GameBoard:getEventDispatcher()
    eventDispatcher:addEventListenerWithSceneGraphPriority(listener, ui.index)
  

    -- 返回图层 -- 
    return LayerBackground

end

-- 最开始的时候棋盘上的ui界面 --
function ui.initUI()
    ------------------
    --   初始化UI部分  --
    ------------------
    -- 新建一个作为渲染的图层 --
    local GameBoard_Test = cc.Sprite:create("board.jpg")
    GameBoard_Test:setPosition(0, 0)
    GameBoard_Test:setAnchorPoint(0, 0)
    ui.index:addChild(GameBoard_Test)
    ui.temp = GameBoard_Test

    -- 把最开始的数据和分数刷上去 --
    local initArray = algorithm.index
    for i,v in ipairs(initArray) do
        local initLabel = cc.LabelTTF:create(v, "fonts/Marker Felt.ttf", 20)
        ui.temp:addChild(initLabel)
        initLabel:setPosition(ArrayPosition[i][1], ArrayPosition[i][2])
        initLabel:setAnchorPoint(0.5, 0.5) 
        print(v)    
    end

end



-- 根据数组的数值和位置渲染的函数 --
function ui.ArrayLabel(Array)
    local ArrayValue = algorithm.getRandomNumber(Array)
    -- 重新加图层节点 --
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
    -- 测试分数能否正常输出 --
    print("-----------------")
    print("-- score:" .. score.count .. " --")
    print("-----------------")
end

return ui