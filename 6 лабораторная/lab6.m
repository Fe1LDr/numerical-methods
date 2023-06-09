clc
clear
A = [5, 2, 3, 2; 7, 2, -9, 0; 6, -3, 1, -2; 3, 8, -1, 2];
f = [1; 3; 2; -1];
X=inv(A)*f

A1=A;
A2=A;
A3=A;
A4=A;
A1(:,1)=f;
A2(:,2)=f;
A3(:,3)=f;
A4(:,4)=f;
x=det(A1)/det(A);
y=det(A2)/det(A);
z=det(A3)/det(A);
t=det(A4)/det(A);
X = [x; y; z; t]

rref([A f])

X=A\f

gauss(A,f)

A=[-0.5209   -1.8295    0.5546   -1.1149   -0.1017    0.0530    0.7833   -0.5771   -0.1528    1.2046   -1.6163    0.2717   -1.5246   -1.3631   -1.8269    0.9840   -0.5979   -0.5745   -0.3819   -0.0898
   -1.2790    20.890   -1.1728    0.6853   -0.8870   -0.1779   -0.3106   -0.8364   -0.5574   -1.4041   -0.4918    0.3586    0.5024    0.6806    0.5359    0.1012    0.4189    0.4998   -1.3712   -0.0063
   -0.0562   -0.1740    1.0076    1.0377    0.7414    1.7725    0.6553    0.8530    0.6770    0.2056   -0.9693   -0.3523    0.3064    0.4378    0.6929   -0.3627   -0.6897   -0.4841    0.0103   -0.0919
   -0.2097    1.6312    0.1135    1.8222    1.3922   -2.5088   -0.5375    0.4773    0.8493   -1.9912   -0.4741    0.1324   -0.9392   -0.1433   -0.6875   -0.7388    0.6712    0.2384    0.2041   -0.9212
    0.1921   -1.3594    0.7301   -0.5290    2.4739   -0.4566    0.3286    0.3023    0.4693    0.0284   -0.6662    2.6736    1.2374   -0.3415    0.3176   -1.4798    0.1509    0.7782   -0.4110   -0.9270
    0.9923    0.9705   -0.9835   -1.6280    0.5039    2.4304    1.0541    0.4158   -0.2398    1.9305    0.4784   -0.0076    0.0330    2.0578    0.1628    0.1534   -0.9913    0.9243    0.6636   -0.9612
    0.5762    0.1436    0.0520    1.6173   -0.8225   -0.4715   -19.797    0.0430    0.9210    0.9411   -1.0411    0.7103    0.1236   -0.3745    1.1591   -0.3170    0.8368    0.5881    0.2258    1.7848
    1.3058    0.0826    0.8776    0.2641    0.2010   -0.5603   -1.8674   -0.9489   -0.9069   -0.0069   -0.8207   -0.4625    0.2739   -0.1902    0.1284    0.3189    0.4745    1.3779   -0.2128   -0.2002
   -0.7293    0.7167    1.0141   -1.1271   -1.0071   -1.2265   -1.8324    0.5416    0.1444   -0.3382    0.1011   -0.5279    0.7542   -0.9387    1.0395   -1.4565    1.2522    1.8512   -0.0440    0.9404
   -0.8646    1.1935   -0.0843   -0.5592   -0.6132    0.7930    0.8486   -0.8211    13.964    0.5283    1.0840   -0.3458    1.5245   -0.8135   -0.1168    1.3218   -0.8926   -18.977    0.4582    0.3492
   -0.0949   -1.0711   -1.8535   -0.8088   -0.6590   -2.1099    0.4052   -1.0719   -0.1897    1.0569   -1.8545    0.5646   -0.2620   -0.5836   -0.6483    0.4872   -0.8953   -1.7787   -0.4414    1.8593
    1.3832    1.3189   -1.0968    1.1610   -0.8332   -0.7994   -0.7025   -1.0741   -0.8438    0.0147    1.7998   -0.8015   -1.7307    1.7095   -0.0380   -1.5666    0.3133   -0.9226   -1.0549    0.9271
    1.3037   -1.2100    0.2186    0.5921    0.3782    0.5670    1.4990    0.8696    1.9434    1.6148   -0.8784   -1.8529    1.0135   -0.3904   -0.1993    1.0571    0.6670   -1.9979   -0.1556   -1.2270
   -0.1258   -1.0741    0.7942    0.2427   -1.1153   -0.0014    0.1378    0.9811   -0.2469   -0.8159    0.6477    0.0532   -0.9277   -0.6901    0.8817   -0.5876    0.8281   -0.3571    0.1291   -0.3272
   -0.5969   -0.6726    0.4631    0.2405    0.6672    0.6239   -1.5868   -1.7588    0.4416   -1.9978    1.0496   -0.4364    1.2437   -0.4482   -0.0561    0.3022    0.0065   -0.3364    0.5094    0.8916
   -1.5206    0.7365   -0.6126   -0.8215    0.7953    0.1264   -1.0191   -0.1481   -0.8036   -0.7482    1.3231    0.2800   -0.5895    0.7144   -0.8412    0.2195   -0.2359    0.2504   -0.0301    0.2882
    0.6718   -1.0700    22.444    0.9931    1.0375    0.6809   -1.3852    0.2519    0.2876   -0.1993   -0.5174    0.0846    1.4915   -1.3157   -0.1548   -0.8782    0.6528    0.2862   -0.4574    2.2652
    0.0228    0.3347    0.0723    0.3464   -0.0204   -1.2874    0.9549   -0.6104    0.4670   -0.3728    0.0243    0.7291   -0.8060    0.6271    1.1886   -2.8614    1.9645   -0.6862    0.5963   -0.0479
   -1.1778    0.4119    0.8655   -0.2611    0.6190    0.2181   -0.6011    0.7610    0.0046   -0.8474   -0.1624    0.9008   -1.1126   -1.3313   -0.4149    0.5356    0.8846   -0.8133   -0.1135   -1.5519
   -0.3346    0.1541   -0.4157   -0.1847    1.8031   -1.5666   -1.1719    0.2544    0.3261    1.3372   -0.6057   -1.3256    0.9569   -0.1308   -0.6586   -0.3420    0.0845    0.7934    0.8070    0.4441]
X = [
    2.5367
    2.2936
   -1.3187
   -0.4741
    0.9874
   -2.0730
    1.2440
   -0.3152
    1.3993
   -0.8799
   -0.9225
    2.3144
    0.5880
   -0.3098
   -1.0330
    1.1034
    0.3421
   -2.2640
   -0.9033
    2.9700]
cond(A)
f=A*X

X1=inv(A)*f

for i=1:20
    B=A;
    B(:,i)=f;
    x(i,1)=det(B)/det(A);
end
x

X2=rref([A f])
X2=X2(:,21);

X3=A\f

X4=gauss(A,f)

dX1=abs(X-X1);
Md1=max(dX1)

dX=abs(X-x);
Md=max(dX)


dX2=abs(X-X2);
Md2=max(dX2)

dX3=abs(X-X3);
Md3=max(dX3)

dX4=abs(X-X4);
Md4=max(dX4)

iters = 100000;
t1 = cputime
% for i=1:1:iters
% Ai=inv(A);
% X1=Ai*f;
% end
% t2 = cputime
% time = t2-t1

% for j=1:1:iters
%     for i=1:20
%         B=A;
%         B(:,i)=f;
%         x(i,1)=det(B)/det(A);
%     end
% end
% t3 = cputime
% time = t3-t2

% for i=1:1:iters
% Q=gauss(A,f);
% end
% t4 = cputime
% time = t4-t1

for i=1:1:iters
X5=A\f;
end
t5=cputime
time =t5-t1

iters = 1000;
t1=cputime;
for i=1:1:iters
Q=A;
Q(:,21)=f;
Qr=rref(Q);
X4=Qr(:,21);
end
t2=cputime
time=t2-t1