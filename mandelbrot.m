function mandelbrot(n, iterations)
if nargin == 0
    n = 1000       ;
    iterations = 40;
end
[x,y] = meshgrid(linspace(-2, 1, n), linspace(-1.5, 1.5, n));
c = x + 1i * y    ;
z = zeros(size(c));
k = zeros(size(c));
for ii = 1:iterations
    z   = z.^2 + c                          ;
    k(abs(z) > 2 & k == 0) = iterations - ii;
end
figure                                                          ;
hold on                                                         ;
title('Mandelbrot Set For $f(z) = z^2$','interpreter','latex')  ;
imagesc(k)                                                      ;
colormap hot                                                    ;
axis square                                                     ;
hold off                                                        ;
end