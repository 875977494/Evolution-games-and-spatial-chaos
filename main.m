%% ������
iterations = 500; % ��������
N = 99; % Ԫ���Զ�����С
T = 1.85;  % T>R>P>S
per = 0.5; % ��ʼ�����ߵİٷֱ�
[x1,x2] = create_x(N,per);
% ����1�Ǳ����ߣ�0�Ǻ�����
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
