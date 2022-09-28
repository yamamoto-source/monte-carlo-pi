N = 10000;
count = 0;

t = linspace(0,2*pi,100);
figure
plot(sin(t),cos(t))
axis square 

xlim([0,1])
ylim([0,1])

hold on

for i = 1:N
    a = rand;
    b = rand;
    plot(a,b,'.')
    pause(0.00001)
    if a^2 + b^2 < 1
        count = count + 1;
    end
end

pai = 4*count/N;
disp(['piの推定値は',num2str(pai)])
