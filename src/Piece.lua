require "class"

-- �趨һ����ʾ���࣬�����½�����ÿ���������ʹ������ĺ��� --
-- �½�һ��������ʾ���࣬������������ɳ�ʼ�� --
PieceClass = class()

-- ������Ĺ��캯�� --
function PieceClass:ctor(num, cX, cY)
    -- self.number = num
    self.cX = cX
    self.cY = cY

end
--     ArrayPosition = {{25, 175}, {75, 175}, {125, 175}, {175, 175},
--                     {25, 125}, {75, 125}, {125, 125}, {175, 125},
--                     {25, 75}, {75, 75}, {125, 75}, {175, 75},
--                     {25, 25}, {75, 25}, {125, 25}, {175, 25}}

-- �������ڲ��Եĳ�Ա���� --
function PieceClass:print_x()
    print(self.x)
end

-- �������ڴ�����Ϣ�ĺ���������λ�ú�Ӧ����ʾ������ --
function PieceClass:setPosition()

end

function PieceClass:getPosition()
end

-- ��������ÿ��������ֵ�ĺ����ͻ�ȡÿ��������ֵ�ĺ��� -- 
function PieceClass:setNumber()
end 

function PieceClass:getNumber()
end

-- ��������������ʾ�ĺ��� -- 
function PieceClass:Display()
end

-- �����ֵ�ֵ����Ⱦ��ɫ��Ϣ --
function PieceClass:setColor()

end

-- �½�16���������ӵĶ���ÿ�����󱣴�λ�ú���ֵ��Ϣ --
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