require "class"

-- 设定一个显示的类，可以新建对象，每个对象可以使用里面的函数 --
-- 新建一个棋盘显示的类，并在类里面完成初始化 --
piece_class = class()

-- 定义类的构造函数 --
function piece_class:ctor(num, cX, cY)
    -- self.number = num
    self.cX = cX
    self.cY = cY

end
--     ArrayPosition = {{25, 175}, {75, 175}, {125, 175}, {175, 175},
--                     {25, 125}, {75, 125}, {125, 125}, {175, 125},
--                     {25, 75}, {75, 75}, {125, 75}, {175, 75},
--                     {25, 25}, {75, 25}, {125, 25}, {175, 25}}

-- 定义用于测试的成员函数 --
function algorithm.piece_class:print_x()
    print(self.x)
end

-- 定义用于储存信息的函数，关于位置和应该显示的数字 --
function piece_class:setPosition()

end

function piece_class:getPosition()
end

-- 定义设置每个对象数值的函数和获取每个对象数值的函数 -- 
function piece_class:setNumber()
end 

function piece_class:getNumber()
end

-- 定义用于棋盘显示的函数 -- 
function piece_class:Display()
end

-- 根数字的值来渲染颜色信息 --
function piece_class:setColor()

end

-- 新建16个关于棋子的对象，每个对象保存位置和数值信息 --
Piece_1 = piece_class.new()
Piece_2 = piece_class.new()
Piece_3 = piece_class.new()
Piece_4 = piece_class.new()
Piece_5 = piece_class.new()
Piece_6 = piece_class.new()
Piece_7 = piece_class.new()
Piece_8 = piece_class.new()
Piece_9 = piece_class.new()
Piece_10 = piece_class.new()
Piece_11 = piece_class.new()
Piece_12 = piece_class.new()
Piece_13 = piece_class.new()
Piece_14 = piece_class.new()
Piece_15 = piece_class.new()
Piece_16 = piece_class.new()