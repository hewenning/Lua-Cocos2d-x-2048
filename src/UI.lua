require "Mouse.lua"
require "Algorithm.lua"

-- 创建背景图层 --
function createLayerBackground()
        
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
    
    -- 2048的LOGO --
    local LOGO = cc.Label:createWithTTF( "2048", "fonts/Fingerpop.ttf", 45)
    LOGO:enableShadow(cc.BLACK, cc.size(5,2), 3)--cc.size(2, -2), 0)
    LayerBackground:addChild(LOGO)
    LOGO:setPosition(120,290)
    LOGO:setAnchorPoint(0.5, 0.5)

    -- 把分数字体标签，显示在游戏区域的上方 --
    --local ScoreLabel = cc.LabelBMFont:create("Score:", "fonts/bitmapFontTest4.fnt")
    local ScoreLabel = cc.Label:createWithBMFont( "fonts/bitmapFontTest4.fnt", "Score:")
    LayerBackground:addChild(ScoreLabel)
    ScoreLabel:setPosition(45, 220)
    ScoreLabel:setAnchorPoint(0, 0)

    
    -- 分数数值标签 --
    local ScoreValue = cc.LabelTTF:create("00000", "fonts/Marker Felt.ttf", 25)
    LayerBackground:addChild(ScoreValue)
    ScoreValue:setPosition(135, 226)
    ScoreValue:setAnchorPoint(0, 0)


    -- 显示随机数 --
    randomNumber = random()
    GameBoard:addChild(randomNumber)

    -- 处理鼠标动作
    mouseLinsener(randomNumber)
    
    -- 返回图层 -- 
    return LayerBackground
end