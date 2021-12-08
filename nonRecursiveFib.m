function indexE = nonRecursiveFib(index)
    fibarray = [1,1];
    for  i=3:index
        item = fibarray(i-1) + fibarray(i-2);
        fibarray = [fibarray,item];
    end
    indexE = fibarray(end);
end