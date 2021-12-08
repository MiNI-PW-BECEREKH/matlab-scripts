function I = mIntervalGaussLegendre(f,m,coefficients,nodes,a,b)
%this function calculates composite 2-point GL
    I = 0;
    d = (b-a)/m;
    midPoint = [a + d/2:d:b-d/2];
    for i=1:m
        x = midPoint(i) + nodes'*d/2;
        y = f(x);
        I = I + d/2*(coefficients'*y');
    end
end