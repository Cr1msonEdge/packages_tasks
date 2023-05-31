## Copyright (C) 2023 rocke
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} getFunc (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: rocke <rocke@LAPTOP-C73Q1BDN>
## Created: 2023-05-31

function resEq = getFunc (equation, zM)
  sz = length(equation);
  resEq = equation(sz);
  xLim = size(zM)(1);
  yLim = size(zM)(2);

  zMatrix = ones(xLim, yLim);
  for i=sz-1:-1:1
    zMatrix = zMatrix .* zM;
    if equation(i) != 0
      resEq += equation(i) * zMatrix;
    endif
  endfor
endfunction
