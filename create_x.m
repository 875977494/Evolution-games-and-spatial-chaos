%% create_x 函数
function [x1,x2] = create_x(N,per)
x1 = zeros(N,N); % x1 是当前状态
% x1(n/2,n/2) = 1;
x2 = zeros(N,N); % x2 是下一个状态
x1(46,46) = 1'
% for i = 1:N
%     for j = 1:N
%         if rand < 1 - per  %初始状态百分之10的背叛者 D为1，C为0
%             x1(i,j) = 1;
%         end
%     end
% end