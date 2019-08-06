require "class"
require "mouse"
algorithm = {index =1,init = 1,}


-- ��ʼ�����飬��������� --
local ArrayValue = {}
for i=1, 16 do
    table.insert(ArrayValue, 0)
end

-- ����ͷ�����ʼ������ --
function algorithm.initArrayValue()
    ArrayValue = {}
    for i=1, 16 do
        table.insert(ArrayValue, 0)
    end
    score.count = 0
end

-- ��������� --
function algorithm.getRandomNumber(afterRandomArray)
    local tempArray = {}
    -- �ڲ���0��λ�����������2 --
    for position, value in ipairs(afterRandomArray) do
        if value == 0 then
            table.insert(tempArray, position)
        end
    end

    length = table.getn(tempArray)
    -- �ж��Ƿ��еط�������� --
    if length == 0 then
        return afterRandomArray
    end

    math.randomseed(tostring(os.time()):reverse():sub(1, 6))
    randomNum = math.random(1, length)
    -- ȷ���������λ��
    randomPosition = tempArray[randomNum]
    afterRandomArray[randomPosition] = 2
    return afterRandomArray
end

-- ���������ֵ --
algorithm.index = algorithm.getRandomNumber(ArrayValue)


--------------------
--    �㷨�߼����� --
--------------------
-- ���������ƶ����򣬴Ӷ���������ƶ� --
function algorithm.direction(move)
    -- ����һ��1*16����洢ÿ���ڵ���ֵ���Ϣ,��ʼ��ʱ�򶼳�ʼ��Ϊ0,���ֵ�ֵ�����λ�ó��ֵ����֣�ֻ������2�ı��� --
    -- ���ݽ��յĲ��������������ƶ����� --
    -- �����ƶ�
    if move == 1 then
        print("up")
        -- �������зǿ�Ԫ��
        for position, value in ipairs(ArrayValue) do
            if ArrayValue[position] ~= 0 then
                -- �����ǰԪ���ڵ�һ��λ��
                if position == 1 or position == 2 or position == 3 or position == 4 then
                    -- ����
                    ArrayValue[position] = ArrayValue[position]
                -- ������ڵ�һ��λ��
                else
                    -- �����ǰԪ���Ϸ��ǿ�Ԫ��
                    if ArrayValue[position-4] == 0 then
                        -- �����ƶ�
                        ArrayValue[position-4] = ArrayValue[position]
                        ArrayValue[position] = 0
                    -- �����ǰԪ���Ϸ��Ƿǿ�Ԫ��
                    else
                        -- ����Ϸ�Ԫ�غ͵�ǰԪ�ص����ݲ�ͬ
                        if ArrayValue[position-4] ~= ArrayValue[position] then
                            -- ���� 
                            ArrayValue[position-4] = ArrayValue[position-4]
                            ArrayValue[position] = ArrayValue[position]
                        -- ����Ϸ�Ԫ���뵱ǰԪ��������ͬ 
                        else
                            -- ���Ϻϲ�
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

    -- �����ƶ�
    if move == 2 then
        print("down")
        -- �������зǿ�Ԫ��
        for position, value in ipairs(ArrayValue) do
            if ArrayValue[position] ~= 0 then
                -- �����ǰԪ���ڵ�һ��λ��
                if position == 13 or position == 14 or position == 15 or position == 16 then
                    -- ����
                    ArrayValue[position] = ArrayValue[position]
                -- ������ڵ�һ��λ��
                else
                    -- �����ǰԪ���·��ǿ�Ԫ��
                    if ArrayValue[position+4] == 0 then
                        -- �����ƶ�
                        ArrayValue[position+4] = ArrayValue[position]
                        ArrayValue[position] = 0
                    -- �����ǰԪ���·��Ƿǿ�Ԫ��
                    else
                        -- ����·�Ԫ�غ͵�ǰԪ�ص����ݲ�ͬ
                        if ArrayValue[position+4] ~= ArrayValue[position] then
                            -- ���� 
                            ArrayValue[position+4] = ArrayValue[position+4]
                            ArrayValue[position] = ArrayValue[position]
                        -- ����·�Ԫ���뵱ǰԪ��������ͬ 
                        else
                            -- ���ºϲ�
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
    
    -- �����ƶ�
    if move == 3 then
        print("left")
        -- �������зǿ�Ԫ��
        for position, value in ipairs(ArrayValue) do
            if ArrayValue[position] ~= 0 then
                -- �����ǰԪ���ڵ�һ��λ��
                if position == 1 or position == 5 or position == 9 or position == 13 then
                    -- ����
                    ArrayValue[position] = ArrayValue[position]
                -- ������ڵ�һ��λ��
                else
                    -- �����ǰԪ������ǿ�Ԫ��
                    if ArrayValue[position-1] == 0 then
                        -- �����ƶ�
                        ArrayValue[position-1] = ArrayValue[position]
                        ArrayValue[position] = 0
                    -- �����ǰԪ������Ƿǿ�Ԫ��
                    else
                        -- ������Ԫ�غ͵�ǰԪ�ص����ݲ�ͬ
                        if ArrayValue[position-1] ~= ArrayValue[position] then
                            -- ���� 
                            ArrayValue[position-1] = ArrayValue[position-1]
                            ArrayValue[position] = ArrayValue[position]
                        -- ������Ԫ���뵱ǰԪ��������ͬ 
                        else
                            -- ����ϲ�
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

    -- �����ƶ�
    if move == 4 then
        print("right")
        -- �������зǿ�Ԫ��
        for position, value in ipairs(ArrayValue) do
            if ArrayValue[position] ~= 0 then
                -- �����ǰԪ���ڵ�һ��λ��
                if position == 4 or position == 8 or position == 12 or position == 16 then
                    -- ����
                    ArrayValue[position] = ArrayValue[position]
                -- ������ڵ�һ��λ��
                else
                    -- �����ǰԪ���Ҳ��ǿ�Ԫ��
                    if ArrayValue[position+1] == 0 then
                        -- �����ƶ�
                        ArrayValue[position+1] = ArrayValue[position]
                        ArrayValue[position] = 0
                    -- �����ǰԪ���Ҳ��Ƿǿ�Ԫ��
                    else
                        -- ����Ҳ�Ԫ�غ͵�ǰԪ�ص����ݲ�ͬ
                        if ArrayValue[position+1] ~= ArrayValue[position] then
                            -- ���� 
                            ArrayValue[position+1] = ArrayValue[position+1]
                            ArrayValue[position] = ArrayValue[position]
                        -- ������Ԫ���뵱ǰԪ��������ͬ 
                        else
                            -- ����ϲ�
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

-- �ж���Ϸ�Ƿ�ʤ�� --
function algorithm.getWin()
    -- �������ֵ�ﵽ2048��ֱ�ӽ�����Ϸ�����YouWin --
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

-- �ж���Ϸ�Ƿ���� --
function algorithm.getOver()
    -- �ж���Ϸ�Ƿ���� --
    local count = 0
    -- ��¼�ǿ�Ԫ�صĸ���
    for JudgeEnd, JudgeValue in ipairs(ArrayValue) do
        if JudgeValue ~= 0 then
            count = count +1
        end
    end
    -- ����ǿ�Ԫ�صĸ���Ϊ16
    if count == 16 then
        -- ѭ���������зǿ�Ԫ��
        for index, value in ipairs(ArrayValue) do
            -- ����Ԫ�ش��ڲ��Һ͵�ǰԪ��������ͬ
            if ArrayValue[index-4] ~= 0 and value == ArrayValue[index-4] then
                break
            -- ����Ԫ�ش��ڲ��Һ͵�ǰԪ��������ͬ
            elseif ArrayValue[index+4] ~= 0 and value == ArrayValue[index+4] then
                break
            -- ���Ԫ�ش��ڲ��Һ͵�ǰԪ��������ͬ
            elseif ArrayValue[index-1] ~= 0 and value == ArrayValue[index-1] then
                break
            -- �Ҳ�Ԫ�ش��ڲ��Һ͵�ǰԪ��������ͬ
            elseif ArrayValue[index+1] ~= 0 and value == ArrayValue[index+1] then
                break
            -- ���������������㣬��Ϸ����
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
--    �߼���ʾ���� --
--------------------
-- �趨һ����ʾ���࣬�����½�����ÿ���������ʹ������ĺ��� --
-- �½�һ��������ʾ���࣬������������ɳ�ʼ�� --
-- algorithm.piece_class = class()

-- -- ������Ĺ��캯�� --
-- function algorithm.piece_class:ctor(num, cX, cY)
--     self.number = num
--     self.cX = cX
--     self.cY = cY
-- end


-- -- �������ڲ��Եĳ�Ա���� --
-- function algorithm.piece_class:print_x()
--     print(self.x)
-- end


-- -- �������ڴ�����Ϣ�ĺ���������λ�ú�Ӧ����ʾ������ --
-- function algorithm.piece_class:setPosition()
-- --     ArrayPosition = {{25, 175}, {75, 175}, {125, 175}, {175, 175},
-- --                     {25, 125}, {75, 125}, {125, 125}, {175, 125},
-- --                     {25, 75}, {75, 75}, {125, 75}, {175, 75},
-- --                     {25, 25}, {75, 25}, {125, 25}, {175, 25}}
-- end
-- function algorithm.piece_class:getPosition()
-- end

-- -- ��������ÿ��������ֵ�ĺ����ͻ�ȡÿ��������ֵ�ĺ��� -- 
-- function algorithm.piece_class:setNumber()
-- end 

-- function algorithm.piece_class:getNumber()
-- end

-- -- ��������������ʾ�ĺ��� -- 
-- function algorithm.piece_class:Display()
-- end

-- -- �����ֵ�ֵ����Ⱦ��ɫ��Ϣ --
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

-- -- �½�16���������ӵĶ���ÿ�����󱣴�λ�ú���ֵ��Ϣ --
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