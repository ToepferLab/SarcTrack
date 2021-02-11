clear, clc

% -------------------------
% parameter

fpath = '/home/cnt13/ipsc/test';

% -------------------------
% batch processing

mpaths = listfiles(fpath,'.avi');
for i = 1:length(mpaths)
    fprintf('\n')
    disp(mpaths{i});
    dwProcessVideo(mpaths{i});
end