require "class"
require "mouse"
algorithm = {index =1,init = 1,}


-- 初始化数组，生成随机数 --
local ArrayValue = {}
for i=1, 16 do
    table.insert(ArrayValue, 0)
end

-- 数组和分数初始化函数 --
function algorithm.initArrayValue()
    ArrayValue = {}
    for i=1, 16 do
        table.insert(ArrayValue, 0)
    end
    score.count = 0
end

-- 随机数函数 --
function algorithm.getRandomNumber(afterRandomArray)
    local tempArray = {}
    -- 在不是0的位置上随机生成2 --
    for position, value in ipairs(afterRandomArray) do
        if value == 0 then
            table.insert(tempArray, position)
        end
    end

    length = table.getn(tempArray)
    -- 判断是否有地方随机生成 --
    if length == 0 then
        return afterRandomArray
    end

    math.randomseed(tostring(os.time()):reverse():sub(1, 6))
    randomNum = math.random(1, length)
    -- 确定随机数的位置
    randomPosition = tempArray[randomNum]
    afterRandomArray[randomPosition] = 2
    return afterRandomArray
end

-- 传递数组的值 --
algorithm.index = algorithm.getRandomNumber(ArrayValue)


--------------------
--    算法逻辑部分 --
--------------------
-- 根据鼠标的移动方向，从而决定块的移动 --
function algorithm.direction(move)
    -- 利用一个1*16数组存储每个节点出现的信息,开始的时候都初始化为0,数字的值代表该位置出现的数字，只可能是2的倍数 --
    -- 根据接收的参数，决定鼠标的移动方向 --
    -- 向上移动
    if move == 1 then
        print("up")
        -- 遍历所有非空元素
        for position, value in ipairs(ArrayValue) do
            if ArrayValue[position] ~= 0 then
                -- 如果当前元素在第一个位置
                if position == 1 or position == 2 or position == 3 or position == 4 then
                    -- 不动
                    ArrayValue[position] = ArrayValue[position]
                -- 如果不在第一个位置
                else
                    -- 如果当前元素上方是空元素
                    if ArrayValue[position-4] == 0 then
                        -- 向上移动
                        ArrayValue[position-4] = ArrayValue[position]
                        ArrayValue[position] = 0
                    -- 如果当前元素上方是非空元素
                    else
                        -- 如果上方元素和当前元素的内容不同
                        if ArrayValue[position-4] ~= ArrayValue[position] then
                            -- 不动 
                            ArrayValue[position-4] = ArrayValue[position-4]
                            ArrayValue[position] = ArrayValue[position]
                        -- 如果上方元素与当前元素内容相同 
                        else
                            -- 向上合并
                            ArrayValue[position-4] = ArrayValue[position-4] + ArrayValue[position]
                            score.count = score.count + ArrayValue[position-4]
                            ArrayValue[position] = 0
                        end
                    end
                end
            end  
        end
        print("over")
        return ArrayValue
    end

    -- 向下移动
    if move == 2 then
        print("down")
        -- 遍历所有非空元素
        for position, value in ipairs(ArrayValue) do
            if ArrayValue[position] ~= 0 then
                -- 如果当前元素在第一个位置
                if position == 13 or position == 14 or position == 15 or position == 16 then
                    -- 不动
                    ArrayValue[position] = ArrayValue[position]
                -- 如果不在第一个位置
                else
                    -- 如果当前元素下方是空元素
                    if ArrayValue[position+4] == 0 then
                        -- 向下移动
                        ArrayValue[position+4] = ArrayValue[position]
                        ArrayValue[position] = 0
                    -- 如果当前元素下方是非空元素
                    else
                        -- 如果下方元素和当前元素的内容不同
                        if ArrayValue[position+4] ~= ArrayValue[position] then
                            -- 不动 
                            ArrayValue[position+4] = ArrayValue[position+4]
                            ArrayValue[position] = ArrayValue[position]
                        -- 如果下方元素与当前元素内容相同 
                        else
                            -- 向下合并
                            ArrayValue[position+4] = ArrayValue[position+4] + ArrayValue[position]
                            score.count = score.count + ArrayValue[position+4]
                            ArrayValue[position] = 0
                        end
                    end
                end
            end  
        end
        print("over")
        return ArrayValue
    end 
    
    -- 向左移动
    if move == 3 then
        print("left")
        -- 遍历所有非空元素
        for position, value in ipairs(ArrayValue) do
            if ArrayValue[position] ~= 0 then
                -- 如果当前元素在第一个位置
                if position == 1 or position == 5 or position == 9 or position == 13 then
                    -- 不动
                    ArrayValue[position] = ArrayValue[position]
                -- 如果不在第一个位置
                else
                    -- 如果当前元素左侧是空元素
                    if ArrayValue[position-1] == 0 then
                        -- 向左移动
                        ArrayValue[position-1] = ArrayValue[position]
                        ArrayValue[position] = 0
                    -- 如果当前元素左侧是非空元素
                    else
                        -- 如果左侧元素和当前元素的内容不同
                        if ArrayValue[position-1] ~= ArrayValue[position] then
                            -- 不动 
                            ArrayValue[position-1] = ArrayValue[position-1]
                            ArrayValue[position] = ArrayValue[position]
                        -- 如果左侧元素与当前元素内容相同 
                        else
                            -- 向左合并
                            ArrayValue[position-1] = ArrayValue[position-1] + ArrayValue[position]
                            score.count = score.count + ArrayValue[position-1]
                            ArrayValue[position] = 0
                        end
                    end
                end
            end  
        end
        print("over")
        return ArrayValue
    end

    -- 向右移动
    if move == 4 then
        print("right")
        -- 遍历所有非空元素
        for position, value in ipairs(ArrayValue) do
            if ArrayValue[position] ~= 0 then
                -- 如果当前元素在第一个位置
                if position == 4 or position == 8 or position == 12 or position == 16 then
                    -- 不动
                    ArrayValue[position] = ArrayValue[position]
                -- 如果不在第一个位置
                else
                    -- 如果当前元素右侧是空元素
                    if ArrayValue[position+1] == 0 then
                        -- 向右移动
                        ArrayValue[position+1] = ArrayValue[position]
                        ArrayValue[position] = 0
                    -- 如果当前元素右侧是非空元素
                    else
                        -- 如果右侧元素和当前元素的内容不同
                        if ArrayValue[position+1] ~= ArrayValue[position] then
                            -- 不动 
                            ArrayValue[position+1] = ArrayValue[position+1]
                            ArrayValue[position] = ArrayValue[position]
                        -- 如果左侧元素与当前元素内容相同 
                        else
                            -- 向左合并
                            ArrayValue[position+1] = ArrayValue[position+1] + ArrayValue[position]
                            score.count = score.count + ArrayValue[position+1]
                            ArrayValue[position] = 0
                        end
                    end
                end
            end  
        end
        print("over")
        return ArrayValue
    end
end

-- 判断游戏是否胜利 --
function algorithm.getWin()
    -- 如果数组值达到2048，直接结束游戏，输出YouWin --
    for maxPosition, maxValue in ipairs(ArrayValue) do
        if maxValue == 2048 then
            ui.index:removeChild(ui.temp, true)
            local YouWin = cc.LabelTTF:create("You Win!", "fonts/Marker Felt.ttf", 40)
            ui.index:addChild(YouWin)
            YouWin:setPosition(100, 100)
            YouWin:setAnchorPoint(0.5, 0.5) 
        end
    end    
end

-- 判断游戏是否结束 --
function algorithm.getOver()
    -- 判断游戏是否结束 --
    local count = 0
    -- 记录非空元素的个数
    for JudgeEnd, JudgeValue in ipairs(ArrayValue) do
        if JudgeValue ~= 0 then
            count = count +1
        end
    end
    -- 如果非空元素的个数为16
    if count == 16 then
        -- 循环遍历所有非空元素
        for index, value in ipairs(ArrayValue) do
            -- 上面元素存在并且和当前元素内容相同
            if ArrayValue[index-4] ~= 0 and value == ArrayValue[index-4] then
                break
            -- 下面元素存在并且和当前元素内容相同
            elseif ArrayValue[index+4] ~= 0 and value == ArrayValue[index+4] then
                break
            -- 左侧元素存在并且和当前元素内容相同
            elseif ArrayValue[index-1] ~= 0 and value == ArrayValue[index-1] then
                break
            -- 右侧元素存在并且和当前元素内容相同
            elseif ArrayValue[index+1] ~= 0 and value == ArrayValue[index+1] then
                break
            -- 以上条件都不满足，游戏结束
            else
                ui.index:removeChild(ui.temp, true)
                local over = cc.LabelTTF:create("Game Over!", "fonts/Marker Felt.ttf", 40)
                ui.index:addChild(over)
                over:setPosition(100, 100)
                over:setAnchorPoint(0.5, 0.5)
            end  
        end                
    end    
end

return algorithm

--------------------
--    逻辑显示部分 --
--------------------
-- 设定一个显示的类，可以新建对象，每个对象可以使用里面的函数 --
-- 新建一个棋盘显示的类，并在类里面完成初始化 --
-- algorithm.piece_class = class()

-- -- 定义类的构造函数 --
-- function algorithm.piece_class:ctor(num, cX, cY)
--     self.number = num
--     self.cX = cX
--     self.cY = cY
-- end


-- -- 定义用于测试的成员函数 --
-- function algorithm.piece_class:print_x()
--     print(self.x)
-- end


-- -- 定义用于储存信息的函数，关于位置和应该显示的数字 --
-- function algorithm.piece_class:setPosition()
-- --     ArrayPosition = {{25, 175}, {75, 175}, {125, 175}, {175, 175},
-- --                     {25, 125}, {75, 125}, {125, 125}, {175, 125},
-- --                     {25, 75}, {75, 75}, {125, 75}, {175, 75},
-- --                     {25, 25}, {75, 25}, {125, 25}, {175, 25}}
-- end
-- function algorithm.piece_class:getPosition()
-- end

-- -- 定义设置每个对象数值的函数和获取每个对象数值的函数 -- 
-- function algorithm.piece_class:setNumber()
-- end 

-- function algorithm.piece_class:getNumber()
-- end

-- -- 定义用于棋盘显示的函数 -- 
-- function algorithm.piece_class:Display()
-- end

-- -- 根数字的值来渲染颜色信息 --
-- function algorithm.piece_class:setColor()
--     -- for i, v in ArrayValue do
--     --     if value == 0 then
--     --         -- to do
--     --         -- setColor(cc.c3b(204, 192, 180)
--     --     elseif value == 2 then
--     --         -- to do
--     --         -- setColor(cc.c3b(204, 192, 180)
--     --     elseif value == 4 then
--     --         -- to do
--     --         -- setColor(cc.c3b(204, 192, 180)
--     --     elseif value == 8 then
--     --         -- to do
--     --         -- setColor(cc.c3b(204, 192, 180)
--     --     elseif value == 16 then
--     --         -- to do
--     --         -- setColor(cc.c3b(204, 192, 180)
--     --     elseif value == 32 then
--     --         -- to do
--     --         -- setColor(cc.c3b(204, 192, 180)
--     --     elseif value == 64 then
--     --         -- to do
--     --         -- setColor(cc.c3b(204, 192, 180)
--     --     elseif value == 128 then
--     --         -- to do
--     --         -- setColor(cc.c3b(204, 192, 180)
--     --     elseif value == 256 then
--     --         -- to do
--     --         -- setColor(cc.c3b(204, 192, 180)
--     --     elseif value == 512 then
--     --         -- to do
--     --         -- setColor(cc.c3b(204, 192, 180)
--     --     elseif value == 1024 then
--     --         -- to do
--     --         -- setColor(cc.c3b(204, 192, 180)
--     --     elseif value == 2048 then
--     --         -- to do
--     --         -- setColor(cc.c3b(204, 192, 180)
--     --     elseif value == 4096 then
--     --         -- to do
--     --         -- setColor(cc.c3b(204, 192, 180)
--     --     end
--     -- end 
-- end

-- -- 新建16个关于棋子的对象，每个对象保存位置和数值信息 --
-- Piece_1 = algorithm.piece_class.new()
-- Piece_2 = algorithm.piece_class.new()
-- Piece_3 = algorithm.piece_class.new()
-- Piece_4 = algorithm.piece_class.new()
-- Piece_5 = algorithm.piece_class.new()
-- Piece_6 = algorithm.piece_class.new()
-- Piece_7 = algorithm.piece_class.new()
-- Piece_8 = algorithm.piece_class.new()
-- Piece_9 = algorithm.piece_class.new()
-- Piece_10 = algorithm.piece_class.new()
-- Piece_11 = algorithm.piece_class.new()
-- Piece_12 = algorithm.piece_class.new()
-- Piece_13 = algorithm.piece_class.new()
-- Piece_14 = algorithm.piece_class.new()
-- Piece_15 = algorithm.piece_class.new()
-- Piece_16 = algorithm.piece_class.new()