function A = checkerboard(varargin)
    input1 = 1;
    input2 = 1;
    if length(varargin) == 2
      input1 = varargin{1};
      input2 = varargin{2};
    else
      input1 = input2 = varargin{1};
    endif
    A = true(input1, input2);
    for i = 1:input1
      for j = 1:input2
        if mod(i,2) == 0 && mod (j, 2) != 0 || mod(i,2) != 0 && mod(j,2) == 0
            A(i,j) = false;
        endif
      endfor
    endfor
endfunction

