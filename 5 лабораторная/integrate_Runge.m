function I = integrate_Runge(f, a, b, eps)
h = (b - a);
Ih = h/2 * (f(a) + f(b)); % ��������� �������� ���������
p = 2; % ������� ������ 
% ��� ������� �������� ������� ����� 2
delta = 100; % ��������� �������� �����������

while delta > eps
    h = h/2;
    xi = a + h:h:b-h;
    Ih2 = h/2 * (f(a) + f(b) + 2*sum(f(xi)));
    delta = abs((Ih2 - Ih)/(2^p - 1)); % ������ �����������
    Ih = Ih2;
end
I = Ih;
end