require "class"

-- 设定一个显示的类，可以新建对象，每个对象可以使用里面的函数 --
-- 新建一个棋盘显示的类，并在类里面完成初始化 --
PieceClass = class()

-- 定义类的构造函数 --
function PieceClass:ctor(num, cX, cY)
    -- self.number = num
    self.cX = cX
    self.cY = cY

end
--     ArrayPosition = {{25, 175}, {75, 175}, {125, 175}, {175, 175},
--                     {25, 125}, {75, 125}, {125, 125}, {175, 125},
--                     {25, 75}, {75, 75}, {125, 75}, {175, 75},
--                     {25, 25}, {75, 25}, {125, 25}, {175, 25}}

-- 定义用于测试的成员函数 --
function PieceClass:print_x()
    print(self.x)
end

-- 定义用于储存信息的函数，关于位置和应该显示的数字 --
function PieceClass:setPosition()

end

function PieceClass:getPosition()
end

-- 定义设置每个对象数值的函数和获取每个对象数值的函数 -- 
function PieceClass:setNumber()
end 

function PieceClass:getNumber()
end

-- 定义用于棋盘显示的函数 -- 
function PieceClass:Display()
end

-- 根数字的值来渲染颜色信息 --
function PieceClass:setColor()

end

-- 新建16个关于棋子的对象，每个对象保存位置和数值信息 --
Piece_1 = PieceClass.new()
Piece_2 = PieceClass.new()
Piece_3 = PieceClass.new()
Piece_4 = PieceClass.new()
Piece_5 = PieceClass.new()
Piece_6 = PieceClass.new()
Piece_7 = PieceClass.new()
Piece_8 = PieceClass.new()
Piece_9 = PieceClass.new()
Piece_10 = PieceClass.new()
Piece_11 = PieceClass.new()
Piece_12 = PieceClass.new()
Piece_13 = PieceClass.new()
Piece_14 = PieceClass.new()
Piece_15 = PieceClass.new()
Piece_16 = PieceClass.new()