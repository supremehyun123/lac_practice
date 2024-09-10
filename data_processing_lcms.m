
clear all
close all

% Specify the file path - Change the directory to your file location
filename = '/Users/hyunyoon/OneDrive - Cornell University/Lab_Berkeley/Data_file/LC-MS/20240907_HY.csv';

% Read the CSV file into a table
data = readtable(filename, 'HeaderLines', 0);


% Access variable names of the table array
variableNames = data.Properties.VariableNames;

% Specify the unwanted word to remove from variable names
unwantedWord = 'Results';  % Word to remove

% Loop through each variable name and remove the unwanted word
for i = 1:length(variableNames)
    variableNames{i} = strrep(variableNames{i}, unwantedWord, '');
end

% Update variable names in the table array
data.Properties.VariableNames = variableNames;




% Access variable names of the table array
variableNames = data.Properties.VariableNames;

% Specify the number of positions to shift the variable names to the right
numPositions = 1;  % Shift by one position to the right

% Shift variable names to the right
shiftedVariableNames = [variableNames(end - numPositions + 1:end), variableNames(1:end - numPositions)];

% Change the name of the first variable to 'Sample'
shiftedVariableNames{2} = 'Var1';
shiftedVariableNames{1} = 'Sample';


% Update variable names in the table array
data.Properties.VariableNames = shiftedVariableNames;






% Define column indices to extract (1st column and every 7th column thereafter)
columnIndices = [1, 7:7:width(data)];

% Extract desired columns from the table
extractedTable = data(:, columnIndices);

% Export as Excel file - This will save the processed table to your favorite folder
excelFile = '/Users/hyunyoon/OneDrive - Cornell University/Lab_Berkeley/Data_file/LC-MS/processed/20240907_HY_processed.xlsx';
writetable(extractedTable, excelFile, 'Sheet', 'Sheet1');



% LAC group
% Hi
% LAC group