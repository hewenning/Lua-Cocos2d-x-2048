require "class"
require "mouse"
algorithm = {}
--------------------
--    逻辑显示部分 --
--------------------
-- 设定一个显示的类，可以新建对象，每个对象可以使用里面的函数 --
-- 新建一个棋盘显示的类，并在类里面完成初始化 --
algorithm.piece_class = class()

-- 定义类的构造函数 --
function algorithm.piece_class:ctor(x)
    self.x = x
end


-- 定义用于测试的成员函数 --
function algorithm.piece_class:print_x()
    print(self.x)
end


-- 定义用于储存信息的函数，关于位置和应该显示的数字 --
function algorithm.piece_class:setPosition()
--     ArrayPosition = {{25, 175}, {75, 175}, {125, 175}, {175, 175},
--                     {25, 125}, {75, 125}, {125, 125}, {175, 125},
--                     {25, 75}, {75, 75}, {125, 75}, {175, 75},
--                     {25, 25}, {75, 25}, {125, 25}, {175, 25}}
end
function algorithm.piece_class:getPosition()
end

-- 定义设置每个对象数值的函数和获取每个对象数值的函数 -- 
function algorithm.piece_class:setNumber()
end 

function algorithm.piece_class:getNumber()
end

-- 定义用于棋盘显示的函数 -- 
function algorithm.piece_class:Display()
end

-- 根数字的值来渲染颜色信息 --
function algorithm.piece_class:setColor()
    -- for i, v in ArrayValue do
    --     if value == 0 then
    --         -- to do
    --         -- setColor(cc.c3b(204, 192, 180)
    --     elseif value == 2 then
    --         -- to do
    --         -- setColor(cc.c3b(204, 192, 180)
    --     elseif value == 4 then
    --         -- to do
    --         -- setColor(cc.c3b(204, 192, 180)
    --     elseif value == 8 then
    --         -- to do
    --         -- setColor(cc.c3b(204, 192, 180)
    --     elseif value == 16 then
    --         -- to do
    --         -- setColor(cc.c3b(204, 192, 180)
    --     elseif value == 32 then
    --         -- to do
    --         -- setColor(cc.c3b(204, 192, 180)
    --     elseif value == 64 then
    --         -- to do
    --         -- setColor(cc.c3b(204, 192, 180)
    --     elseif value == 128 then
    --         -- to do
    --         -- setColor(cc.c3b(204, 192, 180)
    --     elseif value == 256 then
    --         -- to do
    --         -- setColor(cc.c3b(204, 192, 180)
    --     elseif value == 512 then
    --         -- to do
    --         -- setColor(cc.c3b(204, 192, 180)
    --     elseif value == 1024 then
    --         -- to do
    --         -- setColor(cc.c3b(204, 192, 180)
    --     elseif value == 2048 then
    --         -- to do
    --         -- setColor(cc.c3b(204, 192, 180)
    --     elseif value == 4096 then
    --         -- to do
    --         -- setColor(cc.c3b(204, 192, 180)
    --     end
    -- end 
end

-- 新建16个关于棋子的对象，每个对象保存位置和数值信息 --
Piece_1 = algorithm.piece_class.new()
Piece_2 = algorithm.piece_class.new()
Piece_3 = algorithm.piece_class.new()
Piece_4 = algorithm.piece_class.new()
Piece_5 = algorithm.piece_class.new()
Piece_6 = algorithm.piece_class.new()
Piece_7 = algorithm.piece_class.new()
Piece_8 = algorithm.piece_class.new()
Piece_9 = algorithm.piece_class.new()
Piece_10 = algorithm.piece_class.new()
Piece_11 = algorithm.piece_class.new()
Piece_12 = algorithm.piece_class.new()
Piece_13 = algorithm.piece_class.new()
Piece_14 = algorithm.piece_class.new()
Piece_15 = algorithm.piece_class.new()
Piece_16 = algorithm.piece_class.new()


--------------------
--     逻辑部分    --
--------------------
-- -- 随机数函数 -- 
-- function algorithm.random()
--     --------------------
--     --     随机数部分    --
--     --------------------
--     -- 用一个2*16的数组保存游戏区域中数组显示的位置 --
--     -- 初始化数组
--     ArrayPosition = {{25, 175}, {75, 175}, {125, 175}, {175, 175},
--                     {25, 125}, {75, 125}, {125, 125}, {175, 125},
--                     {25, 75}, {75, 75}, {125, 75}, {175, 75},
--                     {25, 25}, {75, 25}, {125, 25}, {175, 25}}
--     -- 在随机位置生成数字，利用系统时间最高的6位当作随机数种子
--     math.randomseed(tostring(os.time()):reverse():sub(1, 6))
--     indexNumber = math.random(1, 16)
--     -- 随机数 
--     local randomNumber = cc.LabelTTF:create("2", "fonts/Marker Felt.ttf", 40)
--     randomNumber:setPosition(ArrayPosition[indexNumber][1], ArrayPosition[indexNumber][2])
--     randomNumber:setAnchorPoint(0.5, 0.5) 
    
--     return randomNumber

-- end



-- 根据鼠标的移动方向，从而决定块的移动 --
function algorithm.direction()
    -- 利用一个1*16数组存储每个节点出现的信息,开始的时候都初始化为0,数字的值代表该位置出现的数字，只可能是2的倍数 --
    ArrayValue = {}
    for i=1, 16 do
        table.insert(ArrayValue, 0)
    end
    -- 编写块的移动算法 --     
    -- local move = MouseMove()
    -- -- 向上移动
    -- if move = 1 then
    --     -- 遍历所有非空元素
    --     for position, value in ipairs(ArrayValue) do
    --         if ArrayValue[position] ~= 0 then
    --             -- 如果当前元素在第一个位置
    --             if position == 1 or position == 2 or position == 3 or position == 4 then
    --                 -- 不动
    --                 ArrayValue[position] = ArrayValue[position]
    --             -- 如果不在第一个位置
    --             else
    --                 -- 如果当前元素上方是空元素
    --                 if ArrayValue[position-4] = 0 then
    --                     -- 向上移动
    --                     ArrayValue[position-4] = ArrayValue[position]
    --                     ArrayValue[position] = 0
    --                 -- 如果当前元素上方是非空元素
    --                 else
    --                     -- 如果上方元素和当前元素的内容不同
    --                     if ArrayValue[position-4] ~= ArrayValue[position] then
    --                         -- 不动 
    --                         ArrayValue[position-4] = ArrayValue[position-4]
    --                         ArrayValue[position] = ArrayValue[position]
    --                     -- 如果上方元素与当前元素内容相同 
    --                     else
    --                         -- 向上合并
    --                         ArrayValue[position-4] = ArrayValue[position-4] + ArrayValue[position]
    --                         ArrayValue[position] = 0
    --                     end
    --                 end
    --             end
    --         end  
    --     end
    -- end

    -- -- 向下移动
    -- if move = 2 then
    --     -- 遍历所有非空元素
    --     for position, value in ipairs(ArrayValue) do
    --         if ArrayValue[position] ~= 0 then
    --             -- 如果当前元素在第一个位置
    --             if position == 13 or position == 14 or position == 15 or position == 16 then
    --                 -- 不动
    --                 ArrayValue[position] = ArrayValue[position]
    --             -- 如果不在第一个位置
    --             else
    --                 -- 如果当前元素下方是空元素
    --                 if ArrayValue[position+4] = 0 then
    --                     -- 向下移动
    --                     ArrayValue[position+4] = ArrayValue[position]
    --                     ArrayValue[position] = 0
    --                 -- 如果当前元素下方是非空元素
    --                 else
    --                     -- 如果下方元素和当前元素的内容不同
    --                     if ArrayValue[position+4] ~= ArrayValue[position] then
    --                         -- 不动 
    --                         ArrayValue[position+4] = ArrayValue[position+4]
    --                         ArrayValue[position] = ArrayValue[position]
    --                     -- 如果下方元素与当前元素内容相同 
    --                     else
    --                         -- 向下合并
    --                         ArrayValue[position+4] = ArrayValue[position+4] + ArrayValue[position]
    --                         ArrayValue[position] = 0
    --                     end
    --                 end
    --             end
    --         end  
    --     end
    -- end 
    
    -- -- 向左移动
    -- if move = 3 then
    --     -- 遍历所有非空元素
    --     for position, value in ipairs(ArrayValue) do
    --         if ArrayValue[position] ~= 0 then
    --             -- 如果当前元素在第一个位置
    --             if position == 1 or position == 5 or position == 9 or position == 13 then
    --                 -- 不动
    --                 ArrayValue[position] = ArrayValue[position]
    --             -- 如果不在第一个位置
    --             else
    --                 -- 如果当前元素左侧是空元素
    --                 if ArrayValue[position-1] = 0 then
    --                     -- 向左移动
    --                     ArrayValue[position-1] = ArrayValue[position]
    --                     ArrayValue[position] = 0
    --                 -- 如果当前元素左侧是非空元素
    --                 else
    --                     -- 如果左侧元素和当前元素的内容不同
    --                     if ArrayValue[position-1] ~= ArrayValue[position] then
    --                         -- 不动 
    --                         ArrayValue[position-1] = ArrayValue[position-1]
    --                         ArrayValue[position] = ArrayValue[position]
    --                     -- 如果左侧元素与当前元素内容相同 
    --                     else
    --                         -- 向左合并
    --                         ArrayValue[position-1] = ArrayValue[position-1] + ArrayValue[position]
    --                         ArrayValue[position] = 0
    --                     end
    --                 end
    --             end
    --         end  
    --     end
    -- end

    -- -- 向右移动
    -- if move = 4 then
    --     -- 遍历所有非空元素
    --     for position, value in ipairs(ArrayValue) do
    --         if ArrayValue[position] ~= 0 then
    --             -- 如果当前元素在第一个位置
    --             if position == 4 or position == 8 or position == 12 or position == 16 then
    --                 -- 不动
    --                 ArrayValue[position] = ArrayValue[position]
    --             -- 如果不在第一个位置
    --             else
    --                 -- 如果当前元素右侧是空元素
    --                 if ArrayValue[position+1] = 0 then
    --                     -- 向右移动
    --                     ArrayValue[position+1] = ArrayValue[position]
    --                     ArrayValue[position] = 0
    --                 -- 如果当前元素右侧是非空元素
    --                 else
    --                     -- 如果右侧元素和当前元素的内容不同
    --                     if ArrayValue[position+1] ~= ArrayValue[position] then
    --                         -- 不动 
    --                         ArrayValue[position+1] = ArrayValue[position+1]
    --                         ArrayValue[position] = ArrayValue[position]
    --                     -- 如果左侧元素与当前元素内容相同 
    --                     else
    --                         -- 向左合并
    --                         ArrayValue[position+1] = ArrayValue[position+1] + ArrayValue[position]
    --                         ArrayValue[position] = 0
    --                     end
    --                 end
    --             end
    --         end  
    --     end
    -- end
    
    -- -- 判断游戏是否结束
    -- local count = 0
    -- -- 记录非空元素的个数
    -- for JudgeEnd, JudgeValue in ipairs(ArrayValue) do
    --     if JudgeValue ~= 0 then
    --         count = count +1
    --     end
    -- end
    -- -- 如果非空元素的个数为16
    -- if count == 16 then
    --     -- 循环遍历所有非空元素
    --     for index, value in ipairs(ArrayValue) do
    --         -- 上面元素存在并且和当前元素内容相同
    --         if ArrayValue[index-4] ~= 0 and value == ArrayValue[index-4] then
    --             break
    --         -- 下面元素存在并且和当前元素内容相同
    --         elseif ArrayValue[index+4] ~= 0 and value == ArrayValue[index+4] then
    --             break
    --         -- 左侧元素存在并且和当前元素内容相同
    --         elseif ArrayValue[index-1] ~= 0 and value == ArrayValue[index-1] then
    --             break
    --         -- 右侧元素存在并且和当前元素内容相同
    --         elseif ArrayValue[index+1] ~= 0 and value == ArrayValue[index+1] then
    --             break
    --         -- 以上条件都不满足，游戏结束
    --         else
    --             local over = cc.LabelTTF:create("GameOver", "fonts/Marker Felt.ttf", 50)
    --             GameBoard:addChild(one)
    --             over:setPosition(160, 240)
    --             over:setAnchorPoint(0.5, 0.5)
    --         end  
    --     end                
    -- end
end

return algorithm