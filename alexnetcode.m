DatasetPath = 'C:\Users\ranveer\Desktop\FYP\training data\subject55';

images = imageDatastore(DatasetPath,'IncludeSubfolders',true,'LabelSource','foldernames');

%Distributing Images in the set of Training and Testing

numTrainFiles = 2400;

[TrainImages, TestImages] = splitEachLabel(images, numTrainFiles, 'randomize');

net = alexnet; %Importing pretrained Alexnet (Requires support package)
layersTransfer = net.Layers(1:end-3); %Preserving all layers except last three

numClasses =4; %Number of output classes: 

%Defining layers of Alexnet

layers= [layersTransfer

fullyConnectedLayer(numClasses, 'WeightLearnRateFactor', 20, 'BiasLearnRateFactor',20)

softmaxLayer

classificationLayer];

%Training options

options = trainingOptions('sgdm', ...
 'MiniBatchSize', 20, ...
 'MaxEpochs', 2, ...
'InitialLearnRate',1e-4, ...
'Shuffle', 'every-epoch',...
'ValidationData', TestImages, ...
'ValidationFrequency',10, ...
'Verbose', false, ...
'Plots', 'training-progress');

%Training the AlexNet

netTransfer = trainNetwork(TrainImages, layers, options);

%Classifying Images

YPred = classify(netTransfer, TestImages);

YValidation = TestImages.Labels;

accuracy = sum(YPred == YValidation)/numel(YValidation);

%Plotting Confusion Matrix

plotconfusion (YValidation,YPred);