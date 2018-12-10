function T = th_median(I,n)
%TH_MEDIAN Global image threshold using the median of the pixels.
%   T = TH_MEDIAN(I,N) find a global threshold T for an intensity image I
%   by assuming that half of the pixels belong to the background and half
%   to the foreground.
%
%   TH_MEDIAN(I,N) use N as maximum graylevel (defaults to 255).
%
%   References: 
%
%   W. Doyle, "Operation useful for similarity-invariant pattern recognition,"
%   Journal of the Association for Computing Machinery, vol. 9,pp. 259-267,
%   1962.
%
%   C. A. Glasbey, "An analysis of histogram-based thresholding algorithms,"
%   CVGIP: Graphical Models and Image Processing, vol. 55, pp. 532-537, 1993.

%% Copyright (C) 2004-2013 Antti Niemistö
%%
%% This file is part of HistThresh toolbox.
%%
%% HistThresh toolbox is free software: you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation, either version 3 of the License, or
%% (at your option) any later version.
%%
%% HistThresh toolbox is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%%
%% You should have received a copy of the GNU General Public License
%% along with HistThresh toolbox.  If not, see <http://www.gnu.org/licenses/>.

if nargin == 1
  n = 255;
end

T = th_ptile(I,.5,n);
