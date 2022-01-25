function [y1,y2]=plotVA2(y)

y1=smooth(y(1,:),0.1,'rloess');
y2=smooth(y(2,:),0.1,'rloess');

plot(y1,'Color','red','LineWidth',2);
hold;
plot(y2,'Color','blue','LineWidth',2);
