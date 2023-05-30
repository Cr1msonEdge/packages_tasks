function A = fence (varargin)
    input1 = 1;
    input2 = 1;
    if length(varargin) == 2
      input1 = varargin{1};
      input2 = varargin{2};
    else
      input1 = input2 = varargin{1};
    endif
    A = false(input1, input2);
    for i = 1:2:input2
      for j = 1:input1
        A(j, i) = true;
      endfor
    endfor
endfunction
