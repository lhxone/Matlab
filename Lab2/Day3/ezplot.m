ezmesh('-cos(sqrt(x^2+y^2))', [-4, 4], [-4, 4])
figure
ezsurf('(6+2*cos(u))*cos(v)', '(6+2*cos(u))*sin(v)', '2 * sin(u)', [0, 2 * pi, 0, 2 * pi])
hold on
ezsurf('2*sin(u).*cos(v)', '2*sin(u).*sin(v)', '2*cos(u)', [0, pi, 0, 2 * pi])
axis equal
hold off
