t = 0:pi / 50:2 * pi;
r = sin(t) .* cos(t);
polar(t, r, 'dc');      %d表示菱形，c表示青色
