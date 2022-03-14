clear all
clc
help asymp
help BodePlotGui
% Ejerecicio 3.1
% sis = 10*tf([1 3],conv([1 1], [1 80 1000]));
% bode(sis), grid

% Ejerecicio 3.2
% num = [100 0];
% den = [1 10];
% bode(num,den)
% 
% sis = 10*tf([1 0],conv([1 1], [1 200]));
% bode(sis), grid

% n=[1 20 0];
% d=[1 61 460 400];
% bode(n,d)

% a=[1/5 1];
% b=[1/100 1];
% c=[1 0];
% d=[1/2000 1];
% e=[1/100000 1];
% answer=conv(a,b);
% Num=answer;
% answer2=conv(d,e);
% Den1=answer2;
% Den=conv(c,Den1);
% H=tf(Num,Den);
% bode(H)


% num1=[1];
% den1=[1 0];
% num2=[1 0];
% den2=[1];
% num3=[1];
% den3=[1 1];
% Hs1=tf(num1,den1)
% Hs2=tf(num2,den2)
% Hs3=tf(num3,den3)
% bode(Hs1,Hs2,Hs3,{0.01,100})
% grid

% sys1=tf([1 1 1], [1 1]);
% sys2=tf(1,[1 2]);
% sys3=sys1*sys2
% zpk(sys3);

% Ejemplo en clase
% sys1=tf([1], [1 1]);
% sys2=tf(1,[1 200]);
% sys3=sys1*sys2
% zpk(sys3);
% bode(sys3), grid

% //////////////////////////// Ejercicio 3.2 terninado ////////////////
hold on
sys1=tf([50 250], [1]);
sys2=tf(1,[1 30 200 0]);
sys3=sys1*sys2
zpk(sys3)
bode(sys3,{0.1,1000},'b')
asymp(sys3)
grid on
title('Diagrama de Bode de G(s)= [50s+250]/[s^3+30s^2+200s]')
BodePlotGui(sys3)

% //////////////////////////// Ejercicio 3.1 terninado ////////////////
% sys1=tf([10 40 30], [1]);
% sys2=tf(1,[1 12 44 48 0]);
% sys3=sys1*sys2
% zpk(sys3)
% bode(sys3,{0.1,1000})
% asymp(sys3)
% grid on
% title('Diagrama de Bode de G(s)= [10(s+1)(s+3)]/[s(s+2)(s+4)(s+6)]')
% BodePlotGui(sys3)