%Fourier series
%====================================================================
clc,clear all ,close all
% syms x pi n z
T=pi;  
% 2T=2Pi ------> T=pi
f=1/T;
w=2*pi*f; 
t=-T/2:0.0001*T:T/2;
%Signal variable time  (Fourier series)
%====================================================================
%                       inf 
%                      -----
%                      \
%        f(x) = a0/2 +  \  a(n) * sin(n*pi*x/L) + b(n) * con(n*pi*x/L) 
%                       /
%                      /
%                      -----
%                      n = 1
%====================================================================
% a0=(1/pi)*int(y,x,-pi,pi)
% an=(1/pi)*int(y*cos(n*x),x,-pi,pi) 
% bn=(1/pi)*int(y*sin(n*x),x,-pi,pi)    
% s=a0/2+symsum (an*cos(n*x)+bn*sin(n*x),n,1,z)
%====================================================================
%   Example:
%   f = @(x)x.*cos(x);
%     a0: 0
%     a(n): [-0.5000 1.3333 -0.7500]
%     b(n): [1.4136e-016 0 7.0679e-017]
% Author: Korosh Agha Mohammad Ghasemi
% Copyright 2020
%====================================================================
%plot S(8) ------> n=1:8
s=0;
for n=1:10 %Edit
    a(n)=4*sin(n*pi/2)/(n*pi);  %Edit
    b(n)=0;   %Edit
    s=s+(a(n)*cos(n*w*t)+(b(n)*sin(n*w*t))) ;  %Do not edit
end
plot(t,s,'k')
grid on
