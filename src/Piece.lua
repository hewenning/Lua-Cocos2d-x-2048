require "class"

-- �趨һ����ʾ���࣬�����½�����ÿ���������ʹ������ĺ��� --
-- �½�һ��������ʾ���࣬������������ɳ�ʼ�� --
piece_class = class()

-- ������Ĺ��캯�� --
function piece_class:ctor(num, cX, cY)
    -- self.number = num
    self.cX = cX
    self.cY = cY

end
--     ArrayPosition = {{25, 175}, {75, 175}, {125, 175}, {175, 175},
--                     {25, 125}, {75, 125}, {125, 125}, {175, 125},
--                     {25, 75}, {75, 75}, {125, 75}, {175, 75},
--                     {25, 25}, {75, 25}, {125, 25}, {175, 25}}

-- �������ڲ��Եĳ�Ա���� --
function algorithm.piece_class:print_x()
    print(self.x)
end

-- �������ڴ�����Ϣ�ĺ���������λ�ú�Ӧ����ʾ������ --
function piece_class:setPosition()

end

function piece_class:getPosition()
end

-- ��������ÿ��������ֵ�ĺ����ͻ�ȡÿ��������ֵ�ĺ��� -- 
function piece_class:setNumber()
end 

function piece_class:getNumber()
end

-- ��������������ʾ�ĺ��� -- 
function piece_class:Display()
end

-- �����ֵ�ֵ����Ⱦ��ɫ��Ϣ --
function piece_class:setColor()

end

-- �½�16���������ӵĶ���ÿ�����󱣴�λ�ú���ֵ��Ϣ --
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