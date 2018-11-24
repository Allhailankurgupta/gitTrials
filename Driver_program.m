clc
clear all
clear

% =============================================={ DTFT } =======================|
%Question:-1 
N_init = -50;
N_end = 50;
n = N_init:N_end;

X_n = sinc(pi*n/8)/8;
X_n(abs(n) > 10) = 0;;djncsjknsjncjnj
dsjnvdjsnjvndsjnjsn'sjdnjsd
sjdnjsnjn
dlsm'sdmv
sdm
vmsd
mv
dv
sv
sv
snv
sn
svjdsbjvsbdjbskbvkbsk
grid on

%--------------------------------- 
% Question:-2

omega2 = -pi:0.01:pi;
omega2_bounbed = (omega2 >= -pi/3 & omega2 <= pi/3);
X_w2 = zeros(size(omega2));
X_w2(omega2_bounbed) = 1 + omega2(omega2_bounbed).^2;
figure,plot(omega2, X_w2, 'linewidth',2),xlabel('w --->'),ylabel('X(w) --->'),title('Parabolic spectrum (signal)');
grid on

% Plot the IDTFT  
X_n_reconst = IDTFT(X_w2,omega2,n);
figure,plot(n, X_n_reconst,'linewidth', 2), xlabel('n --->'), ylabel('X(n) --->'), title('IDTFT signal');
grid on

%=================================={ Sampling }=================================|
% Question:-3

t_init3 = -10;
t_end3 = 10;
t3 = t_init3:0.01:t_end3;

X_t3 = zeros(size(t3));
X_t3(t3 > 0 & t3 < 5) = 1 + 0*t3(t3>0 & t3<5);
figure, plot(t3, X_t3, 'linewidth', 2), xlabel('t --->'), ylabel('X(t) --->'), title('Rectangular signal');
grid on


% ---- CTFT ---->
omega3 = -5*pi:0.01:5*pi;
X_w3 = CTFT(X_t3, omega3, t3);
X_w3_mag = abs(X_w3)*0.01;
X_w3_angle = angle(X_w3);
figure, plot(omega3, X_w3_mag, 'linewidth', 2), xlabel('w --->'), ylabel('X(w):mag --->'), title('CTFT signal(Magnitute)');
grid on
figure,plot(omega3, X_w3_angle, 'linewidth', 2),xlabel('w --->'),ylabel('X(w):angle --->'), title('CTFT signal(Angle)');
grid on

%------------------------------------
% Question:-4 (Taking same time interval for 3 and 4)

t_init4 = -10;
t_end4 = 10;
t4 = t_init4:0.01:t_end4;

X_t4 = zeros(size(t4));
X_t4(t4 >= -3 & t4 <= 3) = 1 - abs(t4(t4 >= -3 & t4 <= 3))/3;
figure, plot(t4, X_t4, 'linewidth', 2), xlabel('t --->'), ylabel('X(t) --->'), title('Triangle signal');
grid on


% ---- CTFT ---->
omega4 = -5*pi:0.01:5*pi;
X_w4 = CTFT(X_t4, omega4, t4);
X_w4_mag = abs(X_w4)*0.01;
X_w4_angle = angle(X_w4);
figure, plot(omega4, X_w4_mag, 'linewidth', 2), xlabel('w --->'), ylabel('X(w):mag --->'), title('CTFT signal(Magnitute)');
grid on
figure,plot(omega4, X_w4_angle, 'linewidth', 2),xlabel('w --->'),ylabel('X(w):angle --->'),title('CTFT signal(Angle)');
grid on

% --------------------------------------

% 3dB bandwidth falls within the range  of...
figure, powerbw(abs(X_w3), omega3./2*pi);
figure, powerbw(abs(X_w4), omega4./2*pi);

%===============================================================================

