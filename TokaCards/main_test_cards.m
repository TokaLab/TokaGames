clear; clc;

%% Configuration

List = "List 1";
Template = "Template_01.png";

Fontname = "Times";

%%

WordLists = importfile("Word Lists.xlsx",List);
I = imread(Template);


%% Create Images

for i = 1 : size(WordLists,1) 

word = WordLists.Word(i);

description = WordLists.Description(i);

F.f1 = WordLists.Forbidden1(i);
F.f2 = WordLists.Forbidden2(i);
F.f3 = WordLists.Forbidden3(i);
F.f4 = WordLists.Forbidden4(i);
F.f5 = WordLists.Forbidden5(i);

figure(1)
clf
imshow(I)
hold on
% main word
text(0.5, 0.9, word, ...
    'Units', 'normalized', ...   % use normalized coordinates
    'HorizontalAlignment', 'center', ...
    'VerticalAlignment', 'middle', ...
    'Color', 'white', ...
    'FontSize', 20, ...
    'FontWeight', 'bold',...
    "FontName",Fontname);

% description
% desc = "Fusion happens when nuclei combine and release energy";
wrapped = textwrap({description}, 50);

annotation('textbox', [0.12 0.65 0.8 0.1], ... % [x y width height] normalized
    'String', wrapped, ...
    'HorizontalAlignment', 'center', ...
    'VerticalAlignment', 'middle', ...
    'LineStyle','none', ...
    "Color","white",...
    'FontSize',10,...
    "FontName",Fontname);

for j = 1 : 5

    text(0.5, 0.6-(j-1)*0.1, F.("f"+j), ...
        'Units', 'normalized', ...   % use normalized coordinates
        'HorizontalAlignment', 'center', ...
        'VerticalAlignment', 'middle', ...
        'Color', 'white', ...
        'FontSize', 18, ...
        'FontWeight', 'bold',...
        "FontName",Fontname);

end

input(' ')

end