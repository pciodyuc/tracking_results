

path = '/Users/pciodyuc/Downloads/ptav_results/results_OTB100/';
%path = '/Users/pciodyuc/Documents/zypDrawPlot/other_tracker_OTB_result/LNLT/';
TB100_videoconfig;
% VideoConfig;
trackerName = 'PTAV';
savepath = ['./' trackerName '/'];
%savepath = '/Users/pciodyuc/Documents/zypDrawPlot/results_others_OTB100/';
savepath = '/Users/pciodyuc/Documents/zypDrawPlot/others_result/results_others_OTB100/';
%path = savepath;
if ~exist(savepath,'dir')
    mkdir(savepath);
end
for i = 1:100
    i
    video{i}.name
    if strcmp(video{i}.name,'Jogging.1')
        video{i}.name='jogging-1';
    end
    if strcmp(video{i}.name,'Jogging.2')
        video{i}.name='jogging-2';
    end
    if strcmp(video{i}.name,'Skating2.1')
        video{i}.name='Skating2-1';
    end
    if strcmp(video{i}.name,'Skating2.2')
        video{i}.name='Skating2-2';
    end
    if strcmp(video{i}.name,'Human4.2')
        video{i}.name='Human4';
    end
params = load([path '/'  video{i}.name '.txt']);

%params.results{1,1}.res(:,1) = params.results{1,1}.res(:,1)-gtposition(1,3)/2;
%params.results{1,1}.res(:,2) = params.results{1,1}.res(:,2)-gtposition(1,4)/2;
%params.results{1,1}.res(:,3) = params.results{1,1}.res(:,3)*32;
%params.results{1,1}.res(:,4) = params.results{1,1}.res(:,6)*32;
%params.results{1,1}.len = params.results{1,1}.seq_len;
% paramss = [];
% paramss(:,3) = params(:,3)*24;
% paramss(:,4) = params(:,5).*params(:,3)*24;
% paramss(:,1) = params(:,1) -paramss(:,3)/2;
% paramss(:,2) = params(:,2) - paramss(:,4)/2;
%aaa= results{1}.res ;
%bbb=aaa.res.res;
results{1}.res = params;
results{1}.type = 'rect';
%results{1}.type = 'rect';
% params  = params.results{1}.res;
% params = single(params);
% params  = params.results;
% dlmwrite(['./bbb/' video{i}.name '_Staple.mat'],params);

save([savepath '/' video{i}.name '_' trackerName '.mat'],'results');



end 