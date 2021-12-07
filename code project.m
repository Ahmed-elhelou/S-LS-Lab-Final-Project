classdef project < matlab.apps.AppBase

    %% Properties that correspond to app components%%
    properties (Access = public)
        UIFigure                      matlab.ui.Figure
        UIAxes                        matlab.ui.control.UIAxes
        UIAxes2                       matlab.ui.control.UIAxes
        yourfunctionplotLabel         matlab.ui.control.Label
        ScaledfunctionLabel           matlab.ui.control.Label
        writeyourfunctionhereftLabel  matlab.ui.control.Label
        ftEditFieldLabel              matlab.ui.control.Label
        ftEditField                   matlab.ui.control.EditField
        ChangetheseparametettomaketimescaleandshifLabel  matlab.ui.control.Label
        ParameterofcfatbButtonGroup   matlab.ui.container.ButtonGroup
        aLabel                        matlab.ui.control.Label
        bLabel                        matlab.ui.control.Label
        cLabel                        matlab.ui.control.Label
        tiincjLabel                   matlab.ui.control.Label
        EditField                     matlab.ui.control.NumericEditField
        EditField_2                   matlab.ui.control.NumericEditField
        EditField_3                   matlab.ui.control.NumericEditField
        EditField_4                   matlab.ui.control.NumericEditField
        PlotButton                    matlab.ui.control.Button
        Presstoconvolveftwithrectt2Label  matlab.ui.control.Label
        ConvolutionButton             matlab.ui.control.Button
    end

    methods (Access = private)

        % Value changed function: EditField_2
        function EditField_2ValueChanged(app, event)
            value = app.EditField_2.Value;
            
        end

        % Value changed function: EditField
        function EditFieldValueChanged(app, event)
            value = app.EditField.Value;
            
        end

        % Value changed function: EditField_3
        function EditField_3ValueChanged(app, event)
            value = app.EditField_3.Value;
            
        end

        % Value changed function: EditField_4
        function EditField_4ValueChanged(app, event)
            value = app.EditField_4.Value;
            
        end

        % Button pushed function: PlotButton
        function PlotButtonPushed(app, event)
            
        end

        % Button pushed function: ConvolutionButton
        function ConvolutionButtonPushed(app, event)
            
        end

        % Value changed function: ftEditField
        function ftEditFieldValueChanged(app, event)
            value = app.ftEditField.Value;
            
        end
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure
            app.UIFigure = uifigure;
            app.UIFigure.Position = [100 100 909 1025];
            app.UIFigure.Name = 'UI Figure';

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            title(app.UIAxes, 'Title')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            app.UIAxes.Position = [41 785 300 185];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.UIFigure);
            title(app.UIAxes2, 'Title')
            xlabel(app.UIAxes2, 'X')
            ylabel(app.UIAxes2, 'Y')
            app.UIAxes2.Position = [41 546 300 185];

            % Create yourfunctionplotLabel
            app.yourfunctionplotLabel = uilabel(app.UIFigure);
            app.yourfunctionplotLabel.FontSize = 20;
            app.yourfunctionplotLabel.FontWeight = 'bold';
            app.yourfunctionplotLabel.FontColor = [0 0.451 0.7412];
            app.yourfunctionplotLabel.Position = [110 969 181 26];
            app.yourfunctionplotLabel.Text = 'your function plot ';

            % Create ScaledfunctionLabel
            app.ScaledfunctionLabel = uilabel(app.UIFigure);
            app.ScaledfunctionLabel.FontSize = 20;
            app.ScaledfunctionLabel.FontWeight = 'bold';
            app.ScaledfunctionLabel.FontColor = [0 0.451 0.7412];
            app.ScaledfunctionLabel.Position = [121 746 160 26];
            app.ScaledfunctionLabel.Text = 'Scaled function ';

            % Create writeyourfunctionhereftLabel
            app.writeyourfunctionhereftLabel = uilabel(app.UIFigure);
            app.writeyourfunctionhereftLabel.FontSize = 20;
            app.writeyourfunctionhereftLabel.FontWeight = 'bold';
            app.writeyourfunctionhereftLabel.FontColor = [0 0.451 0.7412];
            app.writeyourfunctionhereftLabel.Position = [508 964 268 26];
            app.writeyourfunctionhereftLabel.Text = 'write your function here f(t)';

            % Create ftEditFieldLabel
            app.ftEditFieldLabel = uilabel(app.UIFigure);
            app.ftEditFieldLabel.HorizontalAlignment = 'right';
            app.ftEditFieldLabel.FontSize = 20;
            app.ftEditFieldLabel.FontWeight = 'bold';
            app.ftEditFieldLabel.FontColor = [0 0.451 0.7412];
            app.ftEditFieldLabel.Position = [548 891 32 26];
            app.ftEditFieldLabel.Text = 'f(t)';

            % Create ftEditField
            app.ftEditField = uieditfield(app.UIFigure, 'text');
            app.ftEditField.ValueChangedFcn = createCallbackFcn(app, @ftEditFieldValueChanged, true);
            app.ftEditField.Position = [595 891 100 29];

            % Create ChangetheseparametettomaketimescaleandshifLabel
            app.ChangetheseparametettomaketimescaleandshifLabel = uilabel(app.UIFigure);
            app.ChangetheseparametettomaketimescaleandshifLabel.FontSize = 14;
            app.ChangetheseparametettomaketimescaleandshifLabel.FontWeight = 'bold';
            app.ChangetheseparametettomaketimescaleandshifLabel.FontColor = [0 0.451 0.7412];
            app.ChangetheseparametettomaketimescaleandshifLabel.Position = [482 827 367 26];
            app.ChangetheseparametettomaketimescaleandshifLabel.Text = 'Change these parametet to make time scale and shif';

            % Create ParameterofcfatbButtonGroup
            app.ParameterofcfatbButtonGroup = uibuttongroup(app.UIFigure);
            app.ParameterofcfatbButtonGroup.Title = 'Parameter of cf(at+b)';
            app.ParameterofcfatbButtonGroup.Position = [535 598 232 188];

            % Create aLabel
            app.aLabel = uilabel(app.ParameterofcfatbButtonGroup);
            app.aLabel.FontSize = 16;
            app.aLabel.FontWeight = 'bold';
            app.aLabel.Position = [34 129 25 20];
            app.aLabel.Text = 'a';

            % Create bLabel
            app.bLabel = uilabel(app.ParameterofcfatbButtonGroup);
            app.bLabel.FontSize = 16;
            app.bLabel.FontWeight = 'bold';
            app.bLabel.Position = [135 129 25 20];
            app.bLabel.Text = 'b';

            % Create cLabel
            app.cLabel = uilabel(app.ParameterofcfatbButtonGroup);
            app.cLabel.FontSize = 16;
            app.cLabel.FontWeight = 'bold';
            app.cLabel.Position = [34 63 25 20];
            app.cLabel.Text = 'c';

            % Create tiincjLabel
            app.tiincjLabel = uilabel(app.ParameterofcfatbButtonGroup);
            app.tiincjLabel.FontSize = 16;
            app.tiincjLabel.FontWeight = 'bold';
            app.tiincjLabel.Position = [135 63 63 20];
            app.tiincjLabel.Text = 't=i:inc:j';

            % Create EditField
            app.EditField = uieditfield(app.ParameterofcfatbButtonGroup, 'numeric');
            app.EditField.ValueChangedFcn = createCallbackFcn(app, @EditFieldValueChanged, true);
            app.EditField.Position = [135 95 31 22];

            % Create EditField_2
            app.EditField_2 = uieditfield(app.ParameterofcfatbButtonGroup, 'numeric');
            app.EditField_2.ValueChangedFcn = createCallbackFcn(app, @EditField_2ValueChanged, true);
            app.EditField_2.Position = [34 95 33 22];

            % Create EditField_3
            app.EditField_3 = uieditfield(app.ParameterofcfatbButtonGroup, 'numeric');
            app.EditField_3.ValueChangedFcn = createCallbackFcn(app, @EditField_3ValueChanged, true);
            app.EditField_3.Position = [34 29 33 22];

            % Create EditField_4
            app.EditField_4 = uieditfield(app.ParameterofcfatbButtonGroup, 'numeric');
            app.EditField_4.ValueChangedFcn = createCallbackFcn(app, @EditField_4ValueChanged, true);
            app.EditField_4.Position = [135 29 31 22];

            % Create PlotButton
            app.PlotButton = uibutton(app.UIFigure, 'push');
            app.PlotButton.ButtonPushedFcn = createCallbackFcn(app, @PlotButtonPushed, true);
            app.PlotButton.FontColor = [0 0.451 0.7412];
            app.PlotButton.Position = [601 546 100 22];
            app.PlotButton.Text = 'Plot';

            % Create Presstoconvolveftwithrectt2Label
            app.Presstoconvolveftwithrectt2Label = uilabel(app.UIFigure);
            app.Presstoconvolveftwithrectt2Label.FontSize = 14;
            app.Presstoconvolveftwithrectt2Label.FontWeight = 'bold';
            app.Presstoconvolveftwithrectt2Label.FontColor = [0 0.451 0.7412];
            app.Presstoconvolveftwithrectt2Label.Position = [532 504 244 18];
            app.Presstoconvolveftwithrectt2Label.Text = 'Press to convolve f(t) with rect(t/2)';

            % Create ConvolutionButton
            app.ConvolutionButton = uibutton(app.UIFigure, 'push');
            app.ConvolutionButton.ButtonPushedFcn = createCallbackFcn(app, @ConvolutionButtonPushed, true);
            app.ConvolutionButton.FontSize = 16;
            app.ConvolutionButton.FontWeight = 'bold';
            app.ConvolutionButton.Position = [600 442 109 27];
            app.ConvolutionButton.Text = 'Convolution';
        end
    end

    methods (Access = public)

        % Construct app
        function app = project

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end