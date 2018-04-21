%% change_x 函数 用来计算当前胜负和下一个胜负
function [x1,x2] = change_x(x1,x2,T,N)
neigh = [-1 -1; 0 -1; 1 -1; 1 0; 1 1; 0 1; -1 1; -1 0;0 0]; 
% neigh = [0,-1;1,0;0,1;-1,0];
% 计算分数
[L,W] = size(x1);
score = zeros(L,W);
for i = 1:N   % 计算分数
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
            if x1(a,b) == 0  % 如果邻居是合作者
                if x1(i,j) == 1 % 且本身是背叛者
                    score(i,j) = score(i,j) + T;
                elseif x1(i,j) == 0 %且本身是合作者
                    score(i,j) = score(i,j) + 1;
                end
            end
        end
    end
end
% 获得x2矩阵
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


                
                



            
            
            