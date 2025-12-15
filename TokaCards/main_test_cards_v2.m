clear; clc;

%%

games = ["Forbidden";"Mimic";"DrawIt"];

%% Configuration

List{1} = "Forbidden";
List{2} = "Mimic";
List{3} = "DrawIt";

Template{1} = "Template_Forbidden.png";
Template{2} = "Template_Mimic.png";
Template{3} = "Template_DrawIt.png";

Fontname = "Times";

%%

WordLists.Forbidden = importfile("Word Lists.xlsx",List{1});
WordLists.Mimic = importfile("Word Lists.xlsx",List{2});
WordLists.DrawIt = importfile("Word Lists.xlsx",List{3});

T.Forbidden = imread(Template{1});
T.Mimic = imread(Template{2});
T.DrawIt = imread(Template{3});

%% Forbidden Words

if sum(games == "Forbidden")==1

for i = 1 : size(WordLists.Forbidden,1) 

word = WordLists.Forbidden.Word(i);

description = WordLists.Forbidden.Description(i);

F.f1 = WordLists.Forbidden.Forbidden1(i);
F.f2 = WordLists.Forbidden.Forbidden2(i);
F.f3 = WordLists.Forbidden.Forbidden3(i);
F.f4 = WordLists.Forbidden.Forbidden4(i);
F.f5 = WordLists.Forbidden.Forbidden5(i);

figure(1)
clf
imshow(T.Forbidden)
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

    text(0.5, 0.5-(j-1)*0.07, F.("f"+j), ...
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

end

%% MIMIC

if sum(games == "Mimic")==1

for i = 1 : size(WordLists.Mimic,1) 

word = WordLists.Mimic.Word(i);

description = WordLists.Mimic.Description(i);

figure(1)
clf
imshow(T.Mimic)
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

% for j = 1 : 5
% 
%     text(0.5, 0.5-(j-1)*0.07, F.("f"+j), ...
%         'Units', 'normalized', ...   % use normalized coordinates
%         'HorizontalAlignment', 'center', ...
%         'VerticalAlignment', 'middle', ...
%         'Color', 'white', ...
%         'FontSize', 18, ...
%         'FontWeight', 'bold',...
%         "FontName",Fontname);
% 
% end

input(' ')

end

end

%% DrawIt

if sum(games == "DrawIt")==1

for i = 1 : size(WordLists.DrawIt,1) 

word = WordLists.DrawIt.Word(i);

description = WordLists.DrawIt.Description(i);

figure(1)
clf
imshow(T.DrawIt)
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

% for j = 1 : 5
% 
%     text(0.5, 0.5-(j-1)*0.07, F.("f"+j), ...
%         'Units', 'normalized', ...   % use normalized coordinates
%         'HorizontalAlignment', 'center', ...
%         'VerticalAlignment', 'middle', ...
%         'Color', 'white', ...
%         'FontSize', 18, ...
%         'FontWeight', 'bold',...
%         "FontName",Fontname);
% 
% end

input(' ')

end

end