N = 1000; % 試行回数
count = 0; % 円の中にある点の数

% 半径１の円の1/4を描く
t = linspace(0,2*pi,100);
figure
plot(sin(t),cos(t))
axis square 
xlim([0,1])
ylim([0,1])

% 現在の座標軸のプロットを保持する
hold on

% 0.00001秒ごとに乱数を発生させ座標軸にプロット
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
