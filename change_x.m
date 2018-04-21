%% change_x ���� �������㵱ǰʤ������һ��ʤ��
function [x1,x2] = change_x(x1,x2,T,N)
neigh = [-1 -1; 0 -1; 1 -1; 1 0; 1 1; 0 1; -1 1; -1 0;0 0]; 
% neigh = [0,-1;1,0;0,1;-1,0];
% �������
[L,W] = size(x1);
score = zeros(L,W);
for i = 1:N   % �������
    for j = 1:N
        for k = 1:9
            a = i + neigh(k,1);
            if a < 1
                a = N;
            elseif a > N
                a = 1;
            end
            b = j + neigh(k,2);
            if b < 1
                b = N;
            elseif b > N
                b = 1;
            end
            if x1(a,b) == 0  % ����ھ��Ǻ�����
                if x1(i,j) == 1 % �ұ����Ǳ�����
                    score(i,j) = score(i,j) + T;
                elseif x1(i,j) == 0 %�ұ����Ǻ�����
                    score(i,j) = score(i,j) + 1;
                end
            end
        end
    end
end
% ���x2����
for i = 1:N
    for j = 1:N
        temp = score(i,j);
        for k = 1:8
            a = i + neigh(k,1);
            if a < 1
                a = N;
            elseif a > N
                a = 1;
            end
            b = j + neigh(k,2);
            if b < 1
                b = N;
            elseif b > N
                b = 1;
            end
            if score(a,b) > temp
                temp = score(a,b);
                x2(i,j) = x1(a,b);
            end
        end
    end
end


                
                



            
            
            