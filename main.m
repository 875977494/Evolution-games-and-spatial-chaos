%% 主函数
iterations = 500; % 迭代次数
N = 99; % 元胞自动机大小
T = 1.85;  % T>R>P>S
per = 0.5; % 初始合作者的百分比
[x1,x2] = create_x(N,per);
% 我令1是背叛者，0是合作者
t = 0.01;
[h,temp1,temp2,temp3] = show_x(NaN,x1,x2,t);
bili = zeros(1,iterations);
for i = 1:iterations
    i
    [x1,x2] = change_x(x1,x2,T,N);
    bili(1,i) = 1 - sum(x1(:))/(N*N);
    [h,temp1,temp2,temp3] = show_x(h,x1,x2,t);
    x1 = x2;
end
figure(2)
plot(1:iterations,bili);
