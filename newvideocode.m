%set A which contain  video data from 1 to 7 and 11
clc;
close all,
clear all;
A=load('C:\Users\ranveer\Desktop\FYP\eeglab2022.1\data_preprocessed_matlab\s26.mat');
i=1;
c1=A.data(1,1:32,385:8064);
d1(:,i:i+7679)=reshape(c1,[32,7680]);

i=i+7680;
c1=A.data(2,1:32,385:8064);
d1(:,i:i+7679)=reshape(c1,[32,7680]);


i=i+7680;
c1=A.data(3,1:32,385:8064);
d1(:,i:i+7679)=reshape(c1,[32,7680]);


i=i+7680;
c1=A.data(4,1:32,385:8064);
d1(:,i:i+7679)=reshape(c1,[32,7680]);



i=i+7680;
c1=A.data(5,1:32,385:8064);
d1(:,i:i+7679)=reshape(c1,[32,7680]);



i=i+7680;
c1=A.data(6,1:32,385:8064);
d1(:,i:i+7679)=reshape(c1,[32,7680]);


% 
% i=i+7680;
% c1=A.data(7,1:32,385:8064);
% d1(:,i:i+7679)=reshape(c1,[32,7680]);



% i=i+7680;
% c1=A.data(11,1:32,385:8064);
% d1(:,i:i+7679)=reshape(c1,[32,7680]);


%csvwrite('setAsub4N.csv',d1);
% save('aaA',d1,'.mat');
save('SetAsub26N.mat','d1')

% set B'
c2=A.data(12,1:32,385:8064);
d2(:,i:i+7679)=reshape(c2,[32,7680]);


i=i+7680;
c2=A.data(13,1:32,385:8064);
d2(:,i:i+7679)=reshape(c2,[32,7680]);


i=i+7680;
c2=A.data(14,1:32,385:8064);
d2(:,i:i+7679)=reshape(c2,[32,7680]);


i=i+7680;
c2=A.data(15,1:32,385:8064);
d2(:,i:i+7679)=reshape(c2,[32,7680]);



i=i+7680;
c2=A.data(17,1:32,385:8064);
d2(:,i:i+7679)=reshape(c2,[32,7680]);



i=i+7680;
c2=A.data(18,1:32,385:8064);
d2(:,i:i+7679)=reshape(c2,[32,7680]);



i=i+7680;
c2=A.data(20,1:32,385:8064);
d2(:,i:i+7679)=reshape(c2,[32,7680]);

%csvwrite('setBsub4N.csv',d2);
save('setBsub26N.mat','d2');
% data = readtable('setB.csv');

%set C

i=1;
c3=A.data(22,1:32,385:8064);
d3(:,i:i+7679)=reshape(c3,[32,7680]);


i=i+7680;
c3=A.data(23,1:32,385:8064);
d3(:,i:i+7679)=reshape(c3,[32,7680]);


i=i+7680;
c3=A.data(24,1:32,385:8064);
d3(:,i:i+7679)=reshape(c3,[32,7680]);


i=i+7680;
c3=A.data(25,1:32,385:8064);
d3(:,i:i+7679)=reshape(c3,[32,7680]);



i=i+7680;
c3=A.data(26,1:32,385:8064);
d3(:,i:i+7679)=reshape(c3,[32,7680]);



i=i+7680;
c3=A.data(27,1:32,385:8064);
d3(:,i:i+7679)=reshape(c3,[32,7680]);



i=i+7680;
c3=A.data(28,1:32,385:8064);
d3(:,i:i+7679)=reshape(c3,[32,7680]);



i=i+7680;
c3=A.data(29,1:32,385:8064);
d3(:,i:i+7679)=reshape(c3,[32,7680]);


i=i+7680;
c3=A.data(30,1:32,385:8064);
d3(:,i:i+7679)=reshape(c3,[32,7680]);


%csvwrite('setCsub4N.csv',d3);
save('setCsub26N.mat','d3');
%set D
i=1;
c4=A.data(31,1:32,385:8064);
d4(:,i:i+7679)=reshape(c4,[32,7680]);


i=i+7680;
c4=A.data(32,1:32,385:8064);
d4(:,i:i+7679)=reshape(c4,[32,7680]);


i=i+7680;
c4=A.data(33,1:32,385:8064);
d4(:,i:i+7679)=reshape(c4,[32,7680]);


i=i+7680;
c4=A.data(34,1:32,385:8064);
d4(:,i:i+7679)=reshape(c4,[32,7680]);



i=i+7680;
c4=A.data(35,1:32,385:8064);
d4(:,i:i+7679)=reshape(c4,[32,7680]);



i=i+7680;
c4=A.data(36,1:32,385:8064);
d4(:,i:i+7679)=reshape(c4,[32,7680]);



i=i+7680;
c4=A.data(37,1:32,385:8064);
d4(:,i:i+7679)=reshape(c4,[32,7680]);



i=i+7680;
c4=A.data(38,1:32,385:8064);
d4(:,i:i+7679)=reshape(c4,[32,7680]);


i=i+7680;
c4=A.data(39,1:32,385:8064);
d4(:,i:i+7679)=reshape(c4,[32,7680]);


i=i+7680;
c4=A.data(40,1:32,385:8064);
d4(:,i:i+7679)=reshape(c4,[32,7680]);


%csvwrite('setDsub4N.csv',d4);
save('setDsub26N.mat','d4');

