function A = myDiag(input1)
    A = zeros(input1, input1);
    first = 1;
    last = input1^2;
    k = 0;
    iter = (input1 - 1)
    temp = 1;
    for j = 0 : (input1 - 1)
      if j != input1 - 1
        if temp == 1
          x1 = [first:1:first + j];
          x2 = [last - j:1:last];
        else
          x1 = [first+j:-1:first];
          x2 = [last:-1:last-j];
        endif
        A += diag(x1, iter);
        A += diag(x2, -iter);
        first += j + 1;
        last -= (j + 1);
        iter -= 1;
      else
        if temp == -1
          x1 = [first+j:-1:first];
          A += diag(x1, iter);
        else
          x1 = [first:1:first + j]
          A += diag(x1, iter);
        endif
      endif
      temp = -temp;
    endfor
    A = fliplr(A);
endfunction
