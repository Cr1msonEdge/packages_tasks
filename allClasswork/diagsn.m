function A = diagsn (varargin)
  input1 = 0;
  input2 = 0;
  if length(varargin) == 2
    input1 = varargin{1};
    input2 = varargin{2};
  else
    input1 = input2 = varargin{1};
  endif
  if input1 == 1
    A = zeros(input1, input2);
    for i=1:input2
      A(1, i) = i;
    endfor
    A = uint32(A);
    return
  endif
  if input2 == 1
    A = zeros(input1, input2);
    for i=1:input1
      A(i, 1) = i;
    endfor
    A = uint32(A);
    return
  endif
  steps = input1 + input2 - 1;
  minElement = 1;
  maxElement = input1 * input2;
  currBeg = 2;
  currEnd = input1 * input2 - 1;

  tempBeg = 1;
  tempEnd = 1;



  emergency = 0;
  if input1 < input2
    tempBeg = -tempBeg;
    tempEnd = -tempEnd;
    emergency = 1;
    t = input1;
    input1 = input2;
    input2 = t;
    currBeg = 3;
    currEnd = input1 * input2 - 2;
  endif
  input1
  input2
  if mod((input1 - input2), 2) != 0
      tempEnd = -1;
      currEnd = currEnd - 1;
  endif
  A = zeros(input1, input2);
  A(1, 1) = 1;
  A(input1, input2) = maxElement;
  for k = 2 : input2 - 1
    for i = 0 : k - 1
      A(k - i, 1 + i) = currBeg;
      A(input1 - k + 1 + i, input2 - i) = currEnd;
      if i != k - 1
        currBeg += tempBeg;
        currEnd -= tempEnd;
      endif
    endfor
    tempBeg = -tempBeg;
    tempEnd = -tempEnd;
    if tempBeg == 1
      currBeg += k;
    else
      currBeg += k + 1;
    endif
    if tempEnd == 1
      currEnd -= k;
    else
      currEnd -= k + 1;
    endif

  endfor
  for k=input2:input1
    for i=0:input2-1
      A(k - i, 1 + i) = currBeg;
      if i != input2 - 1
      currBeg += tempBeg;
      endif
    endfor
    tempBeg = -tempBeg;
    currBeg += input2;
  endfor
  if emergency
    A = A';
  endif
  A = uint32(A);
endfunction
