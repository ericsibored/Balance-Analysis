%This program was written by Eric Zhang (Group 05) on 2/18/2017 for the 
%purpose of analyzing human balance data acquired in the Medical Virtual 
%Reality Center for BIOENG 1150 BioMethods and Applications.

function Balance_Analysis()

clear
clc

groups = {'05'; '06'; '15'; '17'};
users = {'AK' ; 'BB'; 'EZ'; 'RM'; 'EH'; 'MP'; 'MW'; 'WM'; 'KP'; 'MER'; 
         'MJR'; 'RB'; 'AB'; 'AP'; 'YV'};
trials = {'vr1'; 'vr2'};
test_condition = {'EO'; 'EC'; 'EC'; 'EO'; 'EO'; 'EC'; 'EC'; 'EO'};

group_start = 1;
group_end = 4;

%group_ref = groups{1, 4};

for group_num = 1:4 %loops through each group
    
    root_dir = 'C:\Users\erz12\Desktop\Balance';
    group_directory = strcat('Group', groups{group_num}, '_08Feb2017');
    cd(group_directory);
    cd(group_directory);
    for user_num = group_start:group_end %loops through each user in each group 
        user_directory = pwd;
        cd(users{user_num});
        pwd()
        for trial_num = 1:2 %loops through each trial for each user
            trial_directory = pwd;
            cd(trials{trial_num});
            cd(trial_directory);
            %filename = strcat(trials{trial_num}, '.dat');
            %fileID = fopen(filename);  
            %C1 = textscan(fileID,'%s%f%s%f')
            %vr_data_anal()
            %here is where I want to call an analysis func to take and mash
            %data and store it all in one place somehow
        end
        cd(user_directory);
        disp(group_end);
    end
    
    %Increments group_start & group_end to correspond to each group size.
    if (group_end ~= 12)
        group_start = group_start + 4;
        group_end = group_end + 4;
    else
        group_start = group_start + 4; %start increments by 4
        group_end = group_end + 3; %end increments by 3
    end
    
    cd(root_dir);
end

