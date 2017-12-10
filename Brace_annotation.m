function [H] = Brace_annotation(x,y,theta,width_H,width_V)
% The code is writen by winter-my-dream@hotmail.com
%Example:
% theta=pi/10; % rotating angle
% width_H = 0.02; % horizontal width
% width_V = 0.5; % vertical width
% x = 0.3;
% y = 0.2;
% [H] = Brace_annotation(x,y,theta,width_H,width_V)
% you can set the properties of line by using the output handle H
% Rotating matrix;
R = [cos(theta),-sin(theta);sin(theta),cos(theta)];
% Making x-data and y-data
line_x0 = [0, 0.5, 0.5, 1, 0.5, 0.5, 0]*width_H;
line_y0 = [0, 0.02, 0.48, 0.5, 0.52, 0.98, 1]*width_V;
% Draw the brace and some text
tem_matrix = R*[line_x0;line_y0];
line_x = x + tem_matrix(1,:);
line_y = y + tem_matrix(2,:);
[H] = line(line_x, line_y, 'Color', 'k');
axis([0 1 0 1])
