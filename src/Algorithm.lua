require "class"
require "mouse"
algorithm = {}
--------------------
--    �߼���ʾ���� --
--------------------
-- �趨һ����ʾ���࣬�����½�����ÿ���������ʹ������ĺ��� --
-- �½�һ��������ʾ���࣬������������ɳ�ʼ�� --
algorithm.piece_class = class()

-- ������Ĺ��캯�� --
function algorithm.piece_class:ctor(x)
    self.x = x
end


-- �������ڲ��Եĳ�Ա���� --
function algorithm.piece_class:print_x()
    print(self.x)
end


-- �������ڴ�����Ϣ�ĺ���������λ�ú�Ӧ����ʾ������ --
function algorithm.piece_class:setPosition()
--     ArrayPosition = {{25, 175}, {75, 175}, {125, 175}, {175, 175},
--                     {25, 125}, {75, 125}, {125, 125}, {175, 125},
--                     {25, 75}, {75, 75}, {125, 75}, {175, 75},
--                     {25, 25}, {75, 25}, {125, 25}, {175, 25}}
end
function algorithm.piece_class:getPosition()
end

-- ��������ÿ��������ֵ�ĺ����ͻ�ȡÿ��������ֵ�ĺ��� -- 
function algorithm.piece_class:setNumber()
end 

function algorithm.piece_class:getNumber()
end

-- ��������������ʾ�ĺ��� -- 
function algorithm.piece_class:Display()
end

-- �����ֵ�ֵ����Ⱦ��ɫ��Ϣ --
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

-- �½�16���������ӵĶ���ÿ�����󱣴�λ�ú���ֵ��Ϣ --
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
--     �߼�����    --
--------------------
-- -- ��������� -- 
-- function algorithm.random()
--     --------------------
--     --     ���������    --
--     --------------------
--     -- ��һ��2*16�����鱣����Ϸ������������ʾ��λ�� --
--     -- ��ʼ������
--     ArrayPosition = {{25, 175}, {75, 175}, {125, 175}, {175, 175},
--                     {25, 125}, {75, 125}, {125, 125}, {175, 125},
--                     {25, 75}, {75, 75}, {125, 75}, {175, 75},
--                     {25, 25}, {75, 25}, {125, 25}, {175, 25}}
--     -- �����λ���������֣�����ϵͳʱ����ߵ�6λ�������������
--     math.randomseed(tostring(os.time()):reverse():sub(1, 6))
--     indexNumber = math.random(1, 16)
--     -- ����� 
--     local randomNumber = cc.LabelTTF:create("2", "fonts/Marker Felt.ttf", 40)
--     randomNumber:setPosition(ArrayPosition[indexNumber][1], ArrayPosition[indexNumber][2])
--     randomNumber:setAnchorPoint(0.5, 0.5) 
    
--     return randomNumber

-- end



-- ���������ƶ����򣬴Ӷ���������ƶ� --
function algorithm.direction()
    -- ����һ��1*16����洢ÿ���ڵ���ֵ���Ϣ,��ʼ��ʱ�򶼳�ʼ��Ϊ0,���ֵ�ֵ�����λ�ó��ֵ����֣�ֻ������2�ı��� --
    ArrayValue = {}
    for i=1, 16 do
        table.insert(ArrayValue, 0)
    end
    -- ��д����ƶ��㷨 --     
    -- local move = MouseMove()
    -- -- �����ƶ�
    -- if move = 1 then
    --     -- �������зǿ�Ԫ��
    --     for position, value in ipairs(ArrayValue) do
    --         if ArrayValue[position] ~= 0 then
    --             -- �����ǰԪ���ڵ�һ��λ��
    --             if position == 1 or position == 2 or position == 3 or position == 4 then
    --                 -- ����
    --                 ArrayValue[position] = ArrayValue[position]
    --             -- ������ڵ�һ��λ��
    --             else
    --                 -- �����ǰԪ���Ϸ��ǿ�Ԫ��
    --                 if ArrayValue[position-4] = 0 then
    --                     -- �����ƶ�
    --                     ArrayValue[position-4] = ArrayValue[position]
    --                     ArrayValue[position] = 0
    --                 -- �����ǰԪ���Ϸ��Ƿǿ�Ԫ��
    --                 else
    --                     -- ����Ϸ�Ԫ�غ͵�ǰԪ�ص����ݲ�ͬ
    --                     if ArrayValue[position-4] ~= ArrayValue[position] then
    --                         -- ���� 
    --                         ArrayValue[position-4] = ArrayValue[position-4]
    --                         ArrayValue[position] = ArrayValue[position]
    --                     -- ����Ϸ�Ԫ���뵱ǰԪ��������ͬ 
    --                     else
    --                         -- ���Ϻϲ�
    --                         ArrayValue[position-4] = ArrayValue[position-4] + ArrayValue[position]
    --                         ArrayValue[position] = 0
    --                     end
    --                 end
    --             end
    --         end  
    --     end
    -- end

    -- -- �����ƶ�
    -- if move = 2 then
    --     -- �������зǿ�Ԫ��
    --     for position, value in ipairs(ArrayValue) do
    --         if ArrayValue[position] ~= 0 then
    --             -- �����ǰԪ���ڵ�һ��λ��
    --             if position == 13 or position == 14 or position == 15 or position == 16 then
    --                 -- ����
    --                 ArrayValue[position] = ArrayValue[position]
    --             -- ������ڵ�һ��λ��
    --             else
    --                 -- �����ǰԪ���·��ǿ�Ԫ��
    --                 if ArrayValue[position+4] = 0 then
    --                     -- �����ƶ�
    --                     ArrayValue[position+4] = ArrayValue[position]
    --                     ArrayValue[position] = 0
    --                 -- �����ǰԪ���·��Ƿǿ�Ԫ��
    --                 else
    --                     -- ����·�Ԫ�غ͵�ǰԪ�ص����ݲ�ͬ
    --                     if ArrayValue[position+4] ~= ArrayValue[position] then
    --                         -- ���� 
    --                         ArrayValue[position+4] = ArrayValue[position+4]
    --                         ArrayValue[position] = ArrayValue[position]
    --                     -- ����·�Ԫ���뵱ǰԪ��������ͬ 
    --                     else
    --                         -- ���ºϲ�
    --                         ArrayValue[position+4] = ArrayValue[position+4] + ArrayValue[position]
    --                         ArrayValue[position] = 0
    --                     end
    --                 end
    --             end
    --         end  
    --     end
    -- end 
    
    -- -- �����ƶ�
    -- if move = 3 then
    --     -- �������зǿ�Ԫ��
    --     for position, value in ipairs(ArrayValue) do
    --         if ArrayValue[position] ~= 0 then
    --             -- �����ǰԪ���ڵ�һ��λ��
    --             if position == 1 or position == 5 or position == 9 or position == 13 then
    --                 -- ����
    --                 ArrayValue[position] = ArrayValue[position]
    --             -- ������ڵ�һ��λ��
    --             else
    --                 -- �����ǰԪ������ǿ�Ԫ��
    --                 if ArrayValue[position-1] = 0 then
    --                     -- �����ƶ�
    --                     ArrayValue[position-1] = ArrayValue[position]
    --                     ArrayValue[position] = 0
    --                 -- �����ǰԪ������Ƿǿ�Ԫ��
    --                 else
    --                     -- ������Ԫ�غ͵�ǰԪ�ص����ݲ�ͬ
    --                     if ArrayValue[position-1] ~= ArrayValue[position] then
    --                         -- ���� 
    --                         ArrayValue[position-1] = ArrayValue[position-1]
    --                         ArrayValue[position] = ArrayValue[position]
    --                     -- ������Ԫ���뵱ǰԪ��������ͬ 
    --                     else
    --                         -- ����ϲ�
    --                         ArrayValue[position-1] = ArrayValue[position-1] + ArrayValue[position]
    --                         ArrayValue[position] = 0
    --                     end
    --                 end
    --             end
    --         end  
    --     end
    -- end

    -- -- �����ƶ�
    -- if move = 4 then
    --     -- �������зǿ�Ԫ��
    --     for position, value in ipairs(ArrayValue) do
    --         if ArrayValue[position] ~= 0 then
    --             -- �����ǰԪ���ڵ�һ��λ��
    --             if position == 4 or position == 8 or position == 12 or position == 16 then
    --                 -- ����
    --                 ArrayValue[position] = ArrayValue[position]
    --             -- ������ڵ�һ��λ��
    --             else
    --                 -- �����ǰԪ���Ҳ��ǿ�Ԫ��
    --                 if ArrayValue[position+1] = 0 then
    --                     -- �����ƶ�
    --                     ArrayValue[position+1] = ArrayValue[position]
    --                     ArrayValue[position] = 0
    --                 -- �����ǰԪ���Ҳ��Ƿǿ�Ԫ��
    --                 else
    --                     -- ����Ҳ�Ԫ�غ͵�ǰԪ�ص����ݲ�ͬ
    --                     if ArrayValue[position+1] ~= ArrayValue[position] then
    --                         -- ���� 
    --                         ArrayValue[position+1] = ArrayValue[position+1]
    --                         ArrayValue[position] = ArrayValue[position]
    --                     -- ������Ԫ���뵱ǰԪ��������ͬ 
    --                     else
    --                         -- ����ϲ�
    --                         ArrayValue[position+1] = ArrayValue[position+1] + ArrayValue[position]
    --                         ArrayValue[position] = 0
    --                     end
    --                 end
    --             end
    --         end  
    --     end
    -- end
    
    -- -- �ж���Ϸ�Ƿ����
    -- local count = 0
    -- -- ��¼�ǿ�Ԫ�صĸ���
    -- for JudgeEnd, JudgeValue in ipairs(ArrayValue) do
    --     if JudgeValue ~= 0 then
    --         count = count +1
    --     end
    -- end
    -- -- ����ǿ�Ԫ�صĸ���Ϊ16
    -- if count == 16 then
    --     -- ѭ���������зǿ�Ԫ��
    --     for index, value in ipairs(ArrayValue) do
    --         -- ����Ԫ�ش��ڲ��Һ͵�ǰԪ��������ͬ
    --         if ArrayValue[index-4] ~= 0 and value == ArrayValue[index-4] then
    --             break
    --         -- ����Ԫ�ش��ڲ��Һ͵�ǰԪ��������ͬ
    --         elseif ArrayValue[index+4] ~= 0 and value == ArrayValue[index+4] then
    --             break
    --         -- ���Ԫ�ش��ڲ��Һ͵�ǰԪ��������ͬ
    --         elseif ArrayValue[index-1] ~= 0 and value == ArrayValue[index-1] then
    --             break
    --         -- �Ҳ�Ԫ�ش��ڲ��Һ͵�ǰԪ��������ͬ
    --         elseif ArrayValue[index+1] ~= 0 and value == ArrayValue[index+1] then
    --             break
    --         -- ���������������㣬��Ϸ����
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