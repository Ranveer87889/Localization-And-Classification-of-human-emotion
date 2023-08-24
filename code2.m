% Localization of EEG data
clc
close all
clear all
[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
% EEG.etc.eeglabvers = '14.1.1'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = pop_importdata('dataformat','matlab','nbchan',0,'data','C:\\Users\\ranveer\\Desktop\\FYP\\s25\\SetDsub21N.mat','setname','Sub25','srate',128,'pnts',128,'xmin',0,'chanlocs','C:\\Users\\ranveer\\Downloads\\Mahsa.locs');
EEG = eeg_checkset( EEG );

% AVERAGE RE-REFERENCE
EEG = pop_reref( EEG, []);
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );

% ICA
EEG = pop_runica(EEG, 'extended',1,'interupt','on');% ICA
EEG = eeg_checkset( EEG );
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = eeg_checkset( EEG );
% EEG = pop_saveset( EEG, 'filename','Sub4_aa.set','filepath','C:\\Users\\ranveer\\Desktop\\');
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);

% REJECT ICA COMPONENTS
EEG = pop_subcomp( EEG, [1  2  3], 0);
EEG = eeg_checkset( EEG );

% SAVE DATASET
EEG = pop_saveset( EEG, 'filename','Sub16_CICARem.set','filepath','C:\\Users\\ranveer\\Desktop\\');
EEG = eeg_checkset( EEG );

% 2D COMPONENT MAPS
pop_topoplot(EEG,0, [1:29] ,'topoplot',[5 6] ,0,'electrodes','on'); 
EEG = eeg_checkset( EEG );

% MOST CONTRIBUTING COMPONENTS
 pop_envtopo(EEG, [0  992.1875] ,'limcontrib',[0 992.1875],'compsplot',[7],'title', 'Largest ERP components','electrodes','off');

% dipole plot- below 50% residal value
EEG = pop_dipfit_settings( EEG, 'hdmfile','C:\\Users\\ranveer\\Desktop\\FYP\\eeglab2022.1\\plugins\\dipfit5.1\\standard_BEM\\standard_vol_SCCN.mat','coordformat','MNI','mrifile','C:\\Users\\ranveer\\Desktop\\FYP\\eeglab2022.1\\plugins\\dipfit5.1\\standard_BEM\\standard_mri.mat','chanfile','C:\\Users\\ranveer\\Desktop\\FYP\\eeglab2022.1\\plugins\\dipfit5.1\\standard_BEM\\elec\\standard_1005.elc','chansel',[1:32] );
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = pop_dipfit_gridsearch(EEG, [1:29] ,[-85:17:85] ,[-85:17:85] ,[0:17:85] ,0.5);
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
 pop_dipplot( EEG,[] ,'rvrange',[0 50] ,'mri','C:\\Users\\ranveer\\Desktop\\FYP\\eeglab2022.1\\plugins\\dipfit5.1\\standard_BEM\\standard_mri.mat','summary','on','num','on','drawedges','on','cornermri','on','axistight','on','projimg','on','projlines','on','pointout','on','normlen','on');

% dipoles on component maps
figure;pop_topoplot(EEG,0, [1:29] ,'dipole on component maps',[] ,1,'electrodes','on');

eeglab redraw;