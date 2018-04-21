%% show_x ���� ��ͼ����
function [h,temp1,temp2,temp3] = show_x(h,x1,x2,t) % t�ǵȴ�ʱ��
% C����һ��ΪC ��ɫ 0 0 1
% D����һ��ΪD ��ɫ 1 0 0
% D����һ��ΪC ��ɫ 1 1 0
% C����һ��ΪD ��ɫ 0 1 0
[L,W] = size(x1);
temp1 = zeros(L,L);
temp2 = temp1;
temp3 = temp1;


% C��һ��ΪC  0 0 1 ��ɫ
temp1(x1 == 0 & x2 == 0) = 0;
temp2(x1 == 0 & x2 == 0) = 0;
temp3(x1 == 0 & x2 == 0) = 1;

% D����һ��ΪD ��ɫ 1 0 0
temp1(x1 == 1 & x2 == 1) = 1;
temp2(x1 == 1 & x2 == 1) = 0;
temp3(x1 == 1 & x2 == 1) = 0;

% D����һ��ΪC ��ɫ 1 1 0
temp1(x1 == 1 & x2 == 0) = 1;
temp2(x1 == 1 & x2 == 0) = 1;
temp3(x1 == 1 & x2 == 0) = 0;

% C����һ��ΪD ��ɫ 0 1 0
temp1(x1 == 0 & x2 == 1) = 0;
temp2(x1 == 0 & x2 == 1) = 1;
temp3(x1 == 0 & x2 == 1) = 0;

%% �ϲ���������
check = cat(3,temp1,temp2,temp3);

%% ��ͼ
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