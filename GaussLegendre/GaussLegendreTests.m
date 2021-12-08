function GaussLegendreTests()
    f = @(x)(x);
    actual = GaussLegendre(f,2,10.^-6,-1,1);
    expected = integral(f,-1,1);
    verifyEqual(f,actual,expected,-1,1,10.^-6);
    
    f = @(x) (x.^2);
    actual = GaussLegendre(f,2,10.^-6,-1,1);
    expected = integral(f,-1,1);
    verifyEqual(f,actual,expected,-1,1,10.^-6);
    
    f = @(x) (x.^2 + x);
    actual = GaussLegendre(f,2,10.^-6,-1,1);
    expected = integral(f,-1,1);
    verifyEqual(f,actual,expected,-1,1,10.^-6);
    
    f = @(x) (sin(x));
    actual = GaussLegendre(f,2,10.^-6,-1,1);
    expected = integral(f,-1,1);
    verifyEqual(f,actual,expected,-1,1,10.^-6);
    
    f = @(x) (cos(x));
    actual = GaussLegendre(f,2,10.^-6,-1,1);
    expected = integral(f,-1,1);
    verifyEqual(f,actual,expected,-1,1,10.^-6);
    
    f = @(x) (cos(x.^2));
    actual = GaussLegendre(f,2,10.^-6,-1,1);
    expected = integral(f,-1,1);
    verifyEqual(f,actual,expected,-1,1,10.^-6);
    
    f = @(x) (cos(x.^2) + sin(x.^2));
    actual = GaussLegendre(f,2,10.^-6,-1,1);
    expected = integral(f,-1,1);
    verifyEqual(f,actual,expected,-1,1,10.^-6);
    
    f = @(x) (exp(x.^2));
    actual = GaussLegendre(f,2,10.^-6,-1,1);
    expected = integral(f,-1,1);
    verifyEqual(f,actual,expected,-1,1,10.^-6);
    
    f = @(x) (x.*exp(x));
    actual = GaussLegendre(f,2,10.^-6,-1,1);
    expected = integral(f,-1,1);
    verifyEqual(f,actual,expected,-1,1,10.^-6);

    f = @(x) (x.*sin(x));
    actual = GaussLegendre(f,2,10.^-6,-1,1);
    expected = integral(f,-1,1);
    verifyEqual(f,actual,expected,-1,1,10.^-6);
    
    f = @(x) (x.*sin(x));
    actual = GaussLegendre(f,2,10.^-6,0,2);
    expected = integral(f,0,2);
    verifyEqual(f,actual,expected,0,2,10.^-6);
end