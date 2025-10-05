classdef APPDESIGN_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        DatePicker                      matlab.ui.control.DatePicker
        DatePickerLabel                 matlab.ui.control.Label
        TabGroup                        matlab.ui.container.TabGroup
        TOMAYPRUEBASTab                 matlab.ui.container.Tab
        TabGroup2                       matlab.ui.container.TabGroup
        SINTETICASTab                   matlab.ui.container.Tab
        LoadAudioFileLoadedSignalsPanel  matlab.ui.container.Panel
        LoadAudioFileLoadedSignalsGrid  matlab.ui.container.GridLayout
        LoadAudioFileLoadedSignalsTable  matlab.ui.control.Table
        LoadAudioFileLoadedSignalsButtonsGrid  matlab.ui.container.GridLayout
        BUSCARButton                    matlab.ui.control.Button
        LoadAudioFileRemoveSignalButton  matlab.ui.control.Button
        LoadAudioFileLoadSignalButton   matlab.ui.control.Button
        CARGARButton                    matlab.ui.control.Button
        SINTETICASDropDown              matlab.ui.control.DropDown
        SINTETICASDropDownLabel         matlab.ui.control.Label
        SyntheticSignalPreviewAxes      matlab.ui.control.UIAxes
        ADQUISICIONTab                  matlab.ui.container.Tab
        LoadAudioFileLoadedSignalsPanel_2  matlab.ui.container.Panel
        LoadAudioFileLoadedSignalsGrid_2  matlab.ui.container.GridLayout
        LoadAudioFileLoadedSignalsTable_2  matlab.ui.control.Table
        LoadAudioFileLoadedSignalsButtonsGrid_2  matlab.ui.container.GridLayout
        BUSCARButton_2                  matlab.ui.control.Button
        LoadAudioFileRemoveSignalButton_2  matlab.ui.control.Button
        LoadAudioFileLoadSignalButton_2  matlab.ui.control.Button
        ADQUIRIRButton                  matlab.ui.control.Button
        SEALESEMGLabel                  matlab.ui.control.Label
        SyntheticSignalPreviewAxes_2    matlab.ui.control.UIAxes
        PROCESAMIENTOTab                matlab.ui.container.Tab
        TabGroup3                       matlab.ui.container.TabGroup
        NORMALIZACIONYPROCESAMIENTOINDIVIDUALTab  matlab.ui.container.Tab
        APLICARButton_2                 matlab.ui.control.Button
        PROCESAMIENTODropDown           matlab.ui.control.DropDown
        PROCESAMIENTODropDownLabel      matlab.ui.control.Label
        LoadAudioFileLoadedSignalsPanel_3  matlab.ui.container.Panel
        LoadAudioFileLoadedSignalsGrid_3  matlab.ui.container.GridLayout
        LoadAudioFileLoadedSignalsTable_3  matlab.ui.control.Table
        LoadAudioFileLoadedSignalsButtonsGrid_3  matlab.ui.container.GridLayout
        BUSCARButton_3                  matlab.ui.control.Button
        LoadAudioFileRemoveSignalButton_3  matlab.ui.control.Button
        LoadAudioFileLoadSignalButton_3  matlab.ui.control.Button
        APLICARButton                   matlab.ui.control.Button
        NORMALIZACIONDropDown           matlab.ui.control.DropDown
        NORMALIZACIONDropDownLabel      matlab.ui.control.Label
        SyntheticSignalPreviewAxes_4    matlab.ui.control.UIAxes
        SyntheticSignalPreviewAxes_3    matlab.ui.control.UIAxes
        PROCESAMIENTODEDOSSEALESTab     matlab.ui.container.Tab
        LoadAudioFileLoadedSignalsPanel_4  matlab.ui.container.Panel
        LoadAudioFileLoadedSignalsGrid_4  matlab.ui.container.GridLayout
        LoadAudioFileLoadedSignalsTable_4  matlab.ui.control.Table
        LoadAudioFileLoadedSignalsButtonsGrid_4  matlab.ui.container.GridLayout
        BUSCARButton_4                  matlab.ui.control.Button
        LoadAudioFileRemoveSignalButton_4  matlab.ui.control.Button
        LoadAudioFileLoadSignalButton_4  matlab.ui.control.Button
        EJECUTARButton                  matlab.ui.control.Button
        OPERACIONDropDown               matlab.ui.control.DropDown
        OPERACIONDropDownLabel          matlab.ui.control.Label
        SyntheticSignalPreviewAxes_6    matlab.ui.control.UIAxes
        SyntheticSignalPreviewAxes_5    matlab.ui.control.UIAxes
        FILTRADOTab                     matlab.ui.container.Tab
        PBBPBRPBButton                  matlab.ui.control.Button
        LoadAudioFileLoadedSignalsPanel_5  matlab.ui.container.Panel
        LoadAudioFileLoadedSignalsGrid_5  matlab.ui.container.GridLayout
        LoadAudioFileLoadedSignalsTable_5  matlab.ui.control.Table
        LoadAudioFileLoadedSignalsButtonsGrid_5  matlab.ui.container.GridLayout
        BUSCARButton_5                  matlab.ui.control.Button
        LoadAudioFileRemoveSignalButton_5  matlab.ui.control.Button
        LoadAudioFileLoadSignalButton_5  matlab.ui.control.Button
        ECUACIONDEDIFERENCIAIIRButton   matlab.ui.control.Button
        FILTROLabel                     matlab.ui.control.Label
        CONVOLUCIONFIRButton            matlab.ui.control.Button
        SyntheticSignalPreviewAxes_9    matlab.ui.control.UIAxes
        SyntheticSignalPreviewAxes_8    matlab.ui.control.UIAxes
        SyntheticSignalPreviewAxes_7    matlab.ui.control.UIAxes
        TRANSFORMADASTab                matlab.ui.container.Tab
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: CONVOLUCIONFIRButton
        function CONVOLUCIONFIRButtonPushed(app, event)
            
        end

        % Button pushed function: LoadAudioFileLoadSignalButton_5
        function LoadAudioFileLoadSignalButton_5Pushed(app, event)
            
        end

        % Button pushed function: LoadAudioFileRemoveSignalButton_5
        function LoadAudioFileRemoveSignalButton_5Pushed(app, event)
            % button filtro deberia aplicar el filtro convolucion 
              % Button pushed function: FilteringByConvolutionButton
              % Check if a signal is loaded
            if isempty(app.FilteringInputSignal)
                uialert(app.UIFigure, 'Please load a signal first.', 'No Signal');
                return;
            end

            % Prompt for filter method
            filterChoice = uiconfirm(app.UIFigure, 'Select filter type:', 'Choose Filter', ...
                'Options', {'Load .fcf/.txt File', 'Enter Coefficients Manually'}, ...
                'DefaultOption', 'Load .fcf/.txt File', 'CancelOption', 'Enter Coefficients Manually');

            % Load or input filter
            if strcmp(filterChoice, 'Load .fcf/.txt File')
                [filterFile, filterPath] = uigetfile({'.fcf;.txt', 'Filter Coefficients (*.fcf, *.txt)'}, ...
                    'Select Filter Coefficients File');
                if isequal(filterFile, 0)
                    return;
                end
                try
                    filterData = dlmread(fullfile(filterPath, filterFile));
                    if size(filterData, 1) > 1
                        filterData = filterData';
                    end
                catch ME
                    uialert(app.UIFigure, ['Error loading filter file: ' ME.message], 'File Error');
                    return;
                end
            else
                prompt = {'Enter filter coefficients (space or comma separated):'};
                dlgTitle = 'Manual Filter Input';
                defaultCoeffs = '0.25 0.5 0.25';
                answer = inputdlg(prompt, dlgTitle, 1, {defaultCoeffs});
                if isempty(answer)
                    return;
                end
                try
                    filterData = str2num(answer{1}); %#ok<ST2NM>
                    if isempty(filterData)
                        uialert(app.UIFigure, 'Invalid filter coefficients.', 'Error');
                        return;
                    end
                catch
                    uialert(app.UIFigure, 'Invalid coefficient format.', 'Error');
                    return;
                end
            end

            % Plot filter
            cla(app.FilteringFilterPreviewAxes);
            stem(app.FilteringFilterPreviewAxes, 0:length(filterData)-1, filterData, 'filled');
            title(app.FilteringFilterPreviewAxes, 'Filter Coefficients');
            xlabel(app.FilteringFilterPreviewAxes, 'n');
            ylabel(app.FilteringFilterPreviewAxes, 'h(n)');
            grid(app.FilteringFilterPreviewAxes, 'on');

            % Prompt for block size
            answer = inputdlg({'Enter block size for convolution:'}, 'Block Size', 1, {'3'});
            if isempty(answer)
                return;
            end
            Lxb = str2double(answer{1});
            if isnan(Lxb) || Lxb < 1
                uialert(app.UIFigure, 'Invalid block size.', 'Error');
                return;
            end

            % Signal and filter setup
            x = app.FilteringInputSignal(:)';  % ensure row vector
            h = filterData(:)';                % ensure row vector
            Fs = app.FilteringFs;
            Lx = length(x);
            Lh = length(h);
            Ly = Lx + Lh - 1;
            y = zeros(1, Ly);

            % Block convolution
            Lyb = Lxb + Lh - 1;
            Nb = floor(Lx / Lxb);
            y(1:Lyb) = conv(h, x(1:Lxb));

            for k = 2:Nb
                xb = x((k - 1) * Lxb + 1 : k * Lxb);
                yb = conv(h, xb);
                y((k - 1) * Lxb + 1 : (k - 1) * Lxb + Lyb) = ...
                    y((k - 1) * Lxb + 1 : (k - 1) * Lxb + Lyb) + yb;
            end

            Lxr = mod(Lx, Lxb);
            if Lxr ~= 0
                xbr = x(Nb * Lxb + 1 : end);
                ybr = conv(h, xbr);
                y(Nb * Lxb + 1 : end) = y(Nb * Lxb + 1 : end) + ybr;
            end

            % Plot filtered signal
            t = (0:Ly - 1) / Fs;
            cla(app.FilteringOutputSignalPreviewAxes);
            plot(app.FilteringOutputSignalPreviewAxes, t, y, 'b', 'LineWidth', 1.2);
            title(app.FilteringOutputSignalPreviewAxes, 'Filtered Signal (Block Convolution)');
            xlabel(app.FilteringOutputSignalPreviewAxes, 'Time (s)');
            ylabel(app.FilteringOutputSignalPreviewAxes, 'Amplitude');
            grid(app.FilteringOutputSignalPreviewAxes, 'on');

            % Determine base name
            if ~isempty(app.FilteringInputSignalFileName)
                signalFile = char(app.FilteringInputSignalFileName);
                [~, name, ~] = fileparts(signalFile);
                baseName = [name '_filtered'];
            else
                baseName = 'filtered_signal';
            end

            % Generate unique filename
            counter = 1;
            outputFileName = [baseName '.mat'];
            outputFilePath = fullfile(app.DefaultSavePath, outputFileName);

            % Check for existing files and increment counter
            while exist(outputFilePath, 'file')
                outputFileName = [baseName '_' num2str(counter) '.mat'];
                outputFilePath = fullfile(app.DefaultSavePath, outputFileName);
                counter = counter + 1;
            end

            % Prepare variables for saving
            x_filtered = y / max(abs(y));       % Normalized output signal
            x = x_filtered(:);                  % Ensure column vector
            n = (0:length(x)-1)';               % Sample indices (column vector)
            Fs = app.FilteringFs;              % Sampling frequency

            % Save with standard variable names
            save(outputFilePath, 'x', 'n', 'Fs');


            % Get all tables in the app that should contain the signal
            tableNames = {
                'MicrophoneLoadedSignalsTable'
                'SyntheticLoadedSignalsTable'
                'LoadAudioFileLoadedSignalsTable'
                'HardwareAcquisitionLoadedSignalsTable'
                'PreprocessingLoadedSignalsTable'
                'SingleSignalProcessingLoadedSignalsTable'
                'MultipleSignalLoadedSignalsTable'
                'FourierTransformLoadedSignalsTable'
                'CosineTransformLoadedSignalsTable'
                'WaveletTransformLoadedSignalsTable'
                'FilteringLoadedSignalsTable'
                };

            % Add to all tables
            newRow = {outputFileName, ['Filtered (' num2str(length(h)) '-tap)'], Fs};
            for i = 1:length(tableNames)
                if isprop(app, tableNames{i})
                    currentTable = app.(tableNames{i});
                    if isempty(currentTable.Data)
                        currentTable.Data = newRow;
                    else
                        currentTable.Data = [currentTable.Data; newRow];
                    end
                end
            end

            % Store filter for reference
            app.CurrentFilterCoefficients = h;

            % Keep main window focused
            figure(app.UIFigure);
        end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 707 583];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 1 707 583];

            % Create TOMAYPRUEBASTab
            app.TOMAYPRUEBASTab = uitab(app.TabGroup);
            app.TOMAYPRUEBASTab.Title = 'TOMA Y PRUEBAS';

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.TOMAYPRUEBASTab);
            app.TabGroup2.Position = [1 1 705 558];

            % Create SINTETICASTab
            app.SINTETICASTab = uitab(app.TabGroup2);
            app.SINTETICASTab.Title = ' SINTETICAS';

            % Create SyntheticSignalPreviewAxes
            app.SyntheticSignalPreviewAxes = uiaxes(app.SINTETICASTab);
            title(app.SyntheticSignalPreviewAxes, 'GRAFICADOR DE SEÑALES')
            xlabel(app.SyntheticSignalPreviewAxes, 'TIEMPO')
            ylabel(app.SyntheticSignalPreviewAxes, 'AMPLITUD')
            zlabel(app.SyntheticSignalPreviewAxes, 'Z')
            app.SyntheticSignalPreviewAxes.FontName = 'Segoe UI';
            app.SyntheticSignalPreviewAxes.XGrid = 'on';
            app.SyntheticSignalPreviewAxes.YGrid = 'on';
            app.SyntheticSignalPreviewAxes.Position = [180 10 513 497];

            % Create SINTETICASDropDownLabel
            app.SINTETICASDropDownLabel = uilabel(app.SINTETICASTab);
            app.SINTETICASDropDownLabel.BackgroundColor = [0.651 0.651 0.651];
            app.SINTETICASDropDownLabel.HorizontalAlignment = 'right';
            app.SINTETICASDropDownLabel.Position = [1 512 73 22];
            app.SINTETICASDropDownLabel.Text = 'SINTETICAS';

            % Create SINTETICASDropDown
            app.SINTETICASDropDown = uidropdown(app.SINTETICASTab);
            app.SINTETICASDropDown.Items = {'SENO ', 'CHIRP'};
            app.SINTETICASDropDown.Position = [81 512 100 22];
            app.SINTETICASDropDown.Value = 'SENO ';

            % Create CARGARButton
            app.CARGARButton = uibutton(app.SINTETICASTab, 'push');
            app.CARGARButton.Position = [180 511 65 23];
            app.CARGARButton.Text = 'CARGAR';

            % Create LoadAudioFileLoadedSignalsPanel
            app.LoadAudioFileLoadedSignalsPanel = uipanel(app.SINTETICASTab);
            app.LoadAudioFileLoadedSignalsPanel.Title = 'HISTORIAL DE SEÑALES';
            app.LoadAudioFileLoadedSignalsPanel.BackgroundColor = [0.851 0.851 0.851];
            app.LoadAudioFileLoadedSignalsPanel.FontName = 'Segoe UI';
            app.LoadAudioFileLoadedSignalsPanel.FontSize = 14;
            app.LoadAudioFileLoadedSignalsPanel.Position = [1 -1 180 508];

            % Create LoadAudioFileLoadedSignalsGrid
            app.LoadAudioFileLoadedSignalsGrid = uigridlayout(app.LoadAudioFileLoadedSignalsPanel);
            app.LoadAudioFileLoadedSignalsGrid.ColumnWidth = {'1x'};
            app.LoadAudioFileLoadedSignalsGrid.RowHeight = {'1x', 'fit'};
            app.LoadAudioFileLoadedSignalsGrid.BackgroundColor = [1 1 1];

            % Create LoadAudioFileLoadedSignalsButtonsGrid
            app.LoadAudioFileLoadedSignalsButtonsGrid = uigridlayout(app.LoadAudioFileLoadedSignalsGrid);
            app.LoadAudioFileLoadedSignalsButtonsGrid.ColumnWidth = {'1x'};
            app.LoadAudioFileLoadedSignalsButtonsGrid.RowHeight = {'1x', '1x', '1x'};
            app.LoadAudioFileLoadedSignalsButtonsGrid.Layout.Row = 2;
            app.LoadAudioFileLoadedSignalsButtonsGrid.Layout.Column = 1;
            app.LoadAudioFileLoadedSignalsButtonsGrid.BackgroundColor = [1 1 1];

            % Create LoadAudioFileLoadSignalButton
            app.LoadAudioFileLoadSignalButton = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid, 'push');
            app.LoadAudioFileLoadSignalButton.BackgroundColor = [0.651 0.651 0.651];
            app.LoadAudioFileLoadSignalButton.Layout.Row = 1;
            app.LoadAudioFileLoadSignalButton.Layout.Column = 1;
            app.LoadAudioFileLoadSignalButton.Text = 'CARGAR';

            % Create LoadAudioFileRemoveSignalButton
            app.LoadAudioFileRemoveSignalButton = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid, 'push');
            app.LoadAudioFileRemoveSignalButton.BackgroundColor = [0.651 0.651 0.651];
            app.LoadAudioFileRemoveSignalButton.Layout.Row = 2;
            app.LoadAudioFileRemoveSignalButton.Layout.Column = 1;
            app.LoadAudioFileRemoveSignalButton.Text = 'LIMPIAR';

            % Create BUSCARButton
            app.BUSCARButton = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid, 'push');
            app.BUSCARButton.BackgroundColor = [0.651 0.651 0.651];
            app.BUSCARButton.Layout.Row = 3;
            app.BUSCARButton.Layout.Column = 1;
            app.BUSCARButton.Text = 'BUSCAR';

            % Create LoadAudioFileLoadedSignalsTable
            app.LoadAudioFileLoadedSignalsTable = uitable(app.LoadAudioFileLoadedSignalsGrid);
            app.LoadAudioFileLoadedSignalsTable.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.LoadAudioFileLoadedSignalsTable.ColumnName = {'ARCHIVO'; 'TIPO'};
            app.LoadAudioFileLoadedSignalsTable.ColumnWidth = {'1x', '1x', '1x'};
            app.LoadAudioFileLoadedSignalsTable.RowName = {};
            app.LoadAudioFileLoadedSignalsTable.SelectionType = 'row';
            app.LoadAudioFileLoadedSignalsTable.FontName = 'Segoe UI';
            app.LoadAudioFileLoadedSignalsTable.Layout.Row = 1;
            app.LoadAudioFileLoadedSignalsTable.Layout.Column = 1;
            app.LoadAudioFileLoadedSignalsTable.FontSize = 14;

            % Create ADQUISICIONTab
            app.ADQUISICIONTab = uitab(app.TabGroup2);
            app.ADQUISICIONTab.Title = 'ADQUISICION';

            % Create SyntheticSignalPreviewAxes_2
            app.SyntheticSignalPreviewAxes_2 = uiaxes(app.ADQUISICIONTab);
            title(app.SyntheticSignalPreviewAxes_2, 'GRAFICADOR DE SEÑALES')
            xlabel(app.SyntheticSignalPreviewAxes_2, 'TIEMPO')
            ylabel(app.SyntheticSignalPreviewAxes_2, 'AMPLITUD')
            zlabel(app.SyntheticSignalPreviewAxes_2, 'Z')
            app.SyntheticSignalPreviewAxes_2.FontName = 'Segoe UI';
            app.SyntheticSignalPreviewAxes_2.XGrid = 'on';
            app.SyntheticSignalPreviewAxes_2.YGrid = 'on';
            app.SyntheticSignalPreviewAxes_2.Position = [187 10 507 497];

            % Create SEALESEMGLabel
            app.SEALESEMGLabel = uilabel(app.ADQUISICIONTab);
            app.SEALESEMGLabel.BackgroundColor = [0.651 0.651 0.651];
            app.SEALESEMGLabel.Position = [2 511 91 22];
            app.SEALESEMGLabel.Text = 'SEÑALES EMG';

            % Create ADQUIRIRButton
            app.ADQUIRIRButton = uibutton(app.ADQUISICIONTab, 'push');
            app.ADQUIRIRButton.Position = [94 511 114 23];
            app.ADQUIRIRButton.Text = 'ADQUIRIR';

            % Create LoadAudioFileLoadedSignalsPanel_2
            app.LoadAudioFileLoadedSignalsPanel_2 = uipanel(app.ADQUISICIONTab);
            app.LoadAudioFileLoadedSignalsPanel_2.Title = 'HISTORIAL DE SEÑALES';
            app.LoadAudioFileLoadedSignalsPanel_2.BackgroundColor = [0.851 0.851 0.851];
            app.LoadAudioFileLoadedSignalsPanel_2.FontName = 'Segoe UI';
            app.LoadAudioFileLoadedSignalsPanel_2.FontSize = 14;
            app.LoadAudioFileLoadedSignalsPanel_2.Position = [6 4 176 503];

            % Create LoadAudioFileLoadedSignalsGrid_2
            app.LoadAudioFileLoadedSignalsGrid_2 = uigridlayout(app.LoadAudioFileLoadedSignalsPanel_2);
            app.LoadAudioFileLoadedSignalsGrid_2.ColumnWidth = {'1x'};
            app.LoadAudioFileLoadedSignalsGrid_2.RowHeight = {'1x', 'fit'};
            app.LoadAudioFileLoadedSignalsGrid_2.BackgroundColor = [1 1 1];

            % Create LoadAudioFileLoadedSignalsButtonsGrid_2
            app.LoadAudioFileLoadedSignalsButtonsGrid_2 = uigridlayout(app.LoadAudioFileLoadedSignalsGrid_2);
            app.LoadAudioFileLoadedSignalsButtonsGrid_2.ColumnWidth = {'1x'};
            app.LoadAudioFileLoadedSignalsButtonsGrid_2.RowHeight = {'1x', '1x', '1x'};
            app.LoadAudioFileLoadedSignalsButtonsGrid_2.Layout.Row = 2;
            app.LoadAudioFileLoadedSignalsButtonsGrid_2.Layout.Column = 1;
            app.LoadAudioFileLoadedSignalsButtonsGrid_2.BackgroundColor = [1 1 1];

            % Create LoadAudioFileLoadSignalButton_2
            app.LoadAudioFileLoadSignalButton_2 = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid_2, 'push');
            app.LoadAudioFileLoadSignalButton_2.BackgroundColor = [0.651 0.651 0.651];
            app.LoadAudioFileLoadSignalButton_2.Layout.Row = 1;
            app.LoadAudioFileLoadSignalButton_2.Layout.Column = 1;
            app.LoadAudioFileLoadSignalButton_2.Text = 'CARGAR';

            % Create LoadAudioFileRemoveSignalButton_2
            app.LoadAudioFileRemoveSignalButton_2 = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid_2, 'push');
            app.LoadAudioFileRemoveSignalButton_2.BackgroundColor = [0.651 0.651 0.651];
            app.LoadAudioFileRemoveSignalButton_2.Layout.Row = 2;
            app.LoadAudioFileRemoveSignalButton_2.Layout.Column = 1;
            app.LoadAudioFileRemoveSignalButton_2.Text = 'LIMPIAR';

            % Create BUSCARButton_2
            app.BUSCARButton_2 = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid_2, 'push');
            app.BUSCARButton_2.BackgroundColor = [0.651 0.651 0.651];
            app.BUSCARButton_2.Layout.Row = 3;
            app.BUSCARButton_2.Layout.Column = 1;
            app.BUSCARButton_2.Text = 'BUSCAR';

            % Create LoadAudioFileLoadedSignalsTable_2
            app.LoadAudioFileLoadedSignalsTable_2 = uitable(app.LoadAudioFileLoadedSignalsGrid_2);
            app.LoadAudioFileLoadedSignalsTable_2.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.LoadAudioFileLoadedSignalsTable_2.ColumnName = {'ARCHIVO'; 'TIPO'};
            app.LoadAudioFileLoadedSignalsTable_2.ColumnWidth = {'1x', '1x', '1x'};
            app.LoadAudioFileLoadedSignalsTable_2.RowName = {};
            app.LoadAudioFileLoadedSignalsTable_2.SelectionType = 'row';
            app.LoadAudioFileLoadedSignalsTable_2.FontName = 'Segoe UI';
            app.LoadAudioFileLoadedSignalsTable_2.Layout.Row = 1;
            app.LoadAudioFileLoadedSignalsTable_2.Layout.Column = 1;
            app.LoadAudioFileLoadedSignalsTable_2.FontSize = 14;

            % Create PROCESAMIENTOTab
            app.PROCESAMIENTOTab = uitab(app.TabGroup);
            app.PROCESAMIENTOTab.Title = 'PROCESAMIENTO';

            % Create TabGroup3
            app.TabGroup3 = uitabgroup(app.PROCESAMIENTOTab);
            app.TabGroup3.Position = [1 2 704 557];

            % Create NORMALIZACIONYPROCESAMIENTOINDIVIDUALTab
            app.NORMALIZACIONYPROCESAMIENTOINDIVIDUALTab = uitab(app.TabGroup3);
            app.NORMALIZACIONYPROCESAMIENTOINDIVIDUALTab.Title = 'NORMALIZACION Y PROCESAMIENTO INDIVIDUAL';

            % Create SyntheticSignalPreviewAxes_3
            app.SyntheticSignalPreviewAxes_3 = uiaxes(app.NORMALIZACIONYPROCESAMIENTOINDIVIDUALTab);
            title(app.SyntheticSignalPreviewAxes_3, 'SEÑAL DE ENTRADA')
            xlabel(app.SyntheticSignalPreviewAxes_3, 'TIEMPO')
            ylabel(app.SyntheticSignalPreviewAxes_3, 'AMPLITUD')
            zlabel(app.SyntheticSignalPreviewAxes_3, 'Z')
            app.SyntheticSignalPreviewAxes_3.FontName = 'Segoe UI';
            app.SyntheticSignalPreviewAxes_3.XGrid = 'on';
            app.SyntheticSignalPreviewAxes_3.YGrid = 'on';
            app.SyntheticSignalPreviewAxes_3.Position = [160 256 543 250];

            % Create SyntheticSignalPreviewAxes_4
            app.SyntheticSignalPreviewAxes_4 = uiaxes(app.NORMALIZACIONYPROCESAMIENTOINDIVIDUALTab);
            title(app.SyntheticSignalPreviewAxes_4, 'SEÑAL PROCESADA')
            xlabel(app.SyntheticSignalPreviewAxes_4, 'TIEMPO')
            ylabel(app.SyntheticSignalPreviewAxes_4, 'AMPLITUD')
            zlabel(app.SyntheticSignalPreviewAxes_4, 'Z')
            app.SyntheticSignalPreviewAxes_4.FontName = 'Segoe UI';
            app.SyntheticSignalPreviewAxes_4.XGrid = 'on';
            app.SyntheticSignalPreviewAxes_4.YGrid = 'on';
            app.SyntheticSignalPreviewAxes_4.Position = [159 9 544 239];

            % Create NORMALIZACIONDropDownLabel
            app.NORMALIZACIONDropDownLabel = uilabel(app.NORMALIZACIONYPROCESAMIENTOINDIVIDUALTab);
            app.NORMALIZACIONDropDownLabel.BackgroundColor = [0.651 0.651 0.651];
            app.NORMALIZACIONDropDownLabel.HorizontalAlignment = 'right';
            app.NORMALIZACIONDropDownLabel.Position = [3 510 105 22];
            app.NORMALIZACIONDropDownLabel.Text = 'NORMALIZACION';

            % Create NORMALIZACIONDropDown
            app.NORMALIZACIONDropDown = uidropdown(app.NORMALIZACIONYPROCESAMIENTOINDIVIDUALTab);
            app.NORMALIZACIONDropDown.Items = {'1 A -1', 'ESTANDAR '};
            app.NORMALIZACIONDropDown.Position = [115 510 100 22];
            app.NORMALIZACIONDropDown.Value = '1 A -1';

            % Create APLICARButton
            app.APLICARButton = uibutton(app.NORMALIZACIONYPROCESAMIENTOINDIVIDUALTab, 'push');
            app.APLICARButton.Position = [214 510 66 23];
            app.APLICARButton.Text = 'APLICAR';

            % Create LoadAudioFileLoadedSignalsPanel_3
            app.LoadAudioFileLoadedSignalsPanel_3 = uipanel(app.NORMALIZACIONYPROCESAMIENTOINDIVIDUALTab);
            app.LoadAudioFileLoadedSignalsPanel_3.Title = 'HISTORIAL DE SEÑALES';
            app.LoadAudioFileLoadedSignalsPanel_3.BackgroundColor = [0.851 0.851 0.851];
            app.LoadAudioFileLoadedSignalsPanel_3.FontName = 'Segoe UI';
            app.LoadAudioFileLoadedSignalsPanel_3.FontSize = 14;
            app.LoadAudioFileLoadedSignalsPanel_3.Position = [3 8 146 498];

            % Create LoadAudioFileLoadedSignalsGrid_3
            app.LoadAudioFileLoadedSignalsGrid_3 = uigridlayout(app.LoadAudioFileLoadedSignalsPanel_3);
            app.LoadAudioFileLoadedSignalsGrid_3.ColumnWidth = {'1x'};
            app.LoadAudioFileLoadedSignalsGrid_3.RowHeight = {'1x', 'fit'};
            app.LoadAudioFileLoadedSignalsGrid_3.BackgroundColor = [1 1 1];

            % Create LoadAudioFileLoadedSignalsButtonsGrid_3
            app.LoadAudioFileLoadedSignalsButtonsGrid_3 = uigridlayout(app.LoadAudioFileLoadedSignalsGrid_3);
            app.LoadAudioFileLoadedSignalsButtonsGrid_3.ColumnWidth = {'1x'};
            app.LoadAudioFileLoadedSignalsButtonsGrid_3.RowHeight = {'1x', '1x', '1x'};
            app.LoadAudioFileLoadedSignalsButtonsGrid_3.Layout.Row = 2;
            app.LoadAudioFileLoadedSignalsButtonsGrid_3.Layout.Column = 1;
            app.LoadAudioFileLoadedSignalsButtonsGrid_3.BackgroundColor = [1 1 1];

            % Create LoadAudioFileLoadSignalButton_3
            app.LoadAudioFileLoadSignalButton_3 = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid_3, 'push');
            app.LoadAudioFileLoadSignalButton_3.BackgroundColor = [0.651 0.651 0.651];
            app.LoadAudioFileLoadSignalButton_3.Layout.Row = 1;
            app.LoadAudioFileLoadSignalButton_3.Layout.Column = 1;
            app.LoadAudioFileLoadSignalButton_3.Text = 'CARGAR';

            % Create LoadAudioFileRemoveSignalButton_3
            app.LoadAudioFileRemoveSignalButton_3 = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid_3, 'push');
            app.LoadAudioFileRemoveSignalButton_3.BackgroundColor = [0.651 0.651 0.651];
            app.LoadAudioFileRemoveSignalButton_3.Layout.Row = 2;
            app.LoadAudioFileRemoveSignalButton_3.Layout.Column = 1;
            app.LoadAudioFileRemoveSignalButton_3.Text = 'LIMPIAR';

            % Create BUSCARButton_3
            app.BUSCARButton_3 = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid_3, 'push');
            app.BUSCARButton_3.BackgroundColor = [0.651 0.651 0.651];
            app.BUSCARButton_3.Layout.Row = 3;
            app.BUSCARButton_3.Layout.Column = 1;
            app.BUSCARButton_3.Text = 'BUSCAR';

            % Create LoadAudioFileLoadedSignalsTable_3
            app.LoadAudioFileLoadedSignalsTable_3 = uitable(app.LoadAudioFileLoadedSignalsGrid_3);
            app.LoadAudioFileLoadedSignalsTable_3.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.LoadAudioFileLoadedSignalsTable_3.ColumnName = {'ARCHIVO'; 'TIPO'};
            app.LoadAudioFileLoadedSignalsTable_3.ColumnWidth = {'1x', '1x', '1x'};
            app.LoadAudioFileLoadedSignalsTable_3.RowName = {};
            app.LoadAudioFileLoadedSignalsTable_3.SelectionType = 'row';
            app.LoadAudioFileLoadedSignalsTable_3.FontName = 'Segoe UI';
            app.LoadAudioFileLoadedSignalsTable_3.Layout.Row = 1;
            app.LoadAudioFileLoadedSignalsTable_3.Layout.Column = 1;
            app.LoadAudioFileLoadedSignalsTable_3.FontSize = 14;

            % Create PROCESAMIENTODropDownLabel
            app.PROCESAMIENTODropDownLabel = uilabel(app.NORMALIZACIONYPROCESAMIENTOINDIVIDUALTab);
            app.PROCESAMIENTODropDownLabel.BackgroundColor = [0.651 0.651 0.651];
            app.PROCESAMIENTODropDownLabel.HorizontalAlignment = 'right';
            app.PROCESAMIENTODropDownLabel.Position = [286 510 110 22];
            app.PROCESAMIENTODropDownLabel.Text = 'PROCESAMIENTO';

            % Create PROCESAMIENTODropDown
            app.PROCESAMIENTODropDown = uidropdown(app.NORMALIZACIONYPROCESAMIENTOINDIVIDUALTab);
            app.PROCESAMIENTODropDown.Items = {'SOBREMUESTREO', 'SUBMUESTREO', 'ADELANTAMIENTO', 'ATRASO', 'AJUSTE MAGNITUD'};
            app.PROCESAMIENTODropDown.Position = [403 510 143 22];
            app.PROCESAMIENTODropDown.Value = 'SOBREMUESTREO';

            % Create APLICARButton_2
            app.APLICARButton_2 = uibutton(app.NORMALIZACIONYPROCESAMIENTOINDIVIDUALTab, 'push');
            app.APLICARButton_2.Position = [545 510 66 23];
            app.APLICARButton_2.Text = 'APLICAR';

            % Create PROCESAMIENTODEDOSSEALESTab
            app.PROCESAMIENTODEDOSSEALESTab = uitab(app.TabGroup3);
            app.PROCESAMIENTODEDOSSEALESTab.Title = 'PROCESAMIENTO DE DOS SEÑALES';

            % Create SyntheticSignalPreviewAxes_5
            app.SyntheticSignalPreviewAxes_5 = uiaxes(app.PROCESAMIENTODEDOSSEALESTab);
            title(app.SyntheticSignalPreviewAxes_5, 'SEÑALES DE ENTRADA')
            xlabel(app.SyntheticSignalPreviewAxes_5, 'TIEMPO')
            ylabel(app.SyntheticSignalPreviewAxes_5, 'AMPLITUD')
            zlabel(app.SyntheticSignalPreviewAxes_5, 'Z')
            app.SyntheticSignalPreviewAxes_5.FontName = 'Segoe UI';
            app.SyntheticSignalPreviewAxes_5.XGrid = 'on';
            app.SyntheticSignalPreviewAxes_5.YGrid = 'on';
            app.SyntheticSignalPreviewAxes_5.Position = [183 256 520 250];

            % Create SyntheticSignalPreviewAxes_6
            app.SyntheticSignalPreviewAxes_6 = uiaxes(app.PROCESAMIENTODEDOSSEALESTab);
            title(app.SyntheticSignalPreviewAxes_6, 'SEÑAL DE SALIDA')
            xlabel(app.SyntheticSignalPreviewAxes_6, 'TIEMPO')
            ylabel(app.SyntheticSignalPreviewAxes_6, 'AMPLITUD')
            zlabel(app.SyntheticSignalPreviewAxes_6, 'Z')
            app.SyntheticSignalPreviewAxes_6.FontName = 'Segoe UI';
            app.SyntheticSignalPreviewAxes_6.XGrid = 'on';
            app.SyntheticSignalPreviewAxes_6.YGrid = 'on';
            app.SyntheticSignalPreviewAxes_6.Position = [187 3 516 250];

            % Create OPERACIONDropDownLabel
            app.OPERACIONDropDownLabel = uilabel(app.PROCESAMIENTODEDOSSEALESTab);
            app.OPERACIONDropDownLabel.BackgroundColor = [0.651 0.651 0.651];
            app.OPERACIONDropDownLabel.HorizontalAlignment = 'right';
            app.OPERACIONDropDownLabel.Position = [4 510 77 22];
            app.OPERACIONDropDownLabel.Text = 'OPERACION';

            % Create OPERACIONDropDown
            app.OPERACIONDropDown = uidropdown(app.PROCESAMIENTODEDOSSEALESTab);
            app.OPERACIONDropDown.Items = {'SUMA', 'RESTA', 'MULTIPLICACION', 'DIVISION', 'CONVOLUCION'};
            app.OPERACIONDropDown.Position = [88 510 100 22];
            app.OPERACIONDropDown.Value = 'SUMA';

            % Create EJECUTARButton
            app.EJECUTARButton = uibutton(app.PROCESAMIENTODEDOSSEALESTab, 'push');
            app.EJECUTARButton.Position = [187 510 77 23];
            app.EJECUTARButton.Text = 'EJECUTAR';

            % Create LoadAudioFileLoadedSignalsPanel_4
            app.LoadAudioFileLoadedSignalsPanel_4 = uipanel(app.PROCESAMIENTODEDOSSEALESTab);
            app.LoadAudioFileLoadedSignalsPanel_4.Title = 'HISTORIAL DE SEÑALES';
            app.LoadAudioFileLoadedSignalsPanel_4.BackgroundColor = [0.851 0.851 0.851];
            app.LoadAudioFileLoadedSignalsPanel_4.FontName = 'Segoe UI';
            app.LoadAudioFileLoadedSignalsPanel_4.FontSize = 14;
            app.LoadAudioFileLoadedSignalsPanel_4.Position = [8 7 166 500];

            % Create LoadAudioFileLoadedSignalsGrid_4
            app.LoadAudioFileLoadedSignalsGrid_4 = uigridlayout(app.LoadAudioFileLoadedSignalsPanel_4);
            app.LoadAudioFileLoadedSignalsGrid_4.ColumnWidth = {'1x'};
            app.LoadAudioFileLoadedSignalsGrid_4.RowHeight = {'1x', 'fit'};
            app.LoadAudioFileLoadedSignalsGrid_4.BackgroundColor = [1 1 1];

            % Create LoadAudioFileLoadedSignalsButtonsGrid_4
            app.LoadAudioFileLoadedSignalsButtonsGrid_4 = uigridlayout(app.LoadAudioFileLoadedSignalsGrid_4);
            app.LoadAudioFileLoadedSignalsButtonsGrid_4.ColumnWidth = {'1x'};
            app.LoadAudioFileLoadedSignalsButtonsGrid_4.RowHeight = {'1x', '1x', '1x'};
            app.LoadAudioFileLoadedSignalsButtonsGrid_4.Layout.Row = 2;
            app.LoadAudioFileLoadedSignalsButtonsGrid_4.Layout.Column = 1;
            app.LoadAudioFileLoadedSignalsButtonsGrid_4.BackgroundColor = [1 1 1];

            % Create LoadAudioFileLoadSignalButton_4
            app.LoadAudioFileLoadSignalButton_4 = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid_4, 'push');
            app.LoadAudioFileLoadSignalButton_4.BackgroundColor = [0.651 0.651 0.651];
            app.LoadAudioFileLoadSignalButton_4.Layout.Row = 1;
            app.LoadAudioFileLoadSignalButton_4.Layout.Column = 1;
            app.LoadAudioFileLoadSignalButton_4.Text = 'SEÑAL 1';

            % Create LoadAudioFileRemoveSignalButton_4
            app.LoadAudioFileRemoveSignalButton_4 = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid_4, 'push');
            app.LoadAudioFileRemoveSignalButton_4.BackgroundColor = [0.651 0.651 0.651];
            app.LoadAudioFileRemoveSignalButton_4.Layout.Row = 2;
            app.LoadAudioFileRemoveSignalButton_4.Layout.Column = 1;
            app.LoadAudioFileRemoveSignalButton_4.Text = 'SEÑAL 2';

            % Create BUSCARButton_4
            app.BUSCARButton_4 = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid_4, 'push');
            app.BUSCARButton_4.BackgroundColor = [0.651 0.651 0.651];
            app.BUSCARButton_4.Layout.Row = 3;
            app.BUSCARButton_4.Layout.Column = 1;
            app.BUSCARButton_4.Text = 'BUSCAR';

            % Create LoadAudioFileLoadedSignalsTable_4
            app.LoadAudioFileLoadedSignalsTable_4 = uitable(app.LoadAudioFileLoadedSignalsGrid_4);
            app.LoadAudioFileLoadedSignalsTable_4.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.LoadAudioFileLoadedSignalsTable_4.ColumnName = {'ARCHIVO'; 'TIPO'};
            app.LoadAudioFileLoadedSignalsTable_4.ColumnWidth = {'1x', '1x', '1x'};
            app.LoadAudioFileLoadedSignalsTable_4.RowName = {};
            app.LoadAudioFileLoadedSignalsTable_4.SelectionType = 'row';
            app.LoadAudioFileLoadedSignalsTable_4.FontName = 'Segoe UI';
            app.LoadAudioFileLoadedSignalsTable_4.Layout.Row = 1;
            app.LoadAudioFileLoadedSignalsTable_4.Layout.Column = 1;
            app.LoadAudioFileLoadedSignalsTable_4.FontSize = 14;

            % Create FILTRADOTab
            app.FILTRADOTab = uitab(app.TabGroup3);
            app.FILTRADOTab.Title = 'FILTRADO';

            % Create SyntheticSignalPreviewAxes_7
            app.SyntheticSignalPreviewAxes_7 = uiaxes(app.FILTRADOTab);
            title(app.SyntheticSignalPreviewAxes_7, 'SEÑAL A FILTRAR')
            xlabel(app.SyntheticSignalPreviewAxes_7, 'TIEMPO')
            ylabel(app.SyntheticSignalPreviewAxes_7, 'AMPLITUD')
            zlabel(app.SyntheticSignalPreviewAxes_7, 'Z')
            app.SyntheticSignalPreviewAxes_7.FontName = 'Segoe UI';
            app.SyntheticSignalPreviewAxes_7.XGrid = 'on';
            app.SyntheticSignalPreviewAxes_7.YGrid = 'on';
            app.SyntheticSignalPreviewAxes_7.Position = [187 348 516 159];

            % Create SyntheticSignalPreviewAxes_8
            app.SyntheticSignalPreviewAxes_8 = uiaxes(app.FILTRADOTab);
            title(app.SyntheticSignalPreviewAxes_8, 'FILTRO')
            xlabel(app.SyntheticSignalPreviewAxes_8, 'TIEMPO')
            ylabel(app.SyntheticSignalPreviewAxes_8, 'AMPLITUD')
            zlabel(app.SyntheticSignalPreviewAxes_8, 'Z')
            app.SyntheticSignalPreviewAxes_8.FontName = 'Segoe UI';
            app.SyntheticSignalPreviewAxes_8.XGrid = 'on';
            app.SyntheticSignalPreviewAxes_8.YGrid = 'on';
            app.SyntheticSignalPreviewAxes_8.Position = [187 184 516 163];

            % Create SyntheticSignalPreviewAxes_9
            app.SyntheticSignalPreviewAxes_9 = uiaxes(app.FILTRADOTab);
            title(app.SyntheticSignalPreviewAxes_9, 'SEÑAL FILTRADA')
            xlabel(app.SyntheticSignalPreviewAxes_9, 'TIEMPO')
            ylabel(app.SyntheticSignalPreviewAxes_9, 'AMPLITUD')
            zlabel(app.SyntheticSignalPreviewAxes_9, 'Z')
            app.SyntheticSignalPreviewAxes_9.FontName = 'Segoe UI';
            app.SyntheticSignalPreviewAxes_9.XGrid = 'on';
            app.SyntheticSignalPreviewAxes_9.YGrid = 'on';
            app.SyntheticSignalPreviewAxes_9.Position = [185 7 516 170];

            % Create CONVOLUCIONFIRButton
            app.CONVOLUCIONFIRButton = uibutton(app.FILTRADOTab, 'push');
            app.CONVOLUCIONFIRButton.ButtonPushedFcn = createCallbackFcn(app, @CONVOLUCIONFIRButtonPushed, true);
            app.CONVOLUCIONFIRButton.BackgroundColor = [1 1 1];
            app.CONVOLUCIONFIRButton.Position = [73 511 135 23];
            app.CONVOLUCIONFIRButton.Text = 'CONVOLUCION (FIR)';

            % Create FILTROLabel
            app.FILTROLabel = uilabel(app.FILTRADOTab);
            app.FILTROLabel.BackgroundColor = [0.651 0.651 0.651];
            app.FILTROLabel.Position = [5 511 65 22];
            app.FILTROLabel.Text = 'FILTRO';

            % Create ECUACIONDEDIFERENCIAIIRButton
            app.ECUACIONDEDIFERENCIAIIRButton = uibutton(app.FILTRADOTab, 'push');
            app.ECUACIONDEDIFERENCIAIIRButton.Position = [214 510 201 23];
            app.ECUACIONDEDIFERENCIAIIRButton.Text = 'ECUACION DE DIFERENCIA (IIR)';

            % Create LoadAudioFileLoadedSignalsPanel_5
            app.LoadAudioFileLoadedSignalsPanel_5 = uipanel(app.FILTRADOTab);
            app.LoadAudioFileLoadedSignalsPanel_5.Title = 'HISTORIAL DE SEÑALES';
            app.LoadAudioFileLoadedSignalsPanel_5.BackgroundColor = [0.851 0.851 0.851];
            app.LoadAudioFileLoadedSignalsPanel_5.FontName = 'Segoe UI';
            app.LoadAudioFileLoadedSignalsPanel_5.FontSize = 14;
            app.LoadAudioFileLoadedSignalsPanel_5.Position = [9 4 165 502];

            % Create LoadAudioFileLoadedSignalsGrid_5
            app.LoadAudioFileLoadedSignalsGrid_5 = uigridlayout(app.LoadAudioFileLoadedSignalsPanel_5);
            app.LoadAudioFileLoadedSignalsGrid_5.ColumnWidth = {'1x'};
            app.LoadAudioFileLoadedSignalsGrid_5.RowHeight = {'1x', 'fit'};
            app.LoadAudioFileLoadedSignalsGrid_5.BackgroundColor = [1 1 1];

            % Create LoadAudioFileLoadedSignalsButtonsGrid_5
            app.LoadAudioFileLoadedSignalsButtonsGrid_5 = uigridlayout(app.LoadAudioFileLoadedSignalsGrid_5);
            app.LoadAudioFileLoadedSignalsButtonsGrid_5.ColumnWidth = {'1x'};
            app.LoadAudioFileLoadedSignalsButtonsGrid_5.RowHeight = {'1x', '1x', '1x'};
            app.LoadAudioFileLoadedSignalsButtonsGrid_5.Layout.Row = 2;
            app.LoadAudioFileLoadedSignalsButtonsGrid_5.Layout.Column = 1;
            app.LoadAudioFileLoadedSignalsButtonsGrid_5.BackgroundColor = [1 1 1];

            % Create LoadAudioFileLoadSignalButton_5
            app.LoadAudioFileLoadSignalButton_5 = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid_5, 'push');
            app.LoadAudioFileLoadSignalButton_5.ButtonPushedFcn = createCallbackFcn(app, @LoadAudioFileLoadSignalButton_5Pushed, true);
            app.LoadAudioFileLoadSignalButton_5.BackgroundColor = [0.651 0.651 0.651];
            app.LoadAudioFileLoadSignalButton_5.Layout.Row = 1;
            app.LoadAudioFileLoadSignalButton_5.Layout.Column = 1;
            app.LoadAudioFileLoadSignalButton_5.Text = 'CARGAR SEÑAL ';

            % Create LoadAudioFileRemoveSignalButton_5
            app.LoadAudioFileRemoveSignalButton_5 = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid_5, 'push');
            app.LoadAudioFileRemoveSignalButton_5.ButtonPushedFcn = createCallbackFcn(app, @LoadAudioFileRemoveSignalButton_5Pushed, true);
            app.LoadAudioFileRemoveSignalButton_5.BackgroundColor = [0.651 0.651 0.651];
            app.LoadAudioFileRemoveSignalButton_5.Layout.Row = 2;
            app.LoadAudioFileRemoveSignalButton_5.Layout.Column = 1;
            app.LoadAudioFileRemoveSignalButton_5.Text = 'FILTRO';

            % Create BUSCARButton_5
            app.BUSCARButton_5 = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid_5, 'push');
            app.BUSCARButton_5.BackgroundColor = [0.651 0.651 0.651];
            app.BUSCARButton_5.Layout.Row = 3;
            app.BUSCARButton_5.Layout.Column = 1;
            app.BUSCARButton_5.Text = 'BUSCAR';

            % Create LoadAudioFileLoadedSignalsTable_5
            app.LoadAudioFileLoadedSignalsTable_5 = uitable(app.LoadAudioFileLoadedSignalsGrid_5);
            app.LoadAudioFileLoadedSignalsTable_5.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.LoadAudioFileLoadedSignalsTable_5.ColumnName = {'ARCHIVO'; 'TIPO'};
            app.LoadAudioFileLoadedSignalsTable_5.ColumnWidth = {'1x', '1x', '1x'};
            app.LoadAudioFileLoadedSignalsTable_5.RowName = {};
            app.LoadAudioFileLoadedSignalsTable_5.SelectionType = 'row';
            app.LoadAudioFileLoadedSignalsTable_5.FontName = 'Segoe UI';
            app.LoadAudioFileLoadedSignalsTable_5.Layout.Row = 1;
            app.LoadAudioFileLoadedSignalsTable_5.Layout.Column = 1;
            app.LoadAudioFileLoadedSignalsTable_5.FontSize = 14;

            % Create PBBPBRPBButton
            app.PBBPBRPBButton = uibutton(app.FILTRADOTab, 'push');
            app.PBBPBRPBButton.Position = [415 511 109 23];
            app.PBBPBRPBButton.Text = '(PB, BP, BR, PB) ';

            % Create TRANSFORMADASTab
            app.TRANSFORMADASTab = uitab(app.TabGroup);
            app.TRANSFORMADASTab.Title = 'TRANSFORMADAS';

            % Create DatePickerLabel
            app.DatePickerLabel = uilabel(app.UIFigure);
            app.DatePickerLabel.HorizontalAlignment = 'right';
            app.DatePickerLabel.Position = [655 -156 67 22];
            app.DatePickerLabel.Text = 'Date Picker';

            % Create DatePicker
            app.DatePicker = uidatepicker(app.UIFigure);
            app.DatePicker.Position = [737 -156 150 22];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = APPDESIGN_exported

            % Create UIFigure and components
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