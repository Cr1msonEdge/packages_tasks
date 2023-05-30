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
## @deftypefn {} {@var{retval} =} newtons (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: rocke <rocke@LAPTOP-C73Q1BDN>
## Created: 2023-05-30

function retval = newtons(f, x0)
  epsilon = 1e-6;
  #prevX = x0;

  x1 = x0 - f(x0) ./ myDiff(f, x0, epsilon);
  #z1 = z0 - f(z0) ./ df;
  for i=0:30
    x1 = x1 - f(x1) ./ myDiff(f, x1, epsilon);
  endfor

  retval = x1;
endfunction





