clear all;clc;
f=imread('child.jpg');
g=imread('woman.jpg');
%avi=creatAVIFile;%创建一个avi动画文件
aviObject=VideoWriter('change1.avi');
t=0.00;
aviObject.Quality=100;
aviObject.FrameRate=25;
open(aviObject);

step=0.001;
while(t<=1.00)
    a=1.00-t;
    b=imlincomb(a,f,t,g);
    writeVideo(aviObject,b);
    t=t+step;
end

close(aviObject);