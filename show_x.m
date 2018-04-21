%% show_x 函数 绘图函数
function [h,temp1,temp2,temp3] = show_x(h,x1,x2,t) % t是等待时间
% C且下一代为C 蓝色 0 0 1
% D且下一代为D 红色 1 0 0
% D且下一代为C 黄色 1 1 0
% C且下一代为D 绿色 0 1 0
[L,W] = size(x1);
temp1 = zeros(L,L);
temp2 = temp1;
temp3 = temp1;


% C下一代为C  0 0 1 蓝色
temp1(x1 == 0 & x2 == 0) = 0;
temp2(x1 == 0 & x2 == 0) = 0;
temp3(x1 == 0 & x2 == 0) = 1;

% D且下一代为D 红色 1 0 0
temp1(x1 == 1 & x2 == 1) = 1;
temp2(x1 == 1 & x2 == 1) = 0;
temp3(x1 == 1 & x2 == 1) = 0;

% D且下一代为C 黄色 1 1 0
temp1(x1 == 1 & x2 == 0) = 1;
temp2(x1 == 1 & x2 == 0) = 1;
temp3(x1 == 1 & x2 == 0) = 0;

% C且下一代为D 绿色 0 1 0
temp1(x1 == 0 & x2 == 1) = 0;
temp2(x1 == 0 & x2 == 1) = 1;
temp3(x1 == 0 & x2 == 1) = 0;

%% 合并三个矩阵
check = cat(3,temp1,temp2,temp3);

%% 绘图
if ishandle(h)
    set(h,'CData',check)
    pause(t)
else
    figure(1)
    h = image(check);
    hold on 
    % plot([[0:W]',[0:W]']+0.5,[0,L]+0.5,'k')
    % plot([0,W]+0.5,[[0:L]',[0:L]']+0.5,'k')
    axis image
    set(gca,'xtick',[],'ytick',[]);
    pause(t)
end