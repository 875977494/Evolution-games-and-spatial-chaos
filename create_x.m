%% create_x ����
function [x1,x2] = create_x(N,per)
x1 = zeros(N,N); % x1 �ǵ�ǰ״̬
% x1(n/2,n/2) = 1;
x2 = zeros(N,N); % x2 ����һ��״̬
x1(46,46) = 1'
% for i = 1:N
%     for j = 1:N
%         if rand < 1 - per  %��ʼ״̬�ٷ�֮10�ı����� DΪ1��CΪ0
%             x1(i,j) = 1;
%         end
%     end
% end