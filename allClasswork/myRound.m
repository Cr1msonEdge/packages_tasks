function A = myRound (input1, input2)
    A = zeros(input1, input1);
    mx = input1 / 2 + 0.5;
    for i = 1:input1
      for j = 1:input1
        if (i - mx)^2 + (j - mx)^2 <= input2^2
          A(i,j) = 1;
        endif
      endfor
    endfor
endfunction
