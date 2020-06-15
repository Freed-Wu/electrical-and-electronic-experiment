tic;
#开始计时
clc;
#清屏
clear;
#清除变量空间的变量，防止变量重名报错
data=csvread('ChuaR.csv');
#读取记录的原始数据
data(1,:)=[];
#第一行是表头，删去
data(:,1)=(data(:,1)-50)/100*24;
#(滑动变阻器变阻百分数-50)/100$\times$24=蔡氏电阻两端电压
plot(data(:,1),data(:,2),'rx-')
#用红色实线交点为$\times$的方式画折线图
xlabel({'u/V'})
#横轴坐标为伏特
ylabel({'i/A'})
#纵轴坐标为安培
title('u-i')
#标题为伏安特性曲线
saveas(gcf,'ChuaVA0.png')
#保存当前图像
fprintf('Runtime is %f second.\n',toc)
#输出程序运行时间

