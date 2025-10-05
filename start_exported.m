classdef start_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        MainTabGroup                    matlab.ui.container.TabGroup
        AcquisitionTab                  matlab.ui.container.Tab
        AcquisitionTabGroup             matlab.ui.container.TabGroup
        MicrophoneTab                   matlab.ui.container.Tab
        MicrophoneButtonsPanel          matlab.ui.container.Panel
        MicrophoneButtonsGrid           matlab.ui.container.GridLayout
        StopPlaybackButton              matlab.ui.control.Button
        PlayRecordingButton             matlab.ui.control.Button
        StopRecordingButton             matlab.ui.control.Button
        StartRecordingButton            matlab.ui.control.Button
        MicrophoneLoadedSignalsPanel    matlab.ui.container.Panel
        MicrophoneLoadedSignalsGrid     matlab.ui.container.GridLayout
        MicrophoneLoadedSignalsButtonsGrid  matlab.ui.container.GridLayout
        MicrophoneRemoveSignalButton    matlab.ui.control.Button
        MicrophoneLoadSignalButton      matlab.ui.control.Button
        MicrophoneLoadedSignalsTable    matlab.ui.control.Table
        MicrophoneSignalPreviewAxes     matlab.ui.control.UIAxes
        SyntheticSignalTab              matlab.ui.container.Tab
        SyntheticSignalButtonsPanel     matlab.ui.container.Panel
        SyntheticSignalButtonsGrid      matlab.ui.container.GridLayout
        AddSignalButton                 matlab.ui.control.Button
        SelectSignalTypeDropDown        matlab.ui.control.DropDown
        SelectaSignalTypeDropDownLabel  matlab.ui.control.Label
        SyntheticLoadedSignalsPanel     matlab.ui.container.Panel
        SyntheticLoadedSignalsGrid      matlab.ui.container.GridLayout
        SyntheticLoadedSignalsButtonsGrid1  matlab.ui.container.GridLayout
        SyntheticLoadedSignalsButtonsGrid2  matlab.ui.container.GridLayout
        SyntheticBrowseButton           matlab.ui.control.Button
        SyntheticLoadSignalButton       matlab.ui.control.Button
        SyntheticRemoveSignalButton     matlab.ui.control.Button
        SyntheticLoadedSignalsTable     matlab.ui.control.Table
        SyntheticSignalPreviewAxes      matlab.ui.control.UIAxes
        LoadAudioFileTab                matlab.ui.container.Tab
        LoadAudioFileButtonsPanel       matlab.ui.container.Panel
        LoadAudioFileButtonsGrid        matlab.ui.container.GridLayout
        BrowseButton                    matlab.ui.control.Button
        LoadAudioFileLoadedSignalsPanel  matlab.ui.container.Panel
        LoadAudioFileLoadedSignalsGrid  matlab.ui.container.GridLayout
        LoadAudioFileLoadedSignalsButtonsGrid  matlab.ui.container.GridLayout
        LoadAudioFileRemoveSignalButton  matlab.ui.control.Button
        LoadAudioFileLoadSignalButton   matlab.ui.control.Button
        LoadAudioFileLoadedSignalsTable  matlab.ui.control.Table
        LoadAudioFileSignalPreviewIAxes  matlab.ui.control.UIAxes
        HardwareAcquisitionTab          matlab.ui.container.Tab
        HardwareAcquisitionButtonsPanel  matlab.ui.container.Panel
        HardwareAcquisitionButtonsGrid  matlab.ui.container.GridLayout
        AcquireButton                   matlab.ui.control.Button
        HardwareAcquisitionTabLoadedSignalsPanel  matlab.ui.container.Panel
        HardwareAcquisitionTabLoadedSignalsGrid  matlab.ui.container.GridLayout
        HardwareAcquisitionTabLoadedSignalsButtonsGrid  matlab.ui.container.GridLayout
        HardwareAcquisitionRemoveSignalButton  matlab.ui.control.Button
        HardwareAcquisitionLoadSignalButton  matlab.ui.control.Button
        HardwareAcquisitionLoadedSignalsTable  matlab.ui.control.Table
        HardwareAcquisitionSignalPreviewAxes  matlab.ui.control.UIAxes
        ProcessingTab                   matlab.ui.container.Tab
        ProcessingTabGroup              matlab.ui.container.TabGroup
        PreprocessingTab                matlab.ui.container.Tab
        PreprocessingButtonsPanel       matlab.ui.container.Panel
        PreprocessingButtonsGrid        matlab.ui.container.GridLayout
        NormalizeButton                 matlab.ui.control.Button
        SelectNormalizationDropDown     matlab.ui.control.DropDown
        SelectanormalizationDropDown_2Label  matlab.ui.control.Label
        PreprocessingLoadedSignalsPanel  matlab.ui.container.Panel
        PreprocessingLoadedSignalsGrid  matlab.ui.container.GridLayout
        PreprocessingLoadedSignalsButtonsGrid  matlab.ui.container.GridLayout
        PreprocessingRemoveSignalButton  matlab.ui.control.Button
        PreprocessingSelectSignalButton  matlab.ui.control.Button
        PreprocessingLoadedSignalsTable  matlab.ui.control.Table
        PreprocessingOutputSignalPreviewAxes  matlab.ui.control.UIAxes
        PreprocessingInputSignalPreviewAxes  matlab.ui.control.UIAxes
        SingleSignalProcessingTab       matlab.ui.container.Tab
        SingleSignalProcessingButtonsPanel  matlab.ui.container.Panel
        SingleSignalProcessingButtonsGrid  matlab.ui.container.GridLayout
        SingleSignalApplyButton         matlab.ui.control.Button
        SingleSignalSelectOperationDropDown  matlab.ui.control.DropDown
        SelectanoperationDropDown_3Label  matlab.ui.control.Label
        SingleSignalProcessingLoadedSignalsPanel  matlab.ui.container.Panel
        SingleSignalProcessingLoadedSignalsGrid  matlab.ui.container.GridLayout
        SingleSignalProcessingLoadedSignalsButtonsGrid  matlab.ui.container.GridLayout
        SingleSignalProcessingRemoveSignalButton  matlab.ui.control.Button
        SingleSignalProcessingSelectSignalButton  matlab.ui.control.Button
        SingleSignalProcessingLoadedSignalsTable  matlab.ui.control.Table
        SingleSignalProcessingOutputPreviewAxes  matlab.ui.control.UIAxes
        SingleSignalProcessingInputPreviewAxes  matlab.ui.control.UIAxes
        MultipleSignalProcessingTab     matlab.ui.container.Tab
        MultipleSignalProcessingButtonsPanel  matlab.ui.container.Panel
        MultipleSignalProcessingButtonsGrid  matlab.ui.container.GridLayout
        MultipleSignalApplyButton       matlab.ui.control.Button
        MultipleSignalSelectOperationDropDown  matlab.ui.control.DropDown
        SelectanoperationDropDown_4Label  matlab.ui.control.Label
        MultipleSignalLoadedSignalsPanel  matlab.ui.container.Panel
        MultipleSignalLoadedSignalsGrid  matlab.ui.container.GridLayout
        MultipleSignalLoadedSignalsButtonsGrid1  matlab.ui.container.GridLayout
        MultipleSignalLoadedSignalsButtonsGrid2  matlab.ui.container.GridLayout
        MultipleSignalSelectSignal2Button  matlab.ui.control.Button
        MultipleSignalSelectSignal1Button  matlab.ui.control.Button
        MultipleSignalRemoveSignalButton  matlab.ui.control.Button
        MultipleSignalLoadedSignalsTable  matlab.ui.control.Table
        MultipleSignalOutputSignalPreviewAxes  matlab.ui.control.UIAxes
        MultipleSignalInputSignalsPreviewAxes  matlab.ui.control.UIAxes
        FourierTransformTab             matlab.ui.container.Tab
        FourierTransformButtonsPanel    matlab.ui.container.Panel
        FourierTransformButtonsGrid     matlab.ui.container.GridLayout
        ApplyFourierTransformButton     matlab.ui.control.Button
        FourierTransformLoadedSignalsPanel  matlab.ui.container.Panel
        FourierTransformLoadedSignalsGrid  matlab.ui.container.GridLayout
        FourierTransformLoadedSignalsButtonsGrid  matlab.ui.container.GridLayout
        FourierTransformRemoveSignalButton  matlab.ui.control.Button
        FourierTransformSelectSignalButton  matlab.ui.control.Button
        FourierTransformLoadedSignalsTable  matlab.ui.control.Table
        FourierTransformPhaseSignalPreviewAxes  matlab.ui.control.UIAxes
        FourierTransformIMagnitudeSignalPreviewAxes  matlab.ui.control.UIAxes
        FourierTransformInputSignalPreviewAxes  matlab.ui.control.UIAxes
        CosineTransformTab              matlab.ui.container.Tab
        CosineTransformButtonsPanel     matlab.ui.container.Panel
        CosineTransformButtonsGrid      matlab.ui.container.GridLayout
        ApplyCosineTransformButton      matlab.ui.control.Button
        CosineTransformLoadedSignalsPanel  matlab.ui.container.Panel
        CosineTransformLoadedSignalsGrid  matlab.ui.container.GridLayout
        CosineTransformLoadedSignalsButtonsGrid  matlab.ui.container.GridLayout
        CosineTransformRemoveSignalButton  matlab.ui.control.Button
        CosineTransformSelectSignalButton  matlab.ui.control.Button
        CosineTransformLoadedSignalsTable  matlab.ui.control.Table
        CosineTransformMagnitudePreviewAxes  matlab.ui.control.UIAxes
        CosineTransformInputSignalPreviewAxes  matlab.ui.control.UIAxes
        WaveletTransformTab             matlab.ui.container.Tab
        WaveletTransformButtonsPanel    matlab.ui.container.Panel
        WaveletTransformButtonsGrid     matlab.ui.container.GridLayout
        ApplyWaveletTransformButton     matlab.ui.control.Button
        WaveletTransformLoadedSignalsPanel  matlab.ui.container.Panel
        WaveletTransformLoadedSignalsGrid  matlab.ui.container.GridLayout
        loadedSignalsLayout2_11         matlab.ui.container.GridLayout
        RemoveSignalButton_11           matlab.ui.control.Button
        SelectSignalButton_8            matlab.ui.control.Button
        WaveletTransformLoadedSignalsTable  matlab.ui.control.Table
        WaveletTransformDetailLevel3PreviewAxes  matlab.ui.control.UIAxes
        WaveletTransformApproximationLevel3PreviewAxes  matlab.ui.control.UIAxes
        WaveletTransformDetailLevel1PreviewAxes  matlab.ui.control.UIAxes
        WaveletTransformDetailLevel2PreviewAxes  matlab.ui.control.UIAxes
        WaveletTransformInputSignalPreviewAxes  matlab.ui.control.UIAxes
        FilteringTab                    matlab.ui.container.Tab
        FilteringButtonsPanel           matlab.ui.container.Panel
        FilteringButtonsGrid            matlab.ui.container.GridLayout
        FilteringByConvolutionButton    matlab.ui.control.Button
        FilteringByDifferenceEquationButton  matlab.ui.control.Button
        Button                          matlab.ui.control.StateButton
        FilteringLoadedSignalsPanel     matlab.ui.container.Panel
        FilteringLoadedSignalsGrid      matlab.ui.container.GridLayout
        FilteringLoadedSignalsButtonsGrid1  matlab.ui.container.GridLayout
        FilteringLoadedSignalsButtonsGrid2  matlab.ui.container.GridLayout
        FilteringSelectSignalButton     matlab.ui.control.Button
        FilteringSelectFilterButton     matlab.ui.control.Button
        FilteringRemoveSignalButton     matlab.ui.control.Button
        FilteringLoadedSignalsTable     matlab.ui.control.Table
        FilteringFilterPreviewAxes      matlab.ui.control.UIAxes
        FilteringOutputSignalPreviewAxes  matlab.ui.control.UIAxes
        FilteringInputSignalPreviewAxes  matlab.ui.control.UIAxes
        SpectrogramTab                  matlab.ui.container.Tab
        FilteringLoadedSignalsPanel_2   matlab.ui.container.Panel
        FilteringLoadedSignalsGrid_2    matlab.ui.container.GridLayout
        FilteringLoadedSignalsButtonsGrid1_2  matlab.ui.container.GridLayout
        FilteringLoadedSignalsButtonsGrid2_2  matlab.ui.container.GridLayout
        FilteringRemoveSignalButton_2   matlab.ui.control.Button
        FilteringLoadedSignalsTable_2   matlab.ui.control.Table
        UIAxes                          matlab.ui.control.UIAxes
        HelpTab                         matlab.ui.container.Tab
    end

   
properties (Access = private)
        recorder         % Audiorecorder object
        audioRecorded    % Recorded audio signal
        audioSignalLoaded % Stores the loaded audio signal
        audioFs           % Sampling frequency (in Hz)
        audioFileName    % Audio File Name
        CurrentSignal    %Selected Signal
        CurrentTime
        CurrentFs
        CurrentFileName
        OriginalSignal
        OriginalFs 
        OriginalFileName
        OriginalTime
        IsAudioSignal
        NormalizedSignal
        NormalizedFs
        NormalizedFileName
        SingleSignalProcessing_InputSignal
        SingleSignalProcessing_TimeVector
        SingleSignalProcessing_Fs
        SingleSignalProcessing_FileName
        syntheticSignalLoaded  % Loaded signal vector
        syntheticTimeVector    % Time vector in seconds
        syntheticFs            % Sampling frequency
        SingleSignalProcessing_OutputSignal      % Processed signal (y)
        SingleSignalProcessing_OutputFs          % New Fs after processing
        SingleSignalProcessing_OutputFileName    % Generated filename
        SingleSignalProcessing_LastOperation     % Last performed operation
        SingleSignalProcessing_Parameters        % Parameters used in last operation
        MultipleSignal_Signal1          % Signal 1 data
        MultipleSignal_Signal1_Time     % Time vector for Signal 1
        MultipleSignal_Signal1_Fs       % Sampling frequency for Signal 1
        MultipleSignal_Signal1_FileName % File name for Signal 1
        MultipleSignal_Signal2          % Signal 2 data
        MultipleSignal_Signal2_Time     % Time vector for Signal 2
        MultipleSignal_Signal2_Fs       % Sampling frequency for Signal 2
        MultipleSignal_Signal2_FileName % File name for Signal 2
        MultipleSignal_Signal1_IsStereo
        MultipleSignal_Signal2_IsStereo
        MultipleSignal_Result
        MultipleSignal_Result_Time
        MultipleSignal_Result_Fs
        MultipleSignal_Result_Operation
        DefaultSavePath char
        LeftChannelOriginal
        RightChannelOriginal
        IsStereo
        ActiveChannel
        WaveletTransform_InputSignal
        WaveletTransform_TimeVector
        WaveletTransform_Fs
        WaveletTransform_FileName
        WaveletTransform_IsStereo logical = false % Stereo flag
        WaveletTransform_LeftChannel double % Left channel data
        WaveletTransform_RightChannel double % Right channel data (empty for mono)
        FilteringInputSignal     % Loaded signal (matrix)
        FilteringFs              % Sampling frequency
        FilteringTime            % Time vector
        FilteringInputSignalFileName
        FilteringFilename
        CurrentFilterCoefficients
        AudioRecordedFs
        FourierTransform_InputSignal
        FourierTransform_TimeVector
        FourierTransform_Fs
        FourierTransform_FileName
        CosineTransform_InputSignal
        CosineTransform_TimeVector
        CosineTransform_Fs
        CosineTransform_FileName
    end

    properties (Access = public)
    end

    methods (Access = private)

        function clearAllStereoSignals(app)
            % Helper function to clear ALL stereo signals (from both Signal 1 and Signal 2)

            % Check and clear Signal 1 stereo components
            if ~isempty(app.MultipleSignal_Signal1) && app.MultipleSignal_Signal1_IsStereo
                clearSignalPlots(app, 1);
            end

            % Check and clear Signal 2 stereo components
            if ~isempty(app.MultipleSignal_Signal2) && app.MultipleSignal_Signal2_IsStereo
                clearSignalPlots(app, 2);
            end
        end

        function clearSignalPlots(app, signalNumber)
            % Helper function to clear specific signal plots
            if signalNumber == 1
                % Find and delete Signal 1 plots (blue and red lines)
                h = findobj(app.MultipleSignalInputSignalsPreviewAxes, 'DisplayName', 'Signal 1');
                h = [h; findobj(app.MultipleSignalInputSignalsPreviewAxes, 'DisplayName', 'Signal 1 (Mono)')];
                h = [h; findobj(app.MultipleSignalInputSignalsPreviewAxes, 'DisplayName', 'Signal 1 (Left)')];
                h = [h; findobj(app.MultipleSignalInputSignalsPreviewAxes, 'DisplayName', 'Signal 1 (Right)')];
                delete(h);

                % Clear stored data
                app.MultipleSignal_Signal1 = [];
                app.MultipleSignal_Signal1_Time = [];
                app.MultipleSignal_Signal1_Fs = [];
                app.MultipleSignal_Signal1_FileName = '';
                app.MultipleSignal_Signal1_IsStereo = false;
            else
                % Find and delete Signal 2 plots (green and magenta lines)
                h = findobj(app.MultipleSignalInputSignalsPreviewAxes, 'DisplayName', 'Signal 2');
                h = [h; findobj(app.MultipleSignalInputSignalsPreviewAxes, 'DisplayName', 'Signal 2 (Mono)')];
                h = [h; findobj(app.MultipleSignalInputSignalsPreviewAxes, 'DisplayName', 'Signal 2 (Left)')];
                h = [h; findobj(app.MultipleSignalInputSignalsPreviewAxes, 'DisplayName', 'Signal 2 (Right)')];
                delete(h);

                % Clear stored data
                app.MultipleSignal_Signal2 = [];
                app.MultipleSignal_Signal2_Time = [];
                app.MultipleSignal_Signal2_Fs = [];
                app.MultipleSignal_Signal2_FileName = '';
                app.MultipleSignal_Signal2_IsStereo = false;
            end
        end

        function updatePlotLabels(app)
            % Helper function to update plot title and legend
            titleStr = 'Signal Comparison';

            if ~isempty(app.MultipleSignal_Signal1)
                [~, name1, ext1] = fileparts(app.MultipleSignal_Signal1_FileName);
                % Corrección: Usar if-else en lugar del operador ternario
                if app.MultipleSignal_Signal1_IsStereo
                    typeStr = 'Stereo';
                else
                    typeStr = 'Mono';
                end
                titleStr = [titleStr sprintf('\nSignal 1: %s%s (%s, %0.1f kHz)', name1, ext1, typeStr, app.MultipleSignal_Signal1_Fs/1000)];
            end

            if ~isempty(app.MultipleSignal_Signal2)
                [~, name2, ext2] = fileparts(app.MultipleSignal_Signal2_FileName);
                % Corrección: Usar if-else en lugar del operador ternario
                if app.MultipleSignal_Signal2_IsStereo
                    typeStr = 'Stereo';
                else
                    typeStr = 'Mono';
                end
                titleStr = [titleStr sprintf('\nSignal 2: %s%s (%s, %0.1f kHz)', name2, ext2, typeStr, app.MultipleSignal_Signal2_Fs/1000)];
            end

            title(app.MultipleSignalInputSignalsPreviewAxes, titleStr, 'Interpreter', 'none');
            xlabel(app.MultipleSignalInputSignalsPreviewAxes, 'Time (s)');
            ylabel(app.MultipleSignalInputSignalsPreviewAxes, 'Amplitude');
            grid(app.MultipleSignalInputSignalsPreviewAxes, 'on');
            legend(app.MultipleSignalInputSignalsPreviewAxes, 'show');
        end
        
        function color = getRandomGreen(app)
%GETRANDOMGREEN Devuelve un tono de verde aleatorio de una lista predefinida

    greenPool = [
        0.2   0.8   0.2;   % verde pasto
        0.0   0.6   0.0;   % verde oscuro
        0.5   0.9   0.5;   % verde menta
        0.3   0.7   0.3;   % verde estándar
        0.1   0.5   0.1;   % verde musgo
        0.0   0.8   0.4;   % verde extra
        0.267 0.965 0.078; % #44F614 - verde brillante personalizado
    ];

    idx = randi(size(greenPool, 1));
    color = greenPool(idx, :);

        end
        function [filtered_signal, H, freq] = aplicar_filtro(app, signal, fs, signal_name, filter_type)
            % Validación inicial
              if isempty(signal) || isempty(fs)
                    error('Señal o frecuencia de muestreo vacíos.');
              end
                
                % Convert to mono if necessary
                if size(signal, 2) > 1
                    signal = mean(signal, 2);
                end
                
                % Signal preparation for FFT
                N = length(signal);
                X = fft(signal);
                
                % Create frequency vector (correctly handling Nyquist)
                if mod(N, 2) == 0  % Even number of samples
                    freq = fs * (0:(N/2))/N;
                    freq = [freq, fliplr(freq(2:end-1))];
                else  % Odd number of samples
                    freq = fs * (0:((N-1)/2))/N;
                    freq = [freq, fliplr(freq(2:end))];
                end
                
                % Initialize filter response
                H = ones(size(X));
                filter_name = 'SinFiltro';
                
                try
                    % Request parameters based on filter type
                    switch lower(filter_type)
                        case 'low-pass'
                            prompt = {'Ingrese la frecuencia de corte (Hz):'};
                            answer = inputdlg(prompt, 'Filtro Paso Bajo', [1 50], {num2str(fs/4)});
                            if isempty(answer), return; end
                            
                            fc = str2double(answer{1});
                            if fc <= 0 || fc >= fs/2
                                error('La frecuencia de corte debe estar entre 0 y fs/2.');
                            end
                            
                            % Apply proper low-pass filter
                            for i = 1:N
                                if freq(i) <= fc || freq(i) >= (fs - fc)
                                    H(i) = 1;
                                else
                                    H(i) = 0;
                                end
                            end
                            filter_name = 'low-pass';
                            
                        case 'high-pass'
                            prompt = {'Ingrese la frecuencia de corte (Hz):'};
                            answer = inputdlg(prompt, 'Filtro Paso Alto', [1 50], {num2str(fs/4)});
                            if isempty(answer), return; end
                            
                            fc = str2double(answer{1});
                            if fc <= 0 || fc >= fs/2
                                error('La frecuencia de corte debe estar entre 0 y fs/2.');
                            end
                            
                            % Apply proper high-pass filter
                            for i = 1:N
                                if freq(i) >= fc && freq(i) <= (fs - fc)
                                    H(i) = 1;
                                else
                                    H(i) = 0;
                                end
                            end
                            filter_name = 'high-pass';
                            
                        case 'notch'
                            prompt = {'Frecuencia inferior (Hz):', 'Frecuencia superior (Hz):'};
                            answer = inputdlg(prompt, 'Filtro Notch', [1 50], {num2str(fs/4 - fs/20), num2str(fs/4 + fs/20)});
                            if isempty(answer), return; end
                            
                            fc1 = str2double(answer{1});
                            fc2 = str2double(answer{2});
                            
                            if fc1 >= fc2 || fc1 < 0 || fc2 > fs/2
                                error('Frecuencias inválidas. Debe cumplirse: 0 < fc1 < fc2 < fs/2');
                            end
                            
                            % Apply proper notch filter (reject band)
                            for i = 1:N
                                if (freq(i) >= fc1 && freq(i) <= fc2) || (freq(i) >= (fs - fc2) && freq(i) <= (fs - fc1))
                                    H(i) = 0;
                                else
                                    H(i) = 1;
                                end
                            end
                            filter_name = 'Notch';
                            
                        case 'band-pass'
                            prompt = {'Frecuencia inferior (Hz):', 'Frecuencia superior (Hz):'};
                            answer = inputdlg(prompt, 'Filtro Paso Banda', [1 50], {num2str(fs/4 - fs/10), num2str(fs/4 + fs/10)});
                            if isempty(answer), return; end
                            
                            fc1 = str2double(answer{1});
                            fc2 = str2double(answer{2});
                            
                            if fc1 >= fc2 || fc1 < 0 || fc2 > fs/2
                                error('Frecuencias inválidas. Debe cumplirse: 0 < fc1 < fc2 < fs/2');
                            end
                            
                            % Apply proper band-pass filter
                            for i = 1:N
                                if (freq(i) >= fc1 && freq(i) <= fc2) || (freq(i) >= (fs - fc2) && freq(i) <= (fs - fc1))
                                    H(i) = 1;
                                else
                                    H(i) = 0;
                                end
                            end
                            filter_name = 'PasoBanda';
                            
                        otherwise
                            error('Tipo de filtro desconocido: %s', filter_type);
                    end
                    
                    % Apply the filter
                    Y = X .* H;
                    
                    % Ensure the result is real (symmetric FFT)
                    if mod(N, 2) == 0
                        Y(N/2+1:end) = conj(Y(N/2:-1:2));
                    else
                        Y((N+1)/2+1:end) = conj(Y((N+1)/2:-1:2));
                    end
                    
                    % Convert back to time domain
                    filtered_signal = real(ifft(Y));
                    
                    % Plot the results
                        cla(app.FilteringOutputSignalPreviewAxes);
                        t = (0:N-1) / fs;
                        plot(app.FilteringOutputSignalPreviewAxes, t, filtered_signal);
                        title(app.FilteringOutputSignalPreviewAxes, ['Señal Filtrada: ','']);
                        xlabel(app.FilteringOutputSignalPreviewAxes, 'Tiempo (s)');
                        ylabel(app.FilteringOutputSignalPreviewAxes, 'Amplitud');
                        grid(app.FilteringOutputSignalPreviewAxes, 'on');
                   
                        signal_name=app.FilteringFilename;
                    
                    % Save the filtered signal
                    try
                            nombre_archivo = [signal_name, 'FiltroFourier', '.mat'];
                            ruta_completa = fullfile(app.DefaultSavePath, nombre_archivo);
                            resultStruct = struct(...
                                'x', filtered_signal, ...
                                'Fs', fs, ...
                                'n', t);
                            save(ruta_completa, '-struct', 'resultStruct');
                            disp(['Señal filtrada guardada en: ', ruta_completa]);
                    catch save_error
                        warning('Error:SaveFile:Failed', 'Error al guardar el archivo: %s', save_error.message);
                    end
                    
                catch error_msg
                    % Handle errors more gracefully
                    filtered_signal = signal;  % Return original signal on error
                    H = ones(size(X));
                    if isfield(app, 'UIFigure') && ~isempty(app.UIFigure)
                        uialert(app.UIFigure, ['Error: ', error_msg.message], 'Error en el filtrado');
                    else
                        warning('Error:Filtering:Failed', 'Error en el filtrado: %s', error_msg.message);
                    end
                end
                newRow = {signal_name, 'Synthetic', fs};
            
            % List of tables to update
            tableList = {
                app.MicrophoneLoadedSignalsTable;
                app.SyntheticLoadedSignalsTable;
                app.LoadAudioFileLoadedSignalsTable;
                app.HardwareAcquisitionLoadedSignalsTable;
                app.PreprocessingLoadedSignalsTable;
                app.SingleSignalProcessingLoadedSignalsTable;
                app.MultipleSignalLoadedSignalsTable;
                app.FourierTransformLoadedSignalsTable;
                app.CosineTransformLoadedSignalsTable;
                app.WaveletTransformLoadedSignalsTable;
                app.FilteringLoadedSignalsTable;
                app.FilteringLoadedSignalsTable_2;
            };
            
            % Add new row to each table
            for i = 1:length(tableList)
                currentTable = tableList{i};
                currentData = currentTable.Data;
                if isempty(currentData)
                    updatedData = newRow;
                else
                    updatedData = [currentData; newRow];
                end
                currentTable.Data = updatedData;
            end
        end
    end


    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            % Maximize the window on startup
            app.UIFigure.WindowState = 'maximized';
            
            % Hide the MATLAB toolbar
            set(groot, 'DefaultFigureToolBar', 'none');
            set(groot, 'DefaultFigureMenuBar', 'none');
            % Get project root or current directory
            try
                if ~isempty(matlab.project.rootProject())
                    projRoot = matlab.project.rootProject().RootFolder;
                else
                    projRoot = pwd;
                end
            catch
                projRoot = pwd;
            end

            % Set default save path
            app.DefaultSavePath = fullfile(projRoot);

            % Create folder if needed
            if ~exist(app.DefaultSavePath, 'dir')
                mkdir(app.DefaultSavePath);
            end
        end

        % Button pushed function: StartRecordingButton
        function StartRecordingButtonPushed(app, event)
            fs = 44100;       % Sampling frequency
            nBits = 16;       % Bits per sample
            nChannels = 1;    % 1 = mono
            
            % Create audiorecorder object
            app.recorder = audiorecorder(fs, nBits, nChannels);
            
            % Start recording without blocking
            record(app.recorder);
        end

        % Button pushed function: StopRecordingButton
        function StopRecordingButtonPushed(app, event)
            % Stop the recording
            stop(app.recorder);
            disp('Recording stopped.');
            
            % Get audio data
            app.audioRecorded = getaudiodata(app.recorder);
            Fs = 44100; % Sample frequency
            
            % Default save folder
            defaultFolder = app.DefaultSavePath;
            
            % Open Save File Dialog
            [file, path] = uiputfile('*.wav', 'Save Recorded Audio As', defaultFolder);
            
            if isequal(file, 0) || isequal(path, 0)
                disp('User canceled saving.');
                figure(app.UIFigure); % Refocus app window
                return;
            end
            
            % Full file path
            fullFileName = fullfile(path, file);
            
            % Save audio
            audiowrite(fullFileName, app.audioRecorded, Fs);
            disp(['Audio saved to: ' fullFileName]);
            
            % Refocus app window
            figure(app.UIFigure);
            
            % Plot with time in seconds
            n = 0:length(app.audioRecorded)-1;
            t = n / Fs; % Time vector in seconds
            plot(app.MicrophoneSignalPreviewAxes, t, app.audioRecorded);
            title(app.MicrophoneSignalPreviewAxes, ['Recorded: ' file], 'Interpreter', 'none');
            xlabel(app.MicrophoneSignalPreviewAxes, 'Time (s)');
            ylabel(app.MicrophoneSignalPreviewAxes, 'Amplitude');
            
            % Prepare new row for the tables
            newRow = {file, 'Audio Recording', Fs};
            
            % List of tables to update
            tableList = {
                app.MicrophoneLoadedSignalsTable;
                app.SyntheticLoadedSignalsTable;
                app.LoadAudioFileLoadedSignalsTable;
                app.HardwareAcquisitionLoadedSignalsTable;
                app.PreprocessingLoadedSignalsTable;
                app.SingleSignalProcessingLoadedSignalsTable;
                app.MultipleSignalLoadedSignalsTable;
                app.FourierTransformLoadedSignalsTable;
                app.CosineTransformLoadedSignalsTable;
                app.WaveletTransformLoadedSignalsTable;
                app.FilteringLoadedSignalsTable;
                app.FilteringLoadedSignalsTable_2;
            };
            
            % Add new row to each table
            for i = 1:length(tableList)
                currentTable = tableList{i};
                currentData = currentTable.Data;
                if isempty(currentData)
                    updatedData = newRow;
                else
                    updatedData = [currentData; newRow];
                end
                currentTable.Data = updatedData;
            end
        end

        % Button pushed function: PlayRecordingButton
        function PlayRecordingButtonPushed(app, event)
            % Check if there is already a recording
            if isempty(app.audioRecorded)
                return;
            end
            
            % Play the recorded audio
            sound(app.audioRecorded, app.audioFs);
        end

        % Button pushed function: MicrophoneLoadSignalButton
        function MicrophoneLoadSignalButtonPushed(app, event)
            % Get selected row
            selectedRow = app.MicrophoneLoadedSignalsTable.Selection;
            
            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a file from the table first.', 'No Selection');
                return;
            end
            
            % Get file name from the selected row
            fileName = app.MicrophoneLoadedSignalsTable.Data{selectedRow, 1};  % Column 1: File Name
            
            % Build full file path
            folderPath = app.DefaultSavePath;
            fullFilePath = fullfile(folderPath, fileName);
            
            % Check if the file exists
            if ~isfile(fullFilePath)
                uialert(app.UIFigure, 'The selected file does not exist.', 'File Not Found');
                return;
            end
            
            % Check if file is an audio file (by extension)
            [~, ~, fileExt] = fileparts(fullFilePath);
            validAudioExts = {'.wav', '.mp3', '.ogg', '.flac', '.m4a', '.aac', '.au'};
            
            if ~any(strcmpi(fileExt, validAudioExts))
                uialert(app.UIFigure, 'The selected file is not a valid audio file. Please select a file with one of these extensions: .wav, .mp3, .ogg, .flac, .m4a, .aac, .au', 'Invalid File Type');
                return;
            end
            
            % Try to load the audio file
            try
                [y, fs] = audioread(fullFilePath);
                
                % Additional check for valid audio data
                if isempty(y) || fs <= 0
                    error('Invalid audio data');
                end
                
                % Update app properties
                app.audioRecorded = y;  % Store the loaded signal
                app.audioFs = fs;
                
                % Create time vector in seconds
                t = (0:length(y)-1) / fs;
                
                % Plot in MicrophoneSignalPreviewAxes
                plot(app.MicrophoneSignalPreviewAxes, t, y);
                title(app.MicrophoneSignalPreviewAxes, ['Loaded: ' fileName], 'Interpreter', 'none');
                xlabel(app.MicrophoneSignalPreviewAxes, 'Time (s)');
                ylabel(app.MicrophoneSignalPreviewAxes, 'Amplitude');
                
            catch ME
                % Handle errors during audio file loading
                uialert(app.UIFigure, ['Failed to load audio file: ' ME.message], 'Audio Load Error');
                return;
            end
        end

        % Button pushed function: MicrophoneRemoveSignalButton
        function MicrophoneRemoveSignalButtonPushed(app, event)
            % Get selected row from Microphone table
            selectedRow = app.MicrophoneLoadedSignalsTable.Selection;
            
            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a file from the table first.', 'No Selection');
                return;
            end
            
            % Get the file name (assumed to be in column 1)
            fileName = app.MicrophoneLoadedSignalsTable.Data{selectedRow, 1};
            
            % Build file base name (without extension if needed)
            [~, nameWithoutExt, ~] = fileparts(fileName);
            
            % Folder where files are stored
            folderPath = app.DefaultSavePath;
            
            % Try deleting both .wav and .mat files
            fileWav = fullfile(folderPath, [nameWithoutExt, '.wav']);
            fileMat = fullfile(folderPath, [nameWithoutExt, '.mat']);
            
            if isfile(fileWav)
                delete(fileWav);
            end
            if isfile(fileMat)
                delete(fileMat);
            end
            
            % Tables to update
            tables = {
                'MicrophoneLoadedSignalsTable', ...
                'SyntheticLoadedSignalsTable', ...
                'LoadAudioFileLoadedSignalsTable', ...
                'HardwareAcquisitionLoadedSignalsTable', ...
                'PreprocessingLoadedSignalsTable', ...
                'SingleSignalProcessingLoadedSignalsTable', ...
                'MultipleSignalLoadedSignalsTable', ...
                'FourierTransformLoadedSignalsTable', ...
                'CosineTransformLoadedSignalsTable', ...
                'WaveletTransformLoadedSignalsTable', ...
                'FilteringLoadedSignalsTable',...
                'FilteringLoadedSignalsTable_2'};
            
            % Remove matching file (regardless of extension) from all tables
            for i = 1:length(tables)
                currentData = app.(tables{i}).Data;
                if ~isempty(currentData)
                    % Compare base names without extension
                    baseNames = erase(currentData(:,1), {'.wav', '.mat'});
                    rowMatch = strcmp(baseNames, nameWithoutExt);
                    currentData(rowMatch, :) = [];
                    app.(tables{i}).Data = currentData;
                end
            end
        
            % Clear plot
            cla(app.MicrophoneSignalPreviewAxes);
            title(app.MicrophoneSignalPreviewAxes, '');
            xlabel(app.MicrophoneSignalPreviewAxes, '');
            ylabel(app.MicrophoneSignalPreviewAxes, '');
        end

        % Button pushed function: AddSignalButton
        function AddSignalButtonPushed(app, event)
           signalType = app.SelectSignalTypeDropDown.Value;
            
            switch signalType
                case 'Sine wave'
                    dlgtitle = 'Sine Wave Parameters';
                    prompt = {'Amplitude:', 'Frequency (Hz):', 'Phase (rad):', 'Initial Instant (s):', 'Final Instant (s):', 'Sampling Frequency (Hz):'};
                    dims = [1 35];
                    default_input = {'1', '5', '0', '-5', '50', '1000'};
                    answer = inputdlg(prompt, dlgtitle, dims, default_input);
                    if isempty(answer), return; end
                    A = str2double(answer{1}); f = str2double(answer{2}); phase = str2double(answer{3});
                    t_start = str2double(answer{4}); t_end = str2double(answer{5}); Fs = str2double(answer{6});

                    if t_end <= t_start
                        error('The final instant must be greater than the initial instant.');
                    end

                    n = (t_start*Fs) : (t_end*Fs);
                    x = A * sin(2 * pi * f * n/ Fs + phase);
            
                case 'Cosine wave'
                    dlgtitle = 'Cosine Wave Parameters';
                    prompt = {'Amplitude:', 'Frequency (Hz):', 'Phase (rad):', 'Initial Instant (s):', 'Final Instant (s):', 'Sampling Frequency (Hz):'};
                    dims = [1 35]; default_input = {'1', '5', '0', '-5', '50', '1000'};
                    answer = inputdlg(prompt, dlgtitle, dims, default_input);
                    if isempty(answer), return; end
                    A = str2double(answer{1}); f = str2double(answer{2}); phase = str2double(answer{3});
                    t_start = str2double(answer{4}); t_end = str2double(answer{5}); Fs = str2double(answer{6});

                    if t_end <= t_start
                        error('The final instant must be greater than the initial instant.');
                    end

                    n = (t_start*Fs) :(t_end*Fs);
                    x = A * cos(2 * pi * f * n / Fs + phase);
            
                case 'Chirp signal'
                    dlgtitle = 'Chirp Signal Parameters';
                    prompt = {'Initial Frequency (Hz):', 'Final Frequency (Hz):', 'Duration (s):', 'Amplitude:','Phase (grados)', 'Sampling Frequency (Hz):'};
                    dims = [1 35]; default_input = {'1', '10', '100', '1', '0', '1000'};
                    answer = inputdlg(prompt, dlgtitle, dims, default_input);
                    if isempty(answer), return; end
                    list = {'Linear','Quadratic','Logarithmic'};
                    [indx,tf] = listdlg('ListString',list,'SelectionMode','single');
                    if ~tf, return; end

                    f1 = str2double(answer{1}); f2 = str2double(answer{2}); T = str2double(answer{3});
                    A = str2double(answer{4}); phase = str2double(answer{5}); Fs = str2double(answer{6});
                    t = 0:1/Fs:T;
                    n = 0 : (T*Fs);
                    selected_method = list{indx};

                    switch selected_method
                        case 'Linear'
                            x = A * chirp(t, f1, t(end), f2, 'Linear', phase);
                        case 'Quadratic'
                            x = A * chirp(t, f1, t(end), f2, 'Quadratic', phase);
                        case 'Exponential'
                             x = A * chirp(t, f1, t(end), f2, 'logarithmic', phase);
                    end
            
                case 'Ramp signal'
                    dlgtitle = 'Ramp Signal Parameters';
                    prompt = {'Slope:', 'Initial Instant (s):', 'Final Instant (s):','Displacement (s):', 'Sampling Frequency (Hz):'};
                    dims = [1 35]; default_input = {'1', '-5', '20','0', '1000'};
                    answer = inputdlg(prompt, dlgtitle, dims, default_input);
                    if isempty(answer), return; end
                    slope = str2double(answer{1}); t_start = str2double(answer{2}); t_end = str2double(answer{3}); t0 = str2double(answer{4}); Fs = str2double(answer{5});
                    
                    if t_end <= t_start
                        error('The final instant must be greater than the initial instant.');
                    end

                    n = (t_start*Fs) : (t_end*Fs);
                    t = n/Fs;
                    x = slope .*(t+t0).* ((t+t0)>=0);
            
                case 'Unit step signal'
                    dlgtitle = 'Unit Step Signal Parameters';
                    prompt = {'Amplitude:', 'Initial Instant (s):', 'Final Instant (s):', 'Displacement (s):', 'Sampling Frequency (Hz):'};
                    dims = [1 35]; default_input = {'1', '-5', '20','0', '1000'};
                    answer = inputdlg(prompt, dlgtitle, dims, default_input);
                    if isempty(answer), return; end
                    A = str2double(answer{1}); t_start = str2double(answer{2}); t_end = str2double(answer{3}); t0 = str2double(answer{4}); Fs = str2double(answer{5});
                    
                    if t_end <= t_start
                        error('The final instant must be greater than the initial instant.');
                    end

                    n = (t_start*Fs) : (t_end*Fs);
                    t = n/Fs;
                    x = A * (t+t0 >= 0);
            
                case 'Dirac delta (Discrete impulse)'
                    dlgtitle = 'Dirac Delta Signal Parameters';
                    prompt = {'Amplitude:', 'Displacement (s):', 'Initial Instant(s):', 'Final Instant(s):', 'Sampling Frequency (Hz):'};
                    dims = [1 35]; default_input = {'1', '0', '-5', '20', '1000'};
                    answer = inputdlg(prompt, dlgtitle, dims, default_input);
                    if isempty(answer), return; end
                    A = str2double(answer{1}); t0 = str2double(answer{2}); t_start = str2double(answer{3}); t_end = str2double(answer{4}); Fs = str2double(answer{5});
                    
                    if t_end <= t_start
                        error('The final instant must be greater than the initial instant.');
                    end

                    n = (t_start*Fs) : (t_end*Fs);
                    t = n/Fs;
                    x = A * (t+t0 == 0);
            
                case 'Rectangular pulse'
                    dlgtitle = 'Rectangular Pulse Signal Parameters';
                    prompt = {'Amplitude:', 'Width (samples):', 'Initial Instant (s):', 'Final Instant (s):', 'Displacement (s):', 'Sampling Frequency (Hz):'};
                    dims = [1 35]; default_input = {'1', '10', '-5', '50', '0','1000'};
                    answer = inputdlg(prompt, dlgtitle, dims, default_input);
                    if isempty(answer), return; end
                    A = str2double(answer{1}); width = str2double(answer{2}); t_start = str2double(answer{3}); t_end = str2double(answer{4}); t0 =str2double(answer{5}); Fs = str2double(answer{6});

                    if t_end <= t_start
                        error('The final instant must be greater than the initial instant.');
                    end

                    n = (t_start*Fs) : (t_end*Fs);
                    t = n/Fs;
                    x = A * (t+t0 >= 0 & t+t0 < width);
            
                case 'Sawtooth wave'
                    dlgtitle = 'Sawtooth Wave Parameters';
                    prompt = {'Amplitude:', 'Period (s):', 'Initial Instant (s):', 'Final Instant (s):', 'Displacement (s):','Sampling Frequency (Hz):'};
                    dims = [1 35]; default_input = {'1', '20', '-5', '50', '0','1000'};
                    answer = inputdlg(prompt, dlgtitle, dims, default_input);
                    if isempty(answer), return; end
                    A = str2double(answer{1}); period = str2double(answer{2}); t_start = str2double(answer{3}); t_end = str2double(answer{4}); t0 =str2double(answer{5}); Fs = str2double(answer{6});

                    if t_end <= t_start
                        error('The final instant must be greater than the initial instant.');
                    end

                    n = (t_start*Fs) : (t_end*Fs);
                    t = n/Fs;
                    x = sawtooth(2 * pi * (t+t0) / period);
                    x = A*(x+1)/2;
            
                case 'Triangular wave'
                    dlgtitle = 'Triangular Wave Parameters';
                    prompt = {'Amplitude:', 'Period (samples):', 'Initial Instant (s):', 'Final Instant (s):','Displacement (s):', 'Sampling Frequency (Hz):'};
                    dims = [1 35]; default_input = {'1', '20', '-5', '50', '0', '1000'};
                    answer = inputdlg(prompt, dlgtitle, dims, default_input);
                    if isempty(answer), return; end
                    A = str2double(answer{1}); period = str2double(answer{2}); t_start = str2double(answer{3}); t_end = str2double(answer{4}); t0 =str2double(answer{5}); Fs = str2double(answer{6});
                    
                    if t_end <= t_start
                        error('The final instant must be greater than the initial instant.');
                    end

                    n = (t_start*Fs) : (t_end*Fs);
                    t = n/Fs;
                    x = A * sawtooth(2 * pi * (t+t0) / period, 0.5);
            
                case 'Sinc function'
                    dlgtitle = 'Sinc Function Parameters';
                    prompt = {'Amplitude:', 'Analog Frequency (hz)', 'Initial Instant (s):', 'Final Instant (s):', 'Displacement (s):', 'Sampling Frequency (Hz):'};
                    dims = [1 35]; default_input = {'1','5', '-20', '20', '0', '1000'};
                    answer = inputdlg(prompt, dlgtitle, dims, default_input);
                    if isempty(answer), return; end
                    A = str2double(answer{1}); Fa = str2double(answer{2}); t_start = str2double(answer{3}); t_end = str2double(answer{4}); t0 =str2double(answer{5}); Fs = str2double(answer{6});

                    if t_end <= t_start
                        error('The final instant must be greater than the initial instant.');
                    end

                    n = (t_start*Fs) : (t_end*Fs);
                    t = n/Fs;
                    x = A*sinc((t+t0)*Fa);
            
                case 'Square wave'
                    dlgtitle = 'Square Wave Parameters';
                    prompt = {'Amplitude:', 'Frequency (Hz):', 'Initial Instant (s):', 'Final Instant (s):', 'Displacement (s):','Sampling Frequency (Hz):'};
                    dims = [1 35]; default_input = {'1', '5', '-5', '50', '0','1000'};
                    answer = inputdlg(prompt, dlgtitle, dims, default_input);
                    if isempty(answer), return; end
                    A = str2double(answer{1}); f = str2double(answer{2}); t_start = str2double(answer{3}); t_end = str2double(answer{4}); t0 =str2double(answer{5}); Fs = str2double(answer{6});
                    
                    if t_end <= t_start
                        error('The final instant must be greater than the initial instant.');
                    end

                    n = (t_start*Fs) : (t_end*Fs);
                    t = n/Fs;
                    x = A * square(2 * pi * f * (t+t0));
            
                case 'Exponential growth'
                    dlgtitle = 'Exponential Growth Parameters';
                    prompt = {'Amplitude:', 'Growth Rate:', 'Initial Instant (s):', 'Final Instant (s):','Displacement (s):', 'Sampling Frequency (Hz):'};
                    dims = [1 35]; default_input = {'1', '0.1', '-5', '50', '0','1000'};
                    answer = inputdlg(prompt, dlgtitle, dims, default_input);
                    if isempty(answer), return; end
                    A = str2double(answer{1}); rate = str2double(answer{2}); t_start = str2double(answer{3}); t_end = str2double(answer{4}); t0 =str2double(answer{5}); Fs = str2double(answer{6});

                    if t_end <= t_start
                        error('The final instant must be greater than the initial instant.');
                    end

                    n = (t_start*Fs) : (t_end*Fs);
                    t = n/Fs;
                    x = A * exp(rate * (t+t0));
            
                case 'Exponential decay'
                    dlgtitle = 'Exponential Decay Parameters';
                    prompt = {'Amplitude:', 'Decay Rate:', 'Initial Instant (s):', 'Final Instant (s):','Displacement (s):', 'Sampling Frequency (Hz):'};
                    dims = [1 35]; default_input = {'1', '-0.1', '-5', '50', '0','1000'};
                    answer = inputdlg(prompt, dlgtitle, dims, default_input);
                    if isempty(answer), return; end
                    A = str2double(answer{1}); rate = str2double(answer{2}); t_start = str2double(answer{3}); t_end = str2double(answer{4}); t0 =str2double(answer{5}); Fs = str2double(answer{6});

                    if t_end <= t_start
                        error('The final instant must be greater than the initial instant.');
                    end

                    n = (t_start*Fs):(t_end*Fs);
                    t = n/Fs;
                    x = A * exp(rate * (t+t0));
            end
            
            % Convert time to seconds
            signalTime = n / Fs;
            
            % Plot the signal using stem (point by point)
            stem(app.SyntheticSignalPreviewAxes, signalTime, x);
            xlabel(app.SyntheticSignalPreviewAxes, 'Time');
            ylabel(app.SyntheticSignalPreviewAxes, 'Amplitude');
            title(app.SyntheticSignalPreviewAxes, [signalType ' Signal']);
            grid(app.SyntheticSignalPreviewAxes, 'on');
            
            % Ask for the save file dialog for .mat file
            defaultFolder = app.DefaultSavePath;
            defaultFileName = [strrep(lower(signalType), ' ', '_') '_signal.mat'];
            [saveFile, savePath] = uiputfile('*.mat', 'Save Signal As', fullfile(defaultFolder, defaultFileName));
            
            if isequal(saveFile, 0) || isequal(savePath, 0)
                disp('User canceled saving.');
            
                % Refocus app window
                figure(app.UIFigure);
                return;
            end
            
            % Save the signal to the chosen path with the chosen file name
            fullFileName = fullfile(savePath, saveFile);
            save(fullFileName, 'n', 'x', 'Fs');  % Save time instants, signal, and sampling frequency
            
            disp(['Signal saved to: ' fullFileName]);
            
            % Refocus app window
            figure(app.UIFigure);
            
            % Prepare new row for the tables
            newRow = {saveFile, 'Synthetic', Fs};
            
            % List of tables to update
            tableList = {
                app.MicrophoneLoadedSignalsTable;
                app.SyntheticLoadedSignalsTable;
                app.LoadAudioFileLoadedSignalsTable;
                app.HardwareAcquisitionLoadedSignalsTable;
                app.PreprocessingLoadedSignalsTable;
                app.SingleSignalProcessingLoadedSignalsTable;
                app.MultipleSignalLoadedSignalsTable;
                app.FourierTransformLoadedSignalsTable;
                app.CosineTransformLoadedSignalsTable;
                app.WaveletTransformLoadedSignalsTable;
                app.FilteringLoadedSignalsTable;
                app.FilteringLoadedSignalsTable_2;
            };
            
            % Add new row to each table
            for i = 1:length(tableList)
                currentTable = tableList{i};
                currentData = currentTable.Data;
                if isempty(currentData)
                    updatedData = newRow;
                else
                    updatedData = [currentData; newRow];
                end
                currentTable.Data = updatedData;
            end

        end

        % Button pushed function: SyntheticLoadSignalButton
        function SyntheticLoadSignalButtonPushed(app, event)
            % Get the selected row
            selectedRow = app.SyntheticLoadedSignalsTable.Selection;
            
            % Check for valid selection
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a signal from the table first.', 'No Selection');
                return;
            end
            
            % Get file name
            fileName = app.SyntheticLoadedSignalsTable.Data{selectedRow, 1};
            
            % Check if file has .mat extension
            [~, ~, fileExt] = fileparts(fileName);
            if ~strcmpi(fileExt, '.mat')
                uialert(app.UIFigure, 'Only .mat files are supported.', 'Invalid File Type');
                return;
            end
            
            % Build full path
            folderPath = app.DefaultSavePath;
            fullFilePath = fullfile(folderPath, fileName);
            
            % Check if file exists
            if ~isfile(fullFilePath)
                uialert(app.UIFigure, 'The selected file does not exist.', 'File Not Found');
                return;
            end
            
            % Load .mat file
            data = load(fullFilePath);
            
            % Verify required fields
            if ~isfield(data, 'x') || ~isfield(data, 'n') || ~isfield(data, 'Fs')
                uialert(app.UIFigure, 'The .mat file must contain "x", "n", and "Fs".', 'Invalid File');
                return;
            end
            
            % Get data
            x = data.x;
            n = data.n;
            Fs = data.Fs;
            
            % Convert to time in seconds
            t = n / Fs;
            
            % Plot in the corresponding axes
            stem(app.SyntheticSignalPreviewAxes, t, x, 'filled');
            xlabel(app.SyntheticSignalPreviewAxes, 'Time (s)');
            ylabel(app.SyntheticSignalPreviewAxes, 'Amplitude');
            title(app.SyntheticSignalPreviewAxes, ['Loaded: ' fileName], 'Interpreter', 'none');
            grid(app.SyntheticSignalPreviewAxes, 'on');
            
            % (Optional) Save loaded signal in app property
            app.syntheticSignalLoaded = x;
            app.syntheticTimeVector = t;
            app.syntheticFs = Fs;
        end

        % Button pushed function: SyntheticRemoveSignalButton
        function SyntheticRemoveSignalButtonPushed(app, event)
            % Get selected row from SyntheticLoadedSignalsTable
            selectedRow = app.SyntheticLoadedSignalsTable.Selection;
            
            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a file from the table first.', 'No Selection');
                return;
            end
            
            % Get the file name (assumed to be in column 1)
            fileName = app.SyntheticLoadedSignalsTable.Data{selectedRow, 1};
            
            % Build file base name (without extension if needed)
            [~, nameWithoutExt, ~] = fileparts(fileName);
            
            % Folder where files are stored
            folderPath = app.DefaultSavePath;
            
            % Try deleting both .wav and .mat files
            fileWav = fullfile(folderPath, [nameWithoutExt, '.wav']);
            fileMat = fullfile(folderPath, [nameWithoutExt, '.mat']);
            
            if isfile(fileWav)
                delete(fileWav);
            end
            if isfile(fileMat)
                delete(fileMat);
            end
            
            % Tables to update
            tables = {
                'MicrophoneLoadedSignalsTable', ...
                'SyntheticLoadedSignalsTable', ...
                'LoadAudioFileLoadedSignalsTable', ...
                'HardwareAcquisitionLoadedSignalsTable', ...
                'PreprocessingLoadedSignalsTable', ...
                'SingleSignalProcessingLoadedSignalsTable', ...
                'MultipleSignalLoadedSignalsTable', ...
                'FourierTransformLoadedSignalsTable', ...
                'CosineTransformLoadedSignalsTable', ...
                'WaveletTransformLoadedSignalsTable', ...
                'FilteringLoadedSignalsTable',...
                'FilteringLoadedSignalsTable_2'};
        
            % Remove matching file (regardless of extension) from all tables
            for i = 1:length(tables)
                currentData = app.(tables{i}).Data;
                if ~isempty(currentData)
                    % Compare base names without extension
                    baseNames = erase(currentData(:,1), {'.wav', '.mat'});
                    rowMatch = strcmp(baseNames, nameWithoutExt);
                    currentData(rowMatch, :) = [];
                    app.(tables{i}).Data = currentData;
                end
            end
        
            % Clear plot
            cla(app.SyntheticSignalPreviewAxes);
            title(app.SyntheticSignalPreviewAxes, '');
            xlabel(app.SyntheticSignalPreviewAxes, '');
            ylabel(app.SyntheticSignalPreviewAxes, '');
        end

        % Button pushed function: BrowseButton
        function BrowseButtonPushed(app, event)
            % Supported file types
            [fileName, filePath] = uigetfile({'*.wav;*.mp3;*.flac;*.ogg;*.m4a', ...
                'Audio Files (*.wav, *.mp3, *.flac, *.ogg, *.m4a)'}, ...
                'Select an Audio File');
            
            % If user cancels
            if isequal(fileName, 0)
                return;
            end
            
            % Full file path
            fullFilePath = fullfile(filePath, fileName);
            
            % Try to read the audio file
            try
                [y, Fs] = audioread(fullFilePath);
            catch
                uialert(app.UIFigure, 'Unable to read selected audio file.', 'Read Error');
                return;
            end
            
            % Refocus app window
            figure(app.UIFigure);
            
            % Time axis
            t = (0:length(y)-1) / Fs;
            
            % Clear axes
            cla(app.LoadAudioFileSignalPreviewIAxes);
            
            if size(y,2) == 1
                % Mono
                plot(app.LoadAudioFileSignalPreviewIAxes, t, y, 'b');
                legend(app.LoadAudioFileSignalPreviewIAxes, 'Mono', 'Location', 'best');
            else
                % Stereo: plot both channels
                plot(app.LoadAudioFileSignalPreviewIAxes, t, y(:,1), 'b', t, y(:,2), 'r');
                legend(app.LoadAudioFileSignalPreviewIAxes, {'Left Channel', 'Right Channel'}, 'Location', 'best');
            end
            
            % Set title and labels
            title(app.LoadAudioFileSignalPreviewIAxes, fileName, 'Interpreter', 'none');
            xlabel(app.LoadAudioFileSignalPreviewIAxes, 'Time (s)');
            ylabel(app.LoadAudioFileSignalPreviewIAxes, 'Amplitude');
            grid(app.LoadAudioFileSignalPreviewIAxes, 'on');
            
            % Create new row for the tables
            newRow = {fileName, 'Loaded Audio File', Fs};
            
            % List of all tables to update
            tableList = {
                app.MicrophoneLoadedSignalsTable;
                app.SyntheticLoadedSignalsTable;
                app.LoadAudioFileLoadedSignalsTable;
                app.HardwareAcquisitionLoadedSignalsTable;
                app.PreprocessingLoadedSignalsTable;
                app.SingleSignalProcessingLoadedSignalsTable;
                app.MultipleSignalLoadedSignalsTable;
                app.FourierTransformLoadedSignalsTable;
                app.CosineTransformLoadedSignalsTable;
                app.WaveletTransformLoadedSignalsTable;
                app.FilteringLoadedSignalsTable
            };
            
            % Append row to each table
            for i = 1:length(tableList)
                currentTable = tableList{i};
                currentData = currentTable.Data;
                if isempty(currentData)
                    updatedData = newRow;
                else
                    updatedData = [currentData; newRow];
                end
                currentTable.Data = updatedData;
            end
        end

        % Button pushed function: LoadAudioFileLoadSignalButton
        function LoadAudioFileLoadSignalButtonPushed(app, event)
            % Get the selected row from the table
            selectedRow = app.LoadAudioFileLoadedSignalsTable.Selection;
            
            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select an audio file from the table first.', 'No Selection');
                return;
            end
            
            % Get the file name and path
            fileName = app.LoadAudioFileLoadedSignalsTable.Data{selectedRow, 1};
            folderPath = app.DefaultSavePath; % Update path as needed
            fullFilePath = fullfile(folderPath, fileName);
            
            % Check if file exists
            if ~isfile(fullFilePath)
                uialert(app.UIFigure, 'The selected file does not exist.', 'File Not Found');
                return;
            end
            
            try
                % Load audio file
                [audioData, Fs] = audioread(fullFilePath);
                
                % Get number of channels
                numChannels = size(audioData, 2);
                
                % Create time vector
                duration = length(audioData)/Fs;
                t = linspace(0, duration, length(audioData));
                
                % Clear and prepare axes
                cla(app.LoadAudioFileSignalPreviewIAxes);
                hold(app.LoadAudioFileSignalPreviewIAxes, 'on');
                
                % Plot based on number of channels
                if numChannels == 1 % Mono
                    plot(app.LoadAudioFileSignalPreviewIAxes, t, audioData, 'b');
                    legendText = 'Mono Channel';
                else % Stereo
                    plot(app.LoadAudioFileSignalPreviewIAxes, t, audioData(:,1), 'r');
                    plot(app.LoadAudioFileSignalPreviewIAxes, t, audioData(:,2), 'b');
                    legendText = {'Left Channel', 'Right Channel'};
                end
                
                % Configure axes
                hold(app.LoadAudioFileSignalPreviewIAxes, 'off');
                xlabel(app.LoadAudioFileSignalPreviewIAxes, 'Time (s)');
                ylabel(app.LoadAudioFileSignalPreviewIAxes, 'Amplitude');
                title(app.LoadAudioFileSignalPreviewIAxes, ['Audio Signal: ' fileName], 'Interpreter', 'none');
                legend(app.LoadAudioFileSignalPreviewIAxes, legendText);
                grid(app.LoadAudioFileSignalPreviewIAxes, 'on');
                
                % Store data in app properties
                app.audioSignalLoaded = audioData;
                app.audioFs = Fs;
                
            catch ME
                uialert(app.UIFigure, ['Error loading audio file: ' ME.message], 'File Error');
            end
        end

        % Button pushed function: LoadAudioFileRemoveSignalButton
        function LoadAudioFileRemoveSignalButtonPushed(app, event)
            % Get the selected row from the source table
            selectedRow = app.LoadAudioFileLoadedSignalsTable.Selection;
            
            % Check if a row is selected
            if isempty(selectedRow)
                return;
            end
            
            % Get the filename from the selected row
            fileName = app.LoadAudioFileLoadedSignalsTable.Data{selectedRow, 1};
            
            % Define the storage directory (update with your actual path)
            storagePath = 'app.DefaultSavePath\';
            fullFilePath = fullfile(storagePath, fileName);
            
            % Delete the file if it exists
            if isfile(fullFilePath)
                delete(fullFilePath);
            end
            
            % List of all tables to process
            allTables = {
                app.MicrophoneLoadedSignalsTable
                app.SyntheticLoadedSignalsTable
                app.LoadAudioFileLoadedSignalsTable
                app.HardwareAcquisitionLoadedSignalsTable
                app.PreprocessingLoadedSignalsTable
                app.SingleSignalProcessingLoadedSignalsTable
                app.MultipleSignalLoadedSignalsTable
                app.FourierTransformLoadedSignalsTable
                app.CosineTransformLoadedSignalsTable
                app.WaveletTransformLoadedSignalsTable
                app.FilteringLoadedSignalsTable
            };
            
            % Remove the signal from each table
            for i = 1:length(allTables)
                currentTable = allTables{i};
                
                % Skip if table doesn't exist or is empty
                if isempty(currentTable.Data)
                    continue;
                end
                
                % Find and remove matching rows
                if iscell(currentTable.Data(:,1))  % For cell array data
                    matchingRows = strcmp(currentTable.Data(:,1), fileName);
                else  % For string array data
                    matchingRows = (currentTable.Data(:,1) == fileName);
                end
                
                currentTable.Data(matchingRows, :) = [];
            end
            
            % Clear any related app properties if needed
            if isprop(app, 'audioSignalLoaded') && strcmp(app.audioFileName, fileName)
                app.audioSignalLoaded = [];
                app.audioFs = [];
                app.audioFileName = '';
            end
        end

        % Button pushed function: PreprocessingSelectSignalButton
        function PreprocessingSelectSignalButtonPushed(app, event)
            % Get selected row
            selectedRow = app.PreprocessingLoadedSignalsTable.Selection;

            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a file from the table first.', 'No Selection');
                return;
            end

            % Get file information from table
            fileName = app.PreprocessingLoadedSignalsTable.Data{selectedRow, 1};  % File Name column
            Fs = app.PreprocessingLoadedSignalsTable.Data{selectedRow, 3};       % Sample Frequency column

            % Build full file path
            folderPath = app.DefaultSavePath;
            fullFilePath = fullfile(folderPath, fileName);

            % Check if the file exists
            if ~isfile(fullFilePath)
                uialert(app.UIFigure, 'The selected file does not exist.', 'File Not Found');
                return;
            end

            % Determine file type from extension
            [~, ~, fileExt] = fileparts(fullFilePath);
            isAudioFile = any(strcmpi(fileExt, {'.wav', '.mp3', '.ogg', '.flac', '.aac', '.m4a', '.au'}));
            isMatFile = strcmpi(fileExt, '.mat');

            try
                if isMatFile
                    % Load and validate .mat file
                    data = load(fullFilePath);

                    if ~isfield(data, 'x') || ~isfield(data, 'n')
                        uialert(app.UIFigure, 'MAT file must contain "x" (signal) and "n" (sample indices)', 'Invalid MAT File');
                        return;
                    end

                    signalData = data.x;
                    n = data.n;

                    % Use Fs from file if available, otherwise from table
                    if isfield(data, 'Fs')
                        Fs = data.Fs;
                    end

                    t = n / Fs;

                    % Plot with stem for discrete signals
                    stem(app.PreprocessingInputSignalPreviewAxes, t, signalData, 'filled', 'MarkerSize', 3);
                    plotStyle = 'Discrete';

                elseif isAudioFile
                    % Load audio file
                    [signalData, fileFs] = audioread(fullFilePath);

                    % Verify sample rate consistency
                    if exist('fileFs', 'var') && fileFs ~= Fs
                        warning('File sample rate (%d) differs from table value (%d). Using file value.', fileFs, Fs);
                        Fs = fileFs;
                    end

                    t = (0:length(signalData)-1)/Fs;

                    % Handle stereo audio files
                    if size(signalData, 2) == 2  % Stereo
                        % Ask user to select channel(s)
                        [channelIdx, tf] = listdlg('PromptString', 'Select audio channel(s) to process:', ...
                            'SelectionMode', 'single', ...
                            'ListString', {'Left Channel', 'Right Channel', 'Average Both Channels'}, ...
                            'ListSize', [250, 100], ...
                            'Name', 'Channel Selection');

                        if ~tf  % User cancelled
                            return;
                        end

                        % Process selected channel
                        switch channelIdx
                            case 1  % Left channel
                                signalData = signalData(:,1);
                                channelLabel = 'Left Channel';
                            case 2  % Right channel
                                signalData = signalData(:,2);
                                channelLabel = 'Right Channel';
                            case 3  % Average both channels
                                signalData = mean(signalData, 2);
                                channelLabel = 'Averaged Channels';
                        end

                        plotStyle = ['Stereo Audio (' channelLabel ')'];
                    else  % Mono
                        plotStyle = 'Mono Audio';
                    end

                    % Plot with line for continuous signals
                    plot(app.PreprocessingInputSignalPreviewAxes, t, signalData, 'b', 'LineWidth', 1);

                else
                    uialert(app.UIFigure, 'Unsupported file type. Please use .mat or audio files.', 'Invalid File Type');
                    return;
                end

                figure(app.UIFigure); % Refocus app window

                % Configure plot
                grid(app.PreprocessingInputSignalPreviewAxes, 'on');
                xlabel(app.PreprocessingInputSignalPreviewAxes, 'Time (s)');
                ylabel(app.PreprocessingInputSignalPreviewAxes, 'Amplitude');
                title(app.PreprocessingInputSignalPreviewAxes, ...
                    sprintf('%s\n%s • %0.1f kHz • %d samples', fileName, plotStyle, Fs/1000, length(signalData)), ...
                    'Interpreter', 'none');

                if contains(plotStyle, 'Stereo') && ~contains(plotStyle, 'Averaged')
                    legend(app.PreprocessingInputSignalPreviewAxes, channelLabel, 'Location', 'best');
                end

                % Store data in app properties
                app.CurrentSignal = signalData;
                app.CurrentTime = t;
                app.CurrentFs = Fs;
                app.CurrentFileName = fileName;

            catch ME
                uialert(app.UIFigure, sprintf('Error loading file:\n%s', ME.message), 'File Error');
            end
        end

        % Button pushed function: NormalizeButton
        function NormalizeButtonPushed(app, event)
            % Check if there's a signal selected in the preprocessing table
            selectedRow = app.PreprocessingLoadedSignalsTable.Selection;
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a signal from the table first.', 'No Selection');
                return;
            end
            
            % Get file information
            fileName = app.PreprocessingLoadedSignalsTable.Data{selectedRow, 1};
            folderPath = app.DefaultSavePath;
            fullFilePath = fullfile(folderPath, fileName);
            
            % Check file existence
            if ~isfile(fullFilePath)
                uialert(app.UIFigure, 'The selected file does not exist.', 'File Not Found');
                return;
            end
            
            % Determine file type
            [~, ~, fileExt] = fileparts(fullFilePath);
            isAudioFile = any(strcmpi(fileExt, {'.wav', '.mp3', '.ogg', '.flac', '.m4a', '.aac', '.au'}));
            isMatFile = strcmpi(fileExt, '.mat');
            
            try
                % Load the file according to its type
                if isAudioFile
                    % Load audio file
                    [x, Fs] = audioread(fullFilePath);
                    n = (0:length(x)-1)'; % Create sample indices vector
                    t = n / Fs;
                    
                    % Plot original signal (continuous)
                    cla(app.PreprocessingInputSignalPreviewAxes);
                    if size(x, 2) == 1 % Mono
                        plot(app.PreprocessingInputSignalPreviewAxes, t, x, 'b', 'LineWidth', 1.5);
                    else % Stereo
                        plot(app.PreprocessingInputSignalPreviewAxes, t, x(:,1), 'r', 'LineWidth', 1);
                        plot(app.PreprocessingInputSignalPreviewAxes, t, x(:,2), 'b', 'LineWidth', 1);
                        legend(app.PreprocessingInputSignalPreviewAxes, {'Left', 'Right'}, 'Location', 'best');
                    end
                    title(app.PreprocessingInputSignalPreviewAxes, ['Original Audio: ' fileName], 'Interpreter', 'none');
                    
                elseif isMatFile
                    % Load .mat file
                    data = load(fullFilePath);
                    
                    % Validate required fields
                    if ~isfield(data, 'x') || ~isfield(data, 'n') || ~isfield(data, 'Fs')
                        uialert(app.UIFigure, 'The .mat file must contain "x", "n", and "Fs".', 'Invalid File');
                        return;
                    end
                    
                    x = data.x;
                    n = data.n;
                    Fs = data.Fs;
                    t = n / Fs;
                    
                    % Plot original signal (discrete)
                    cla(app.PreprocessingInputSignalPreviewAxes);
                    stem(app.PreprocessingInputSignalPreviewAxes, t, x, 'filled', 'MarkerSize', 3);
                    title(app.PreprocessingInputSignalPreviewAxes, ['Original Signal: ' fileName], 'Interpreter', 'none');
                    
                else
                    uialert(app.UIFigure, 'Unsupported file type. Please use .mat or audio files.', 'Invalid File Type');
                    return;
                end
                
                % Common plot configuration
                xlabel(app.PreprocessingInputSignalPreviewAxes, 'Time (s)');
                ylabel(app.PreprocessingInputSignalPreviewAxes, 'Amplitude');
                grid(app.PreprocessingInputSignalPreviewAxes, 'on');
                
                % Store original signal data
                app.OriginalSignal = x;
                app.OriginalFs = Fs;
                app.OriginalFileName = fileName;
                app.OriginalTime = t;
                app.IsAudioSignal = isAudioFile;
                
                % Apply normalization based on dropdown selection
                normType = app.SelectNormalizationDropDown.Value;
                
                switch normType
                    case '0 to 1'
                        x_normalized = (x - min(x)) / (max(x) - min(x));
                        suffix = 'Normalized0';
                        typeLabel = 'Norm 0-1';
                        
                    case '-1 to 1'
                        x_normalized = 2 * ((x - min(x)) / (max(x) - min(x))) - 1;
                        suffix = 'Normalized1';
                        typeLabel = 'Norm -1-1';
                        
                    case 'Z-score (Standard)'
                        x_normalized = (x - mean(x)) / std(x);
                        suffix = 'NormalizedZ';
                        typeLabel = 'Norm Z-score';
                end
                
                % Plot normalized signal in output axes
                cla(app.PreprocessingOutputSignalPreviewAxes);
                
                if isAudioFile
                    % Continuous plot for audio
                    if size(x_normalized, 2) == 1 % Mono
                        plot(app.PreprocessingOutputSignalPreviewAxes, t, x_normalized, 'b', 'LineWidth', 1.5);
                    else % Stereo
                        plot(app.PreprocessingOutputSignalPreviewAxes, t, x_normalized(:,1), 'r', 'LineWidth', 1);
                        plot(app.PreprocessingOutputSignalPreviewAxes, t, x_normalized(:,2), 'b', 'LineWidth', 1);
                        legend(app.PreprocessingOutputSignalPreviewAxes, {'Left', 'Right'}, 'Location', 'best');
                    end
                else
                    % Discrete plot for .mat signals
                    stem(app.PreprocessingOutputSignalPreviewAxes, t, x_normalized, 'filled', 'MarkerSize', 3);
                end
                
                xlabel(app.PreprocessingOutputSignalPreviewAxes, 'Time (s)');
                ylabel(app.PreprocessingOutputSignalPreviewAxes, 'Amplitude');
                title(app.PreprocessingOutputSignalPreviewAxes, ['Normalized (' normType '): ' fileName], 'Interpreter', 'none');
                grid(app.PreprocessingOutputSignalPreviewAxes, 'on');
                
                % Save normalized signal with standard variable names (x, n, Fs)
                [~, name, ext] = fileparts(fileName);
                newFileName = [name '_' suffix ext];
                newFilePath = fullfile(folderPath, newFileName);
                
                % Save with standard variable names
                x = x_normalized; % Use normalized data
                % n remains the same as original (time samples don't change)
                save(newFilePath, 'x', 'n', 'Fs');
                
                % If it was originally an audio file, also save as audio file
                if isAudioFile
                    audiowrite(newFilePath, x, Fs);
                end
                
                allTables = {
                app.MicrophoneLoadedSignalsTable
                app.SyntheticLoadedSignalsTable
                app.LoadAudioFileLoadedSignalsTable
                app.HardwareAcquisitionLoadedSignalsTable
                app.PreprocessingLoadedSignalsTable
                app.SingleSignalProcessingLoadedSignalsTable
                app.MultipleSignalLoadedSignalsTable
                app.FourierTransformLoadedSignalsTable
                app.CosineTransformLoadedSignalsTable
                app.WaveletTransformLoadedSignalsTable
                app.FilteringLoadedSignalsTable
                app.FilteringLoadedSignalsTable_2
            };
                
                for i = 1:length(allTables)
                    try
                        if isobject(allTables{i}) % Check if table object exists
                            newRow = {newFileName, typeLabel, Fs};
                            allTables{i}.Data = [allTables{i}.Data; newRow];
                        end
                    catch
                        continue; % Skip if table doesn't exist
                    end
                end
                
                % Store normalized data in app (using _normalized suffix only internally)
                app.NormalizedSignal = x_normalized;
                app.NormalizedFs = Fs;
                app.NormalizedFileName = newFileName;
                
            catch ME
                uialert(app.UIFigure, ['Error: ' ME.message], 'Processing Error');
            end
        end

        % Button pushed function: SyntheticBrowseButton
        function SyntheticBrowseButtonPushed(app, event)
            % Open file dialog to select .mat file
            [fileName, pathName] = uigetfile('*.mat', 'Select a Synthetic Signal File');
            
            % Check if user canceled the selection
            if isequal(fileName, 0)
                return; % User pressed cancel
            end
            
            % Build full file path
            fullFilePath = fullfile(pathName, fileName);
            
            try
                % Load the .mat file
                data = load(fullFilePath);
                
                % Verify required fields
                if ~isfield(data, 'x') || ~isfield(data, 'n') || ~isfield(data, 'Fs')
                    uialert(app.UIFigure, 'The .mat file must contain "x", "n", and "Fs" fields.', 'Invalid File');
                    return;
                end
                
                % Get signal data
                x = data.x;
                n = data.n;
                Fs = data.Fs;
                
                % Create time vector
                t = n / Fs;
            
                % Refocus app window
                figure(app.UIFigure);
                
                % Plot the signal
                stem(app.SyntheticSignalPreviewAxes, t, x, 'filled', 'MarkerSize', 3);
                xlabel(app.SyntheticSignalPreviewAxes, 'Time (s)');
                ylabel(app.SyntheticSignalPreviewAxes, 'Amplitude');
                title(app.SyntheticSignalPreviewAxes, ['Synthetic Signal: ' fileName], 'Interpreter', 'none');
                grid(app.SyntheticSignalPreviewAxes, 'on');
                
                % Save file to your designated folder
                savePath = app.DefaultSavePath;
                if ~isfolder(savePath)
                    mkdir(savePath);
                end
                save(fullfile(savePath, fileName), 'x', 'n', 'Fs');
                
                % Add to all tables
                tables = {
                app.MicrophoneLoadedSignalsTable
                app.SyntheticLoadedSignalsTable
                app.LoadAudioFileLoadedSignalsTable
                app.HardwareAcquisitionLoadedSignalsTable
                app.PreprocessingLoadedSignalsTable
                app.SingleSignalProcessingLoadedSignalsTable
                app.MultipleSignalLoadedSignalsTable
                app.FourierTransformLoadedSignalsTable
                app.CosineTransformLoadedSignalsTable
                app.WaveletTransformLoadedSignalsTable
                app.FilteringLoadedSignalsTable
                app.FilteringLoadedSignalsTable_2
            };
                
                % Create new row data
                newRow = {fileName, 'Loaded Synthetic Signal', Fs};
                
                % Add to each table
                for i = 1:length(tables)
                    try
                        if isobject(tables{i}) % Check if table object exists
                            tables{i}.Data = [tables{i}.Data; newRow];
                        end
                    catch
                        continue; % Skip if table doesn't exist
                    end
                end
                
                % Store in app properties
                app.syntheticSignalLoaded = x;
                app.syntheticTimeVector = t;
                app.syntheticFs = Fs;
                
            catch ME
                uialert(app.UIFigure, ['Error loading file: ' ME.message], 'File Error');
            end
        end

        % Button pushed function: SingleSignalProcessingSelectSignalButton
        function SingleSignalProcessingSelectSignalButtonPushed(app, event)
            selectedRow = app.SingleSignalProcessingLoadedSignalsTable.Selection;

            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a signal from the table first.', 'No Selection');
                return;
            end

            % Get file information from the selected row
            fileName = app.SingleSignalProcessingLoadedSignalsTable.Data{selectedRow, 1};  % Column 1: File Name
            Fs = app.SingleSignalProcessingLoadedSignalsTable.Data{selectedRow, 3};       % Column 3: Sample Frequency

            % Build full file path
            folderPath = app.DefaultSavePath;
            fullFilePath = fullfile(folderPath, fileName);

            % Check if the file exists
            if ~isfile(fullFilePath)
                uialert(app.UIFigure, 'The selected file does not exist.', 'File Not Found');
                return;
            end

            try
                % Determine file type from extension
                [~, ~, fileExt] = fileparts(fullFilePath);
                isAudioFile = any(strcmpi(fileExt, {'.wav', '.mp3', '.ogg', '.flac', '.m4a', '.aac', '.au'}));
                isMatFile = strcmpi(fileExt, '.mat');

                % Load the file according to its type
                if isMatFile
                    % Load .mat file
                    data = load(fullFilePath);

                    % Verify required fields
                    if ~isfield(data, 'x') || ~isfield(data, 'n') || ~isfield(data, 'Fs')
                        uialert(app.UIFigure, 'The .mat file must contain "x", "n", and "Fs".', 'Invalid File');
                        return;
                    end

                    x = data.x;
                    t = data.n / data.Fs; % Convert sample indices to time

                    % Plot discrete signal
                    stem(app.SingleSignalProcessingInputPreviewAxes, t, x, 'filled', 'MarkerSize', 3);
                    plotStyle = 'Discrete';

                elseif isAudioFile
                    % Load audio file
                    [x, Fs] = audioread(fullFilePath);
                    t = (0:length(x)-1)/Fs;

                    % Handle stereo audio files
                    if size(x, 2) == 2 % Stereo
                        app.IsStereo = true;
                        % Ask user to select processing option
                        [indx, tf] = listdlg('PromptString', 'Select processing option:', ...
                            'SelectionMode', 'single', ...
                            'ListString', {'Left Channel', 'Right Channel', 'Average Both Channels'}, ...
                            'ListSize', [220, 120], ...
                            'Name', 'Channel Selection');

                        if ~tf || isempty(indx)
                            return; % User canceled
                        end

                        % Process selected option
                        switch indx
                            case 1 % Left channel
                                app.ActiveChannel = 1;
                                app.LeftChannelOriginal = x(:,1);     % Store left channel
                                app.RightChannelOriginal = x(:,2);    % Store right channel 
                                channel = x(:, 1);
                                channelName = 'Left Channel';
                            case 2 % Right channel
                                app.ActiveChannel = 2;
                                app.LeftChannelOriginal = x(:,1);     % Store left channel
                                app.RightChannelOriginal = x(:,2);    % Store right channel 
                                channel = x(:, 2);
                                channelName = 'Right Channel';
                            case 3 % Average both channels
                                channel = mean(x, 2);
                                channelName = 'Averaged Channels';
                        end

                        figure(app.UIFigure); % Refocus app window

                        % Plot the selected channel
                        plot(app.SingleSignalProcessingInputPreviewAxes, t, channel, 'b', 'LineWidth', 1.5);
                        legend(app.SingleSignalProcessingInputPreviewAxes, channelName, 'Location', 'best');

                        plotStyle = 'Stereo Audio (Single Channel)';

                        % Store only the selected channel
                        x = channel;

                    else % Mono
                        plot(app.SingleSignalProcessingInputPreviewAxes, t, x, 'b', 'LineWidth', 1.5);
                        plotStyle = 'Mono Audio';
                    end

                else
                    uialert(app.UIFigure, 'Unsupported file type. Please use .mat or audio files.', 'Invalid File Type');
                    return;
                end

                % Configure plot
                xlabel(app.SingleSignalProcessingInputPreviewAxes, 'Time (s)');
                ylabel(app.SingleSignalProcessingInputPreviewAxes, 'Amplitude');
                title(app.SingleSignalProcessingInputPreviewAxes, ...
                    sprintf('%s\n%s • %0.1f kHz', fileName, plotStyle, Fs/1000), ...
                    'Interpreter', 'none');
                grid(app.SingleSignalProcessingInputPreviewAxes, 'on');

                % Store loaded signal in app properties
                app.SingleSignalProcessing_InputSignal = x;
                app.SingleSignalProcessing_TimeVector = t;
                app.SingleSignalProcessing_Fs = Fs;
                app.SingleSignalProcessing_FileName = fileName;

            catch ME
                uialert(app.UIFigure, ['Error loading file: ' ME.message], 'File Error');
            end
        end

        % Button pushed function: PreprocessingRemoveSignalButton
        function PreprocessingRemoveSignalButtonPushed(app, event)
            % Get the selected row from the preprocessing table
            selectedRow = app.PreprocessingLoadedSignalsTable.Selection;
            
            % Silently return if no selection
            if isempty(selectedRow)
                return;
            end
            
            % Get the filename from the selected row
            fileName = app.PreprocessingLoadedSignalsTable.Data{selectedRow, 1};
            
            % Build full file path
            folderPath = app.DefaultSavePath;
            fullFilePath = fullfile(folderPath, fileName);
            
            % Delete the file if it exists (no confirmation)
            if isfile(fullFilePath)
                try
                    delete(fullFilePath);
                catch
                    % Silently continue even if deletion fails
                end
            end
            
            % List of all tables to process
            allTables = {
                app.MicrophoneLoadedSignalsTable
                app.SyntheticLoadedSignalsTable
                app.LoadAudioFileLoadedSignalsTable
                app.HardwareAcquisitionLoadedSignalsTable
                app.PreprocessingLoadedSignalsTable
                app.SingleSignalProcessingLoadedSignalsTable
                app.MultipleSignalLoadedSignalsTable
                app.FourierTransformLoadedSignalsTable
                app.CosineTransformLoadedSignalsTable
                app.WaveletTransformLoadedSignalsTable
                app.FilteringLoadedSignalsTable
                app.FilteringLoadedSignalsTable_2
            };
            
            % Remove the signal from each table
            for i = 1:length(allTables)
                try
                    % Skip if table doesn't exist or is empty
                    if isempty(allTables{i}.Data)
                        continue;
                    end
                    
                    % Find and remove matching rows
                    matchingRows = strcmp(allTables{i}.Data(:,1), fileName);
                    allTables{i}.Data(matchingRows, :) = [];
                    
                    % Clear selection if this was the current table
                    if allTables{i} == app.PreprocessingLoadedSignalsTable
                        allTables{i}.Selection = [];
                    end
                catch
                    continue; % Skip any problematic tables
                end
            end
            
            % Clear any related plots silently
            try
                cla(app.PreprocessingInputSignalPreviewAxes);
                title(app.PreprocessingInputSignalPreviewAxes, '');
                cla(app.PreprocessingOutputSignalPreviewAxes);
                title(app.PreprocessingOutputSignalPreviewAxes, '');
            catch
            end
            
            % Clear app properties if they reference this file
            if isprop(app, 'OriginalFileName') && strcmp(app.OriginalFileName, fileName)
                app.OriginalSignal = [];
                app.OriginalFs = [];
                app.OriginalFileName = '';
                app.OriginalTime = [];
            end
            
            if isprop(app, 'NormalizedFileName') && strcmp(app.NormalizedFileName, fileName)
                app.NormalizedSignal = [];
                app.NormalizedFs = [];
                app.NormalizedFileName = '';
            end
        end

        % Button pushed function: SingleSignalProcessingRemoveSignalButton
        function SingleSignalProcessingRemoveSignalButtonPushed(app, event)
            % Get selected row index
            selectedRow = app.SingleSignalProcessingLoadedSignalsTable.Selection;
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a row to delete.', 'No Selection');
                return;
            end
        
            % Get file name from selected row
            rowIndex = selectedRow(1);
            fileName = app.SingleSignalProcessingLoadedSignalsTable.Data{rowIndex, 1};
            fullPathMAT = fullfile(app.DefaultSavePath, [fileName '.mat']);
            fullPathWAV = fullfile(app.DefaultSavePath, [fileName '.wav']);
        
            % Try deleting .mat and .wav if they exist
            try
                if exist(fullPathMAT, 'file')
                    delete(fullPathMAT);
                end
                if exist(fullPathWAV, 'file')
                    delete(fullPathWAV);
                end
            catch
                uialert(app.UIFigure, 'Failed to delete file from disk.', 'File Error');
            end
        
            % Define all tables to remove the entry from
            tables = {
                app.MicrophoneLoadedSignalsTable
                app.SyntheticLoadedSignalsTable
                app.LoadAudioFileLoadedSignalsTable
                app.HardwareAcquisitionLoadedSignalsTable
                app.PreprocessingLoadedSignalsTable
                app.SingleSignalProcessingLoadedSignalsTable
                app.MultipleSignalLoadedSignalsTable
                app.FourierTransformLoadedSignalsTable
                app.CosineTransformLoadedSignalsTable
                app.WaveletTransformLoadedSignalsTable
                app.FilteringLoadedSignalsTable
                app.FilteringLoadedSignalsTable_2
            };
        
            % Loop over each table and remove row with matching file name
            for i = 1:length(tables)
                tbl = tables{i};
                try
                    data = tbl.Data;
                    if isempty(data)
                        continue;
                    end
                    matchIdx = strcmp(data(:,1), fileName); % Match on file name
                    data(matchIdx, :) = []; % Remove matching rows
                    tbl.Data = data;
                catch
                    continue;
                end
            end
        end

        % Button pushed function: SingleSignalApplyButton
        function SingleSignalApplyButtonPushed(app, event)
            % Get the selected operation from the dropdown
            selectedOperation = app.SingleSignalSelectOperationDropDown.Value;

            % Check if a signal has been loaded
            if isempty(app.SingleSignalProcessing_InputSignal)
                uialert(app.UIFigure, 'Please load a signal first.', 'No Signal Loaded');
                return;
            end

            % Extract signal data
            x = app.SingleSignalProcessing_InputSignal;
            Fs = app.SingleSignalProcessing_Fs;
            t = app.SingleSignalProcessing_TimeVector;

            switch selectedOperation
                case 'Time reflection'
                    % Reflect the signal in time
                    x = flip(x);

                case 'Time displacement'
                    % Prompt user for time displacement (seconds)
                    timeDisplacement = str2double(inputdlg('Enter time displacement in seconds:', 'Time Displacement', [1 35], {'0'}));
                    if isempty(timeDisplacement)
                        return;
                    end
                    % Shift the signal in time
                    t = t + timeDisplacement;

                case 'Downsampling'
                    % Prompt user for new sampling frequency or downsampling factor
                    downsampleFactor = str2double(inputdlg('Enter downsampling factor:', 'Downsampling', [1 35], {'2'}));
                    if isempty(downsampleFactor) || downsampleFactor <= 1
                        return;
                    end
                    % Downsample the signal
                    x = downsample(x, downsampleFactor);
                    Fs = Fs / downsampleFactor;
                    t = t(1:downsampleFactor:end);

                case 'Upsampling'
                    % Ask the user for the upsampling factor
                    prompt = {'Enter the upsampling factor (integer):'};
                    dlgtitle = 'Upsampling';
                    dims = [1 35];
                    definput = {'2'}; % Default value of 2
                    answer = inputdlg(prompt, dlgtitle, dims, definput);

                    if isempty(answer)
                        return;
                    end

                    upFactor = str2double(answer{1});

                    if mod(upFactor, 1) ~= 0 || upFactor <= 1
                        uialert(app.UIFigure, 'Upsampling factor must be an integer greater than 1.', 'Invalid Input');
                        return;
                    end

                    % Calculate the new time vector after upsampling
                    newTimeVec = linspace(t(1), t(end), length(t) * upFactor);

                    % Perform linear interpolation for upsampling
                    xUpSampled = interp1(t, x, newTimeVec, 'linear');

                    % Update signal and time vector
                    t = newTimeVec;
                    x = xUpSampled;
                    Fs = Fs * upFactor;

                case 'Amplitude scaling'
                    % Prompt user for scaling factor
                    scalingFactor = str2double(inputdlg('Enter amplitude scaling factor:', 'Amplitude Scaling', [1 35], {'1'}));
                    if isempty(scalingFactor)
                        return;
                    end
                    % Scale the amplitude
                    x = x * scalingFactor;

                case 'Exponentiation'
                    % Prompt user for exponent value
                    exponent = str2double(inputdlg('Enter exponent value:', 'Exponentiation', [1 35], {'2'}));
                    if isempty(exponent)
                        return;
                    end
                    % Apply exponentiation
                    x = x .^ exponent;

                case 'Logarithm'
                    % Prompt user for logarithm base
                    logBase = str2double(inputdlg('Enter logarithm base (e.g., 10):', 'Logarithm', [1 35], {'10'}));
                    if isempty(logBase)
                        return;
                    end
                    % Apply logarithm
                    x = log(x) / log(logBase);  % Change to natural log if logBase is e
                    uialert(app.UIFigure, 'Logarithm applied to the signal.', 'Operation Complete');

                case 'Play Signal Forward'
                    % Play the signal forward (no changes)
                    sound(x, Fs);
                    % Refocus app window
                    figure(app.UIFigure);
                    return;  % Don't save or add to tables

                case 'Play Signal Reverse'
                    % Play the signal in reverse
                    sound(flipud(x), Fs);
                    % Refocus app window
                    figure(app.UIFigure);
                    return;  % Don't save or add to tables

                case 'Add Echo'
                    % Prompt user for echo parameters
                    A1 = str2double(inputdlg('Enter A1 (amplitude of first echo):', 'Echo Coefficients', [1 35], {'0.5'}));
                    A2 = str2double(inputdlg('Enter A2 (amplitude of second echo):', 'Echo Coefficients', [1 35], {'0.3'}));
                    A3 = str2double(inputdlg('Enter A3 (amplitude of third echo):', 'Echo Coefficients', [1 35], {'0.1'}));
                    k1 = str2double(inputdlg('Enter k1 (delay of first echo in samples):', 'Echo Delays', [1 35], {'1000'}));
                    k2 = str2double(inputdlg('Enter k2 (delay of second echo in samples):', 'Echo Delays', [1 35], {'2000'}));
                    k3 = str2double(inputdlg('Enter k3 (delay of third echo in samples):', 'Echo Delays', [1 35], {'3000'}));

                    % Validate delays
                    if k1 >= k2 || k2 >= k3
                        uialert(app.UIFigure, 'Delays must satisfy k1 < k2 < k3.', 'Invalid Delays');
                        return;
                    end

                    % Add echo to the signal
                    y = x + A1 * [zeros(k1, 1); x(1:end-k1)] + A2 * [zeros(k2, 1); x(1:end-k2)] + A3 * [zeros(k3, 1); x(1:end-k3)];
                    x = y;  % Update signal with echo
                    % Play the modified signal with echo
                    sound(x, Fs);  % Play with the same sample rate (Fs)

                case 'Volume Envelope'
                    % Prompt user for envelope type
                    envelopeType = questdlg('Choose the type of volume envelope:', ...
                        'Volume Envelope', 'Constant', 'Linear', 'Cancel', 'Constant');

                    if isempty(envelopeType) || strcmp(envelopeType, 'Cancel')
                        return;
                    end

                    switch envelopeType
                        case 'Constant'
                            % Ask user for constant volume level
                            answer = inputdlg('Enter constant volume level:', ...
                                'Constant Volume', [1 35], {'0.5'});
                            if isempty(answer), return; end
                            level = str2double(answer{1});
                            x = x * level;

                        case 'Linear'
                            % Ask user for envelope direction
                            direction = questdlg('Choose envelope direction:', ...
                                'Envelope Direction', 'Increasing', 'Decreasing', 'Cancel', 'Increasing');
                            if isempty(direction) || strcmp(direction, 'Cancel')
                                return;
                            end

                            % Ask for min and max volume levels
                            prompt = {'Enter minimum volume:', 'Enter maximum volume:'};
                            definput = {'0.0', '1.0'};
                            answer = inputdlg(prompt, 'Linear Volume Envelope Limits', [1 35], definput);
                            if isempty(answer), return; end
                            volMin = str2double(answer{1});
                            volMax = str2double(answer{2});
                            if any(isnan([volMin, volMax])) || volMin > volMax
                                uialert(app.UIFigure, 'Invalid volume limits.', 'Error');
                                return;
                            end

                            if strcmp(direction, 'Increasing')
                                envelope = linspace(volMin, volMax, length(x));
                            else % Decreasing
                                envelope = linspace(volMax, volMin, length(x));
                            end
                            x = x .* envelope';
                    end

                otherwise
                    uialert(app.UIFigure, 'Invalid operation selected.', 'Operation Error');
            end

            if app.IsStereo
                % Create stereo output by combining processed and unprocessed channels
                stereoOutput = zeros(length(x), 2); % Initialize stereo matrix

                switch app.ActiveChannel
                    case 1 % Left channel was processed
                        stereoOutput(:,1) = x; % Processed left channel
                        stereoOutput(:,2) = app.RightChannelOriginal; % Original right channel

                    case 2 % Right channel was processed
                        stereoOutput(:,1) = app.LeftChannelOriginal; % Original left channel
                        stereoOutput(:,2) = x; % Processed right channel

                    case 3 % Average was used (both channels processed)
                        stereoOutput(:,1) = x; % Processed left
                        stereoOutput(:,2) = x; % Processed right
                end

                % Use the stereo output for saving
                x_save = stereoOutput;
            else
                % For mono files, use as is
                x_save = x;
            end

            % Then modify your saving section to always save stereo audio as WAV:
            [~, baseFileName, ext] = fileparts(app.SingleSignalProcessing_FileName);
            operationName = strrep(selectedOperation, ' ', '_');

            if app.IsStereo
                % For stereo files, force WAV output
                newFileName = [baseFileName, '_', operationName, '_stereo.wav'];
                fullSavePath = fullfile(app.DefaultSavePath, newFileName);

                % Handle duplicates
                counter = 1;
                while exist(fullSavePath, 'file')
                    newFileName = [baseFileName, '', operationName, '_stereo', num2str(counter), '.wav'];
                    fullSavePath = fullfile(app.DefaultSavePath, newFileName);
                    counter = counter + 1;
                end

                % Save as stereo WAV (no normalization)
                audiowrite(fullSavePath, x_save, Fs);

            elseif strcmpi(ext, '.wav') || strcmpi(ext, '.mp3')
                % For original mono audio files
                newFileName = [baseFileName, '_', operationName, '.wav'];
                fullSavePath = fullfile(app.DefaultSavePath, newFileName);

                % Handle duplicates
                counter = 1;
                while exist(fullSavePath, 'file')
                    newFileName = [baseFileName, '', operationName, '', num2str(counter), '.wav'];
                    fullSavePath = fullfile(app.DefaultSavePath, newFileName);
                    counter = counter + 1;
                end

                % Save as mono WAV
                audiowrite(fullSavePath, x_save, Fs);

            else
                % For MAT files (non-audio)
                newFileName = [baseFileName, '_', operationName, '.mat'];
                fullSavePath = fullfile(app.DefaultSavePath, newFileName);

                % Handle duplicates
                counter = 1;
                while exist(fullSavePath, 'file')
                    newFileName = [baseFileName, '', operationName, '', num2str(counter), '.mat'];
                    fullSavePath = fullfile(app.DefaultSavePath, newFileName);
                    counter = counter + 1;
                end
                x = x_save
                % Save as MAT file
                n = (0:length(x)-1)';
                save(fullSavePath, 'x', 'n', 'Fs');
            end
            % Add to all tables
            tables = {
                app.MicrophoneLoadedSignalsTable
                app.SyntheticLoadedSignalsTable
                app.LoadAudioFileLoadedSignalsTable
                app.HardwareAcquisitionLoadedSignalsTable
                app.PreprocessingLoadedSignalsTable
                app.SingleSignalProcessingLoadedSignalsTable
                app.MultipleSignalLoadedSignalsTable
                app.FourierTransformLoadedSignalsTable
                app.CosineTransformLoadedSignalsTable
                app.WaveletTransformLoadedSignalsTable
                app.FilteringLoadedSignalsTable
                };

            % Create new row data
            newRow = {newFileName, ['Processed Signal - ' selectedOperation], Fs};

            % Add to each table
            for i = 1:length(tables)
                try
                    if isobject(tables{i}) % Check if table object exists
                        tables{i}.Data = [tables{i}.Data; newRow];
                    end
                catch
                    continue; % Skip if table doesn't exist
                end
            end

            % Update the output plot with the modified signal
            stem(app.SingleSignalProcessingOutputPreviewAxes, t, x, 'filled', 'MarkerSize', 3);
            xlabel(app.SingleSignalProcessingOutputPreviewAxes, 'Time (s)');
            ylabel(app.SingleSignalProcessingOutputPreviewAxes, 'Amplitude');
            title(app.SingleSignalProcessingOutputPreviewAxes, 'Processed Signal (Point by Point)');
            grid(app.SingleSignalProcessingOutputPreviewAxes, 'on');
        end

        % Button pushed function: MultipleSignalSelectSignal1Button
        function MultipleSignalSelectSignal1ButtonPushed(app, event)
                        % Get the selected row from the table
            selectedRow = app.MultipleSignalLoadedSignalsTable.Selection;

            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a signal from the table first.', 'No Selection');
                return;
            end

            % Get file information from the selected row
            fileName = app.MultipleSignalLoadedSignalsTable.Data{selectedRow, 1};
            Fs = app.MultipleSignalLoadedSignalsTable.Data{selectedRow, 3};

            % Build full file path
            folderPath = app.DefaultSavePath;
            fullFilePath = fullfile(folderPath, fileName);

            % Check if the file exists
            if ~isfile(fullFilePath)
                uialert(app.UIFigure, 'The selected file does not exist.', 'File Not Found');
                return;
            end

            try
                % Clear ALL stereo signals if they exist (from either Signal 1 or Signal 2)
                clearAllStereoSignals(app);
                % Clear previous Signal 1 plots if they exist
                clearSignalPlots(app, 1);

                % Determine file type from extension
                [~, ~, fileExt] = fileparts(fullFilePath);
                isAudioFile = any(strcmpi(fileExt, {'.wav', '.mp3', '.ogg', '.flac', '.m4a', '.aac', '.au'}));
                isMatFile = strcmpi(fileExt, '.mat');

                % Load the file according to its type
                if isMatFile
                    data = load(fullFilePath);

                    if ~isfield(data, 'x') || ~isfield(data, 'n')
                        uialert(app.UIFigure, 'MAT file must contain "x" (signal) and "n" (sample indices)', 'Invalid MAT File');
                        return;
                    end

                    x = data.x;
                    t = data.n / data.Fs;

                    % Plot Signal 1 in blue
                    hold(app.MultipleSignalInputSignalsPreviewAxes, 'on');
                    stem(app.MultipleSignalInputSignalsPreviewAxes, t, x, 'b', 'filled', 'MarkerSize', 3, 'DisplayName', 'Signal 1');
                    hold(app.MultipleSignalInputSignalsPreviewAxes, 'off');

                elseif isAudioFile
                    [x, Fs] = audioread(fullFilePath);
                    t = (0:length(x)-1)/Fs;

                    hold(app.MultipleSignalInputSignalsPreviewAxes, 'on');
                    if size(x, 2) == 1 % Mono
                        plot(app.MultipleSignalInputSignalsPreviewAxes, t, x, 'b', 'LineWidth', 1.5, 'DisplayName', 'Signal 1 (Mono)');
                    else % Stereo
                        plot(app.MultipleSignalInputSignalsPreviewAxes, t, x(:,1), 'b', 'LineWidth', 1, 'DisplayName', 'Signal 1 (Left)');
                        plot(app.MultipleSignalInputSignalsPreviewAxes, t, x(:,2), 'r', 'LineWidth', 1, 'DisplayName', 'Signal 1 (Right)');
                    end
                    hold(app.MultipleSignalInputSignalsPreviewAxes, 'off');

                else
                    uialert(app.UIFigure, 'Unsupported file type. Please use .mat or audio files.', 'Invalid File Type');
                    return;
                end

                % Store Signal 1 data
                app.MultipleSignal_Signal1 = x;
                app.MultipleSignal_Signal1_Time = t;
                app.MultipleSignal_Signal1_Fs = Fs;
                app.MultipleSignal_Signal1_FileName = fileName;
                app.MultipleSignal_Signal1_IsStereo = (isAudioFile && size(x,2) > 1);

                % Update plot labels and legend
                updatePlotLabels(app);

            catch ME
                uialert(app.UIFigure, ['Error loading file: ' ME.message], 'File Error');
            end

        end

        % Button pushed function: MultipleSignalSelectSignal2Button
        function MultipleSignalSelectSignal2ButtonPushed(app, event)
                       % Get the selected row from the table
            selectedRow = app.MultipleSignalLoadedSignalsTable.Selection;

            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a signal from the table first.', 'No Selection');
                return;
            end

            % Get file information from the selected row
            fileName = app.MultipleSignalLoadedSignalsTable.Data{selectedRow, 1};
            Fs = app.MultipleSignalLoadedSignalsTable.Data{selectedRow, 3};

            % Build full file path
            folderPath = app.DefaultSavePath;
            fullFilePath = fullfile(folderPath, fileName);

            % Check if the file exists
            if ~isfile(fullFilePath)
                uialert(app.UIFigure, 'The selected file does not exist.', 'File Not Found');
                return;
            end

            try
                % Clear ALL stereo signals if they exist (from either Signal 1 or Signal 2)
                clearAllStereoSignals(app);
                % Clear previous Signal 2 plots if they exist
                clearSignalPlots(app, 2);

                % Determine file type from extension
                [~, ~, fileExt] = fileparts(fullFilePath);
                isAudioFile = any(strcmpi(fileExt, {'.wav', '.mp3', '.ogg', '.flac', '.m4a', '.aac', '.au'}));
                isMatFile = strcmpi(fileExt, '.mat');

                % Load the file according to its type
                if isMatFile
                    data = load(fullFilePath);

                    if ~isfield(data, 'x') || ~isfield(data, 'n')
                        uialert(app.UIFigure, 'MAT file must contain "x" (signal) and "n" (sample indices)', 'Invalid MAT File');
                        return;
                    end

                    x = data.x;
                    t = data.n / data.Fs;

                    % Plot Signal 2 in green
                    hold(app.MultipleSignalInputSignalsPreviewAxes, 'on');
                    stem(app.MultipleSignalInputSignalsPreviewAxes, t, x, 'g', 'filled', 'MarkerSize', 3, 'DisplayName', 'Signal 2');
                    hold(app.MultipleSignalInputSignalsPreviewAxes, 'off');

                elseif isAudioFile
                    [x, Fs] = audioread(fullFilePath);
                    t = (0:length(x)-1)/Fs;

                    hold(app.MultipleSignalInputSignalsPreviewAxes, 'on');
                    if size(x, 2) == 1 % Mono
                        plot(app.MultipleSignalInputSignalsPreviewAxes, t, x, 'g', 'LineWidth', 1.5, 'DisplayName', 'Signal 2 (Mono)');
                    else % Stereo
                        plot(app.MultipleSignalInputSignalsPreviewAxes, t, x(:,1), 'g', 'LineWidth', 1, 'DisplayName', 'Signal 2 (Left)');
                        plot(app.MultipleSignalInputSignalsPreviewAxes, t, x(:,2), 'm', 'LineWidth', 1, 'DisplayName', 'Signal 2 (Right)');
                    end
                    hold(app.MultipleSignalInputSignalsPreviewAxes, 'off');

                else
                    uialert(app.UIFigure, 'Unsupported file type. Please use .mat or audio files.', 'Invalid File Type');
                    return;
                end

                % Store Signal 2 data
                app.MultipleSignal_Signal2 = x;
                app.MultipleSignal_Signal2_Time = t;
                app.MultipleSignal_Signal2_Fs = Fs;
                app.MultipleSignal_Signal2_FileName = fileName;
                app.MultipleSignal_Signal2_IsStereo = (isAudioFile && size(x,2) > 1);

                % Update plot labels and legend
                updatePlotLabels(app);

            catch ME
                uialert(app.UIFigure, ['Error loading file: ' ME.message], 'File Error');
            end
      

        end

        % Button pushed function: MultipleSignalApplyButton
        function MultipleSignalApplyButtonPushed(app, event)
           % Check if both signals are loaded
            if isempty(app.MultipleSignal_Signal1) || isempty(app.MultipleSignal_Signal2)
                uialert(app.UIFigure, 'Please load both signals first.', 'Missing Signals');
                return;
            end

            % Get selected operation from dropdown
            operation = app.MultipleSignalSelectOperationDropDown.Value;

            % Prepare signals and check file types
            x1 = app.MultipleSignal_Signal1;
            t1 = app.MultipleSignal_Signal1_Time;
            Fs1 = app.MultipleSignal_Signal1_Fs;

            % Initialize audio file flags
            isAudioFile1 = false;
            isStereo1 = false;
            isAudioFile2 = false;
            isStereo2 = false;

            % Check signal 1 file type
            if isprop(app, 'MultipleSignal_Signal1_FileName')
                try
                    fileName1 = app.MultipleSignal_Signal1_FileName;
                    if ~isempty(fileName1) && (ischar(fileName1) || isstring(fileName1))
                        [~, ~, ext1] = fileparts(char(fileName1));
                        audioExtensions = {'.wav', '.mp3', '.ogg', '.flac', '.m4a', '.aac', '.au'};
                        isAudioFile1 = any(strcmpi(ext1, audioExtensions));
                        isStereo1 = isAudioFile1 && size(x1, 2) > 1;
                    end
                catch ME
                end
            end

            % Prepare second signal
            x2 = app.MultipleSignal_Signal2;
            t2 = app.MultipleSignal_Signal2_Time;
            Fs2 = app.MultipleSignal_Signal2_Fs;

            % Check signal 2 file type
            if isprop(app, 'MultipleSignal_Signal2_FileName')
                try
                    fileName2 = app.MultipleSignal_Signal2_FileName;
                    if ~isempty(fileName2) && (ischar(fileName2) || isstring(fileName2))
                        [~, ~, ext2] = fileparts(char(fileName2));
                        isAudioFile2 = any(strcmpi(ext2, audioExtensions));
                        isStereo2 = isAudioFile2 && size(x2, 2) > 1;
                    end
                catch ME
                end
            end

            try
                % Handle different sampling frequencies
                if Fs1 ~= Fs2
                    if Fs1 > Fs2
                        % Upsample x2 to match Fs1
                        upFactor = max(2, round(Fs1/Fs2));
                        newTimeVec = linspace(t2(1), t2(end), length(t2) * upFactor);

                        if isStereo2
                            x2 = [interp1(t2, x2(:,1), newTimeVec, 'linear'), ...
                                interp1(t2, x2(:,2), newTimeVec, 'linear')];
                        else
                            x2 = interp1(t2, x2, newTimeVec, 'linear');
                        end
                        t2 = newTimeVec;
                        Fs2 = Fs1;
                    else
                        % Upsample x1 to match Fs2
                        upFactor = max(2, round(Fs2/Fs1));
                        newTimeVec = linspace(t1(1), t1(end), length(t1) * upFactor);

                        if isStereo1
                            x1 = [interp1(t1, x1(:,1), newTimeVec, 'linear'), ...
                                interp1(t1, x1(:,2), newTimeVec, 'linear')];
                        else
                            x1 = interp1(t1, x1, newTimeVec, 'linear');
                        end
                        t1 = newTimeVec;
                        Fs1 = Fs2;
                    end
                end

                % Reconstruct a common time vector covering the full extent of both signals
                t_start = min(t1(1), t2(1));
                t_end   = max(t1(end), t2(end));

                % Use the common sampling frequency
                Fs = Fs1;  % Fs1 == Fs2 at this point
                dt = 1 / Fs;

                % Generate common time vector
                t_common = (t_start:dt:t_end)';

                % Interpolate both signals into the common time base, filling missing values with zero
                if isStereo1
                    x1_interp = [interp1(t1, x1(:,1), t_common, 'linear', 0), ...
                        interp1(t1, x1(:,2), t_common, 'linear', 0)];
                else
                    x1_interp = interp1(t1, x1, t_common, 'linear', 0);
                end

                if isStereo2
                    x2_interp = [interp1(t2, x2(:,1), t_common, 'linear', 0), ...
                        interp1(t2, x2(:,2), t_common, 'linear', 0)];
                else
                    x2_interp = interp1(t2, x2, t_common, 'linear', 0);
                end

                % Replace originals with aligned and padded versions
                x1 = x1_interp;
                x2 = x2_interp;
                t1 = t_common;
                t2 = t_common;
                
                % Initialize time reference variables for convolution/correlation
                n1_start = round(t_common(1)*Fs);  % First sample index of x1 in absolute time
                n1_end = n1_start + length(x1) - 1;  % Last sample index of x1
                n2_start = round(t_common(1)*Fs);  % First sample index of x2
                n2_end = n2_start + length(x2) - 1;  % Last sample index of x2


                % Perform selected operation
                switch operation
                    case 'Addition'
                        if isStereo1 || isStereo2
                            error('Cannot add stereo signals directly');
                        end
                        y = x1 + x2;
                        t_y = t1;
                        operationStr = 'Sum';

                    case 'Subtraction'
                        if isStereo1 || isStereo2
                            error('Cannot subtract stereo signals directly');
                        end
                        y = x1 - x2;
                        t_y = t1;
                        operationStr = 'Difference';

                    case 'Multiplication'
                        if isStereo1 || isStereo2
                            error('Cannot multiply stereo signals directly');
                        end
                        y = x1 .* x2;
                        t_y = t1;
                        operationStr = 'Product';

                    case 'Division'
                        if isStereo1 || isStereo2
                            error('Division requires mono signals');
                        end

                        % Force column vectors and initialize output
                        y = zeros(size(x1));

                        % Safe division (returns 0 where denominator is 0)
                        y = x1 ./ (x2 + (x2 == 0));  % Adds 1 where x2=0 to avoid Inf/NaN

                        t_y = t1;  % Use the aligned time vector
                        operationStr = 'Division';

                    case 'Convolution'
                        if isStereo1 || isStereo2
                            error('Cannot convolve stereo signals directly');
                        end
                        len_x1 = length(x1);
                        len_x2 = length(x2);
                        len_y = len_x1 + len_x2 - 1;
                        y = zeros(len_y, 1);

                        for n = 1:len_y
                            current_n = (n1_start + n2_start) + (n - 1);
                            temp = 0;

                            k_min = max(n1_start, current_n - n2_end);
                            k_max = min(n1_end, current_n - n2_start);

                            for k = k_min:k_max
                                k_rel = k - n1_start + 1;
                                m = current_n - k;
                                m_rel = m - n2_start + 1;

                                if k_rel >= 1 && k_rel <= len_x1 && m_rel >= 1 && m_rel <= len_x2
                                    temp = temp + x1(k_rel) * x2(m_rel);
                                end
                            end
                            y(n) = temp;
                        end

                        t_y = ((n1_start + n2_start):(n1_end + n2_end))'/Fs1;
                        operationStr = 'Convolution';

                    case 'Correlation'
                        if isStereo1 || isStereo2
                            error('Cannot correlate stereo signals directly');
                        end
                        len_x1 = length(x1);
                        len_x2 = length(x2);
                        len_r = len_x1 + len_x2 - 1;
                        r = zeros(len_r, 1);

                        for L = 1:len_r
                            current_L = (n1_start - n2_end) + (L - 1);
                            temp = 0;

                            n_min = max(n1_start, n2_start + current_L);
                            n_max = min(n1_end, n2_end + current_L);

                            for n = n_min:n_max
                                n_rel = n - n1_start + 1;
                                m = n - current_L;
                                m_rel = m - n2_start + 1;

                                if n_rel >= 1 && n_rel <= len_x1 && m_rel >= 1 && m_rel <= len_x2
                                    temp = temp + x1(n_rel) * x2(m_rel);
                                end
                            end
                            r(L) = temp;
                        end

                        y = r;
                        t_y = ((n1_start - n2_end):(n1_end - n2_start))'/Fs1;
                        operationStr = 'Correlation';

                    case 'Generate Stereo Signal'
                        % Extract/verify input signals
                        if isstruct(x1)  % .mat file case
                            x1 = x1.x(:);  % Ensure column vector
                            n1 = length(x1);
                            Fs1 = x1.Fs;  % Sampling rate
                            t1 = (0:n1-1)'/Fs1;  % Recalculated time vector
                        else  % Direct signal case
                            x1 = x1(:);  % Ensure column vector
                            n1 = length(x1);
                            t1 = (0:n1-1)'/Fs1;  % Recalculated time vector
                        end

                        if isstruct(x2)  % .mat file case
                            x2 = x2.x(:);  % Ensure column vector
                            n2 = length(x2);
                            Fs2 = x2.Fs;  % Sampling rate
                            t2 = (0:n2-1)'/Fs2;  % Recalculated time vector
                        else  % Direct signal case
                            x2 = x2(:);  % Ensure column vector
                            n2 = length(x2);
                            t2 = (0:n2-1)'/Fs2;  % Recalculated time vector
                        end

                        % Verify matching sample rates
                        if Fs1 ~= Fs2
                            error('Sample rate mismatch: Signal1=%.1f Hz, Signal2=%.1f Hz', Fs1, Fs2);
                        end

                        % Equalize lengths with zero-padding
                        max_len = max(n1, n2);
                        if n1 < max_len
                            x1(end+1:max_len) = 0;
                            t1 = (0:max_len-1)'/Fs1;
                        end
                        if n2 < max_len
                            x2(end+1:max_len) = 0;
                            t2 = (0:max_len-1)'/Fs1;
                        end

                        % Create stereo signal [Left, Right]
                        y = [x1, x2];  % Nx2 matrix
                        t_y = t1;  % Use first signal's time vector
                        operationStr = 'Stereo Signal';
                    otherwise
                        error('Unsupported operation selected');
                end

                % Update plot
                cla(app.MultipleSignalOutputSignalPreviewAxes);

                if strcmp(operation, 'Generate Stereo Signal')
                    stem(app.MultipleSignalOutputSignalPreviewAxes, t_y, y(:,1), 'b', 'DisplayName', 'Left');
                    hold(app.MultipleSignalOutputSignalPreviewAxes, 'on');
                    stem(app.MultipleSignalOutputSignalPreviewAxes, t_y, y(:,2), 'r', 'DisplayName', 'Right');
                    hold(app.MultipleSignalOutputSignalPreviewAxes, 'off');
                else
                    stem(app.MultipleSignalOutputSignalPreviewAxes, t_y, y, 'k', 'DisplayName', operationStr);
                end
 
                xlabel(app.MultipleSignalOutputSignalPreviewAxes, 'Time (s)');
                ylabel(app.MultipleSignalOutputSignalPreviewAxes, 'Amplitude');
                title(app.MultipleSignalOutputSignalPreviewAxes, ['Result: ' operationStr]);
                grid(app.MultipleSignalOutputSignalPreviewAxes, 'on');
                legend(app.MultipleSignalOutputSignalPreviewAxes, 'show');

                % Save results
                app.MultipleSignal_Result = y;
                app.MultipleSignal_Result_Time = t_y;
                app.MultipleSignal_Result_Fs = Fs1;
                app.MultipleSignal_Result_Operation = operationStr;

                % Get base filenames (or use defaults)
                if isprop(app, 'MultipleSignal_Signal1_FileName') && ~isempty(app.MultipleSignal_Signal1_FileName)
                    [~, base1] = fileparts(app.MultipleSignal_Signal1_FileName);
                else
                    base1 = 'Signal1';
                end

                if isprop(app, 'MultipleSignal_Signal2_FileName') && ~isempty(app.MultipleSignal_Signal2_FileName)
                    [~, base2] = fileparts(app.MultipleSignal_Signal2_FileName);
                else
                    base2 = 'Signal2';
                end

                % Create filename based on operation
                opName = strrep(operation, ' ', '_');
                filename = sprintf('%s_%s_%s', base1, base2, opName);

                % Determine file extension based on input types
                if (isAudioFile1 || isAudioFile2) || strcmp(operation, 'Generate Stereo Signal')
                    ext = '.wav';
                else
                    ext = '.mat';
                end

                % Use the DefaultSavePath property we defined earlier
                fullPath = fullfile(app.DefaultSavePath, [filename ext]);

                % Ensure unique filename
                counter = 1;
                while exist(fullPath, 'file')
                    fullPath = fullfile(app.DefaultSavePath, sprintf('%s_%d%s', filename, counter, ext));
                    counter = counter + 1;
                end

                % Save the file
                if strcmp(ext, '.wav')
                    % Normalize audio for WAV format
                    y_normalized = y/max(abs(y(:)));
                    audiowrite(fullPath, y_normalized, Fs1);
                else
                    % Save as MAT file with all relevant data

                    n = round(t_y * Fs1);  % Convert time back to sample indices
                    resultStruct = struct(...
                        'x', y, ...
                        'Fs', Fs1, ...
                        'n', n, ...
                        'operation', operation);
                    save(fullPath, '-struct', 'resultStruct');
                end
                % Create new row for the tables
                [~, name, ext] = fileparts(fullPath);
                newRow = { [name ext], ['Processed - ' operationStr], Fs1 };

                % List of all tables to update
                tables = {
                    'MicrophoneLoadedSignalsTable', ...
                    'SyntheticLoadedSignalsTable', ...
                    'LoadAudioFileLoadedSignalsTable', ...
                    'HardwareAcquisitionLoadedSignalsTable', ...
                    'PreprocessingLoadedSignalsTable', ...
                    'SingleSignalProcessingLoadedSignalsTable', ...
                    'MultipleSignalLoadedSignalsTable', ...
                    'FourierTransformLoadedSignalsTable', ...
                    'CosineTransformLoadedSignalsTable', ...
                    'WaveletTransformLoadedSignalsTable', ...
                    'FilteringLoadedSignalsTable'};

                % Append new row to each table
                for i = 1:numel(tables)
                    tableName = tables{i};
                    if isprop(app, tableName)
                        currentTable = app.(tableName).Data;
                        if isempty(currentTable)
                            app.(tableName).Data = newRow;
                        else
                            app.(tableName).Data = [currentTable; newRow];
                        end
                    end
                end


            catch ME
                uialert(app.UIFigure, ['Processing error: ' ME.message], 'Operation Failed');
            end

        end

        % Button pushed function: StopPlaybackButton
        function StopPlaybackButtonPushed(app, event)
            % Clear all audio playback
            clear sound;  % Stops any audio played with sound()
        end

        % Button pushed function: HardwareAcquisitionLoadSignalButton
        function HardwareAcquisitionLoadSignalButtonPushed(app, event)
             % Get selected row
            selectedRow = app.HardwareAcquisitionLoadedSignalsTable.Selection;
            
            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a file from the table first.', 'No Selection');
                return;
            end
            
            % Get file name from the selected row
            fileName = app.HardwareAcquisitionLoadedSignalsTable.Data{selectedRow, 1};  % Column 1: File Name
            
            % Build full file path
            fullFilePath = fullfile(app.DefaultSavePath, fileName);
            
            % Check if the file exists
            if ~isfile(fullFilePath)
                uialert(app.UIFigure, 'The selected file does not exist.', 'File Not Found');
                return;
            end
            [~, ~, ext] = fileparts(fullFilePath);

                if ~strcmpi(ext, '.mat')
                    uialert(app.UIFigure, 'Only .mat files are supported.', 'Invalid File Type');
                    return;
                end
            
                    data = load(fullFilePath);
                    
                if ~isfield(data, 'x') || ~isfield(data, 'Fs')
                    uialert(app.UIFigure, 'The .mat file must contain "x" and "Fs".', 'Invalid File');
                    return;
                end
                    
            y = data.x;
            fs = data.Fs;
            n=data.n;
            t = n/ fs;
                     
            % Plot in MicrophoneSignalPreviewAxes
            stem(app.HardwareAcquisitionSignalPreviewAxes, t, y);
            xlabel(app.HardwareAcquisitionSignalPreviewAxes, 'Time');
            ylabel(app.HardwareAcquisitionSignalPreviewAxes, 'Amplitude');
            title(app.HardwareAcquisitionSignalPreviewAxes, ['Signal Preview']);
            grid(app.HardwareAcquisitionSignalPreviewAxes, 'on');
        end

        % Button pushed function: AcquireButton
        function AcquireButtonPushed(app, event)
            % Ask for configuration from the user
        prompt = {'COM Port:', 'Baud Rate:', 'Acquisition Duration (s or "Real Time"):'};
        dlgtitle = 'Acquisition Settings';
        dims = [1 45];
        definput = {'COM7', '9600', 'Real Time'};
        answer = inputdlg(prompt, dlgtitle, dims, definput);
        if isempty(answer), return; end
        
        % Assign user input to variables
        port = answer{1};
        baudRate = str2double(answer{2});
        duration = answer{3};
        
        serialObj = serialport(port, baudRate);
        flush(serialObj);
 
        % Initialize data
        rawData = [];
        timestamps = [];
        
        % Configure plot
        cla(app.HardwareAcquisitionSignalPreviewAxes);
        hPlot = plot(app.HardwareAcquisitionSignalPreviewAxes, NaN, NaN);
        title(app.HardwareAcquisitionSignalPreviewAxes, 'Acquired Signal');
        xlabel(app.HardwareAcquisitionSignalPreviewAxes, 'Time (s)');
        ylabel(app.HardwareAcquisitionSignalPreviewAxes, 'Amplitude');
        grid(app.HardwareAcquisitionSignalPreviewAxes, 'on');
        
        % Acquisition loop
        disp('Acquiring data...');
        t0 = tic;
        
        try
            while true
                if serialObj.NumBytesAvailable > 0
                    t_now = toc(t0);
                    dataStr = readline(serialObj);
                    value = str2double(dataStr);
                    if isnan(value), continue; end
        
                    rawData(end+1) = value;
                    timestamps(end+1) = t_now;
        
                    % Update the plot only if enough data to show
                    if length(rawData) > 1
                        set(hPlot, 'XData', timestamps, 'YData', rawData);
                        drawnow;
                    end
                end
        
                if ~strcmpi(strtrim(duration), 'Real Time')
                    limitTime = str2double(duration);
                    if ~isnan(limitTime) && toc(t0) >= limitTime
                        disp('Acquisition time reached.');
                        break;
                    end
                end
            end
        catch ME
            disp('Connection interrupted or error detected:');
            disp(ME.message);
        end
        
        % Save signal
        x = rawData(:).';
        n = 1:length(x);
        dt = diff(timestamps);
        Fs_real = 1 / mean(dt);
        Fs = Fs_real;
        
        % Ruta y nombre por defecto
        defaultFileName = 'hardware_acquisition.mat';
        [saveFile, savePath] = uiputfile('*.mat', 'Guardar señal como...', fullfile(app.DefaultSavePath, defaultFileName));
        
        if isequal(saveFile, 0) || isequal(savePath, 0)
            uialert(app.UIFigure, 'Operación de guardado cancelada.', 'Cancelado');
            figure(app.UIFigure);
            return;
        end
        
        fullFilePath = fullfile(savePath, saveFile);
        resultStruct = struct('x', x, 'n', n, 'Fs', Fs);
        save(fullFilePath, '-struct', 'resultStruct');
        disp(['Data saved in ', saveFile]);
        
        newRow = {saveFile, 'Hardware', Fs};
        tableList = {
            app.MicrophoneLoadedSignalsTable;
            app.SyntheticLoadedSignalsTable;
            app.LoadAudioFileLoadedSignalsTable;
            app.HardwareAcquisitionLoadedSignalsTable;
            app.PreprocessingLoadedSignalsTable;
            app.SingleSignalProcessingLoadedSignalsTable;
            app.MultipleSignalLoadedSignalsTable;
            app.FourierTransformLoadedSignalsTable;
            app.CosineTransformLoadedSignalsTable;
            app.WaveletTransformLoadedSignalsTable;
            app.FilteringLoadedSignalsTable
        };
        
        for i = 1:length(tableList)
            currentTable = tableList{i};
            currentData = currentTable.Data;
        
            if isempty(currentData)
                updatedData = newRow;
            else
                updatedData = [currentData; newRow];
            end
        
            currentTable.Data = updatedData;
        end
        end

        % Button pushed function: FourierTransformSelectSignalButton
        function FourierTransformSelectSignalButtonPushed(app, event)
 % Get the selected row from the table
            selectedRow = app.FourierTransformLoadedSignalsTable.Selection;
            
            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a signal from the table first.', 'No Selection');
                return;
            end
            
            % Get file information from the selected row
            fileName = app.FourierTransformLoadedSignalsTable.Data{selectedRow, 1};  % Column 1: File Name
            Fs = app.FourierTransformLoadedSignalsTable.Data{selectedRow, 3};       % Column 3: Sample Frequency
            
            % Build full file path
            folderPath = app.DefaultSavePath;
            fullFilePath = fullfile(folderPath, fileName);
            
            % Check if the file exists
            if ~isfile(fullFilePath)
                uialert(app.UIFigure, 'The selected file does not exist.', 'File Not Found');
                return;
            end
            
            try
                % Determine file type from extension
                [~, ~, fileExt] = fileparts(fullFilePath);
                isAudioFile = any(strcmpi(fileExt, {'.wav', '.mp3', '.ogg', '.flac', '.m4a', '.aac', '.au'}));
                isMatFile = strcmpi(fileExt, '.mat');
                
                % Load the file according to its type
                if isMatFile
                    % Load .mat file
                    data = load(fullFilePath);
                    
                    % Verify required fields
                    if ~isfield(data, 'x') || ~isfield(data, 'n') || ~isfield(data, 'Fs')
                        uialert(app.UIFigure, 'The .mat file must contain "x", "n", and "Fs".', 'Invalid File');
                        return;
                    end
                    
                    x = data.x;
                    t = data.n / data.Fs; % Convert sample indices to time
                    verde = getRandomGreen(app);
                    
                    % Plot discrete signal
                    stem(app.FourierTransformInputSignalPreviewAxes, t, x, 'filled', 'Color', verde);
                    plotStyle = 'Discrete';
                    
                elseif isAudioFile
                    % Load audio file
                    [x, Fs] = audioread(fullFilePath);
                    t = (0:length(x)-1)/Fs;
                    
                    % Plot continuous signal
                    if size(x, 2) == 1 % Mono
                        plot(app.FourierTransformInputSignalPreviewAxes, t, x, 'b', 'LineWidth', 1.5);
                        plotStyle = 'Mono Audio';
                    else % Stereo
                        plot(app.FourierTransformInputSignalPreviewAxes, t, x(:,1), 'r', 'LineWidth', 1);
                        plot(app.FourierTransformInputSignalPreviewAxes, t, x(:,2), 'b', 'LineWidth', 1);
                        legend(app.FourierTransformInputSignalPreviewAxes, {'Left', 'Right'}, 'Location', 'best');
                        plotStyle = 'Stereo Audio';
                    end
                    
                else
                    uialert(app.UIFigure, 'Unsupported file type. Please use .mat or audio files.', 'Invalid File Type');
                    return;
                end
                
                
            xlabel(app.FourierTransformInputSignalPreviewAxes, 'Time (s)');
            ylabel(app.FourierTransformInputSignalPreviewAxes, 'Amplitude');
                  title(app.FourierTransformInputSignalPreviewAxes, ...
                    sprintf('%s\n%s • %0.1f kHz', fileName, plotStyle, Fs/1000), ...
                    'Interpreter', 'none');
            grid(app.FourierTransformInputSignalPreviewAxes, 'on');
                
                % Store loaded signal in app properties
                app.FourierTransform_InputSignal = x;
                app.FourierTransform_TimeVector = t;
                app.FourierTransform_Fs = Fs;
                app.FourierTransform_FileName = fileName;
               
            catch ME
                uialert(app.UIFigure, ['Error loading file: ' ME.message], 'File Error');
            end
        end

        % Button pushed function: ApplyFourierTransformButton
        function ApplyFourierTransformButtonPushed(app, event)
            % Obtener información del archivo seleccionado
            fileName = app.FourierTransform_FileName;
            Fs = app.FourierTransform_Fs;
            
            % Construir la ruta completa del archivo
            folderPath = app.DefaultSavePath;
            fullFilePath = fullfile(folderPath, fileName);
            
            % Verificar si el archivo existe
            if ~isfile(fullFilePath)
                uialert(app.UIFigure, 'The selected file does not exist.', 'File Not Found');
                return;
            end
            
            try
                % Determinar tipo de archivo por su extensión
                [~, baseName, fileExt] = fileparts(fullFilePath);
                isAudioFile = any(strcmpi(fileExt, {'.wav', '.mp3', '.ogg', '.flac', '.m4a', '.aac', '.au'}));
                isMatFile = strcmpi(fileExt, '.mat');
            
                % Cargar datos según tipo de archivo
                if isMatFile
                    % Obtener datos desde propiedades
                    x = app.FourierTransform_InputSignal;
                    t = app.FourierTransform_TimeVector;
                    Fs = app.FourierTransform_Fs;
                
                    % Graficar señal original
                    verde = getRandomGreen(app);
                    stem(app.FourierTransformInputSignalPreviewAxes, t, x, 'filled', 'Color', verde);
                    plotStyle = 'Discrete';
                
                    % Aplicar transformada de Fourier
                    N = length(x);
                    N_fft = 2^nextpow2(N);
                    X = fft(x, N_fft);
                    f = Fs * (0:N_fft-1) / N_fft;
                    f_pos = f(1:floor(N_fft/2)+1);
                    mag = abs(X(1:floor(N_fft/2)+1));
                    phase = angle(X(1:floor(N_fft/2)+1));
                
                    % Graficar magnitud y fase
                    stem(app.FourierTransformIMagnitudeSignalPreviewAxes, f_pos, mag, 'filled', 'Color', 'b');
                    stem(app.FourierTransformPhaseSignalPreviewAxes, f_pos, phase, 'filled', 'Color', 'b');
                
                    % Guardar resultados en archivo .mat
                    outName = sprintf('fourier_%s.mat', baseName);
                    save(fullfile(folderPath, outName), 'x', 'Fs', 'f_pos', 'mag', 'phase');
                
            
                elseif isAudioFile
                    x = app.FourierTransform_InputSignal;
                    t = app.FourierTransform_TimeVector;
                    Fs = app.FourierTransform_Fs;
            
                    if size(x, 2) == 1
                        % MONO
                        % Aplicar transformada
                        X = fft(x, 2^nextpow2(length(x)));
                        N = length(X);
                        f = Fs * (0:N-1) / N;
                        f_pos = f(1:floor(N/2)+1);
                        mag = abs(X(1:floor(N/2)+1));
                        phase = angle(X(1:floor(N/2)+1));
            
                        % Graficar transformada
                        stem(app.FourierTransformIMagnitudeSignalPreviewAxes, f_pos, mag, 'filled', 'Color', 'b');
                        stem(app.FourierTransformPhaseSignalPreviewAxes, f_pos, phase, 'filled', 'Color', 'b');
            
                        % Guardar resultado
                        outName = sprintf('fourier_%s.mat', baseName);
                        save(fullfile(folderPath, outName), 'x', 'Fs', 'f_pos', 'mag', 'phase');
            
                        % Graficar señal original
                        plot(app.FourierTransformInputSignalPreviewAxes, t, x, 'b', 'LineWidth', 1.5);
                        plotStyle = 'Mono Audio';
            
                    else
                        % ESTÉREO
                        left = x(:,1);
                        right = x(:,2);
            
                        % Graficar señal original
                        plot(app.FourierTransformInputSignalPreviewAxes, t, left, 'r', t, right, 'b');
                        legend(app.FourierTransformInputSignalPreviewAxes, {'Left', 'Right'});
                        plotStyle = 'Stereo Audio';
            
                        % Transformada canal izquierdo
                        X1 = fft(left, 2^nextpow2(length(left)));
                        N1 = length(X1);
                        f1 = Fs * (0:N1-1) / N1;
                        f1_pos = f1(1:floor(N1/2)+1);
                        mag1 = abs(X1(1:floor(N1/2)+1));
                        phase1 = angle(X1(1:floor(N1/2)+1));
            
                        % Transformada canal derecho
                        X2 = fft(right, 2^nextpow2(length(right)));
                        N2 = length(X2);
                        f2 = Fs * (0:N2-1) / N2;
                        f2_pos = f2(1:floor(N2/2)+1);
                        mag2 = 20*log10(abs(X2(1:floor(N2/2)+1)));
                        phase2 = angle(X2(1:floor(N2/2)+1))*(180/pi);

                        % Magnitud en dB
                        %mag = 20*log10(abs(x));
                        
                        % Fase en grados
                        %phase = angle(x)*180/pi;


                        semilogx(app.FourierTransformIMagnitudeSignalPreviewAxes, f1_pos, mag1);
                        xlabel(app.FourierTransformIMagnitudeSignalPreviewAxes, 'Frecuencia (Hz)');
                        ylabel(app.FourierTransformIMagnitudeSignalPreviewAxes, 'Magnitud (dB)');
                        title(app.FourierTransformIMagnitudeSignalPreviewAxes, 'Espectro de Magnitud');
                        semilogx(app.FourierTransformIMagnitudeSignalPreviewAxes, f2_pos, mag2);
                        xlabel(app.FourierTransformIMagnitudeSignalPreviewAxes, 'Frecuencia (Hz)');
                        ylabel(app.FourierTransformIMagnitudeSignalPreviewAxes, 'Magnitud (dB)');
                        title(app.FourierTransformIMagnitudeSignalPreviewAxes, 'Espectro de Magnitud');

                        semilogx(app.FourierTransformPhaseSignalPreviewAxes, f1_pos, phase1);
                        xlabel(app.FourierTransformPhaseSignalPreviewAxes, 'Frecuencia (Hz)');
                        ylabel(app.FourierTransformPhaseSignalPreviewAxes, 'Fase (°)');
                        title(app.FourierTransformPhaseSignalPreviewAxes, 'Espectro de Fase');
                        semilogx(app.FourierTransformPhaseSignalPreviewAxes, f2_pos, phase2);
                        xlabel(app.FourierTransformPhaseSignalPreviewAxes, 'Frecuencia (Hz)');
                        ylabel(app.FourierTransformPhaseSignalPreviewAxes, 'Fase (°)');
                        title(app.FourierTransformPhaseSignalPreviewAxes, 'Espectro de Fase');
            
                        % Guardar resultados
                        outName1 = sprintf('fourier_%s_left.mat', baseName);
                        save(fullfile(folderPath, outName1), 'left', 'Fs', 'f1_pos', 'mag1', 'phase1');
            
                        outName2 = sprintf('fourier_%s_right.mat', baseName);
                        save(fullfile(folderPath, outName2), 'right', 'Fs', 'f2_pos', 'mag2', 'phase2');
                    end
            
                else
                    uialert(app.UIFigure, 'Unsupported file type. Please use .mat or audio files.', 'Invalid File Type');
                    return;
                end
            
                % Etiquetas del gráfico original
                xlabel(app.FourierTransformInputSignalPreviewAxes, 'Time (s)');
                ylabel(app.FourierTransformInputSignalPreviewAxes, 'Amplitude');
                title(app.FourierTransformInputSignalPreviewAxes, ...
                    sprintf('%s\n%s • %0.1f kHz', fileName, plotStyle, Fs/1000), ...
                    'Interpreter', 'none');
                grid(app.FourierTransformInputSignalPreviewAxes, 'on');
            
                % Guardar propiedades
                app.FourierTransform_InputSignal = x;
                app.FourierTransform_TimeVector = t;
                app.FourierTransform_Fs = Fs;
                app.FourierTransform_FileName = fileName;
            
            catch ME
                uialert(app.UIFigure, ['Error loading file: ' ME.message], 'File Error');
            end


        end

        % Button pushed function: CosineTransformSelectSignalButton
        function CosineTransformSelectSignalButtonPushed(app, event)
            % Get the selected row from the table
            selectedRow = app.CosineTransformLoadedSignalsTable.Selection;
            
            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a signal from the table first.', 'No Selection');
                return;
            end
            
            % Get file information from the selected row
            fileName = app.CosineTransformLoadedSignalsTable.Data{selectedRow, 1};  % Column 1: File Name
            Fs = app.CosineTransformLoadedSignalsTable.Data{selectedRow, 3};       % Column 3: Sample Frequency
            
            % Build full file path
            folderPath = app.DefaultSavePath;
            fullFilePath = fullfile(folderPath, fileName);
            
            % Check if the file exists
            if ~isfile(fullFilePath)
                uialert(app.UIFigure, 'The selected file does not exist.', 'File Not Found');
                return;
            end
            
            try
                % Determine file type from extension
                [~, ~, fileExt] = fileparts(fullFilePath);
                isAudioFile = any(strcmpi(fileExt, {'.wav', '.mp3', '.ogg', '.flac', '.m4a', '.aac', '.au'}));
                isMatFile = strcmpi(fileExt, '.mat');
                
                % Load the file according to its type
                if isMatFile
                    % Load .mat file
                    data = load(fullFilePath);
                    
                    % Verify required fields
                    if ~isfield(data, 'x') || ~isfield(data, 'n') || ~isfield(data, 'Fs')
                        uialert(app.UIFigure, 'The .mat file must contain "x", "n", and "Fs".', 'Invalid File');
                        return;
                    end
                    
                    x = data.x;
                    t = data.n / data.Fs; % Convert sample indices to time
                    verde = getRandomGreen(app);
                    
                    % Plot discrete signal
                    stem(app.CosineTransformInputSignalPreviewAxes, t, x, 'filled', 'Color', verde);
                    plotStyle = 'Discrete';
                    
                elseif isAudioFile
                    % Load audio file
                    [x, Fs] = audioread(fullFilePath);
                    t = (0:length(x)-1)/Fs;
                    
                    % Plot continuous signal
                    if size(x, 2) == 1 % Mono
                        plot(app.CosineTransformInputSignalPreviewAxes, t, x, 'b', 'LineWidth', 1.5);
                        plotStyle = 'Mono Audio';
                    else % Stereo
                        plot(app.CosineTransformInputSignalPreviewAxes, t, x(:,1), 'r', 'LineWidth', 1);
                        plot(app.CosineTransformInputSignalPreviewAxes, t, x(:,2), 'b', 'LineWidth', 1);
                        legend(app.CosineTransformInputSignalPreviewAxes, {'Left', 'Right'}, 'Location', 'best');
                        plotStyle = 'Stereo Audio';
                    end
                    
                else
                    uialert(app.UIFigure, 'Unsupported file type. Please use .mat or audio files.', 'Invalid File Type');
                    return;
                end
                
                
            xlabel(app.CosineTransformInputSignalPreviewAxes, 'Time (s)');
            ylabel(app.CosineTransformInputSignalPreviewAxes, 'Amplitude');
                  title(app.CosineTransformInputSignalPreviewAxes, ...
                    sprintf('%s\n%s • %0.1f kHz', fileName, plotStyle, Fs/1000), ...
                    'Interpreter', 'none');
            grid(app.CosineTransformInputSignalPreviewAxes, 'on');
                
                % Store loaded signal in app properties
                app.CosineTransform_InputSignal = x;
                app.CosineTransform_TimeVector = t;
                app.CosineTransform_Fs = Fs;
                app.CosineTransform_FileName = fileName;
               
            catch ME
                uialert(app.UIFigure, ['Error loading file: ' ME.message], 'File Error');
            end
        end

        % Button pushed function: ApplyCosineTransformButton
        function ApplyCosineTransformButtonPushed(app, event)
            % Obtener señal y parámetros
            x = app.CosineTransform_InputSignal;
            fs = app.CosineTransform_Fs;
            N = length(x);
            
            % Aplicar la Transformada del Coseno (DCT tipo II por defecto)
            X = dct(x);
            f = fs * (0:N-1) / (2*N);  % Eje de frecuencia para DCT (aproximado)
            
            % Magnitud (la DCT da valores reales)
            
            
            % Color verde aleatorio
            verde = getRandomGreen(app);
            
            % Graficar magnitud con stem en App Designer
            stem(app.CosineTransformMagnitudePreviewAxes, f, X, 'filled', 'Color', verde);
            xlabel(app.CosineTransformMagnitudePreviewAxes, 'Frequency (Hz)');
            ylabel(app.CosineTransformMagnitudePreviewAxes, 'Magnitude');
            title(app.CosineTransformMagnitudePreviewAxes, 'DCT Magnitude vs Frequency');
            grid(app.CosineTransformMagnitudePreviewAxes, 'on');
            
            % Obtener nombre base del archivo original
            [~, baseName, ~] = fileparts(app.CosineTransform_FileName);
            defaultFileName = sprintf('cosine_%s.mat', baseName);
            
            % Diálogo para guardar
            [saveFile, savePath] = uiputfile('*.mat', 'Guardar señal transformada como...', ...
                fullfile(app.DefaultSavePath, defaultFileName));
            
            % Validar si el usuario canceló
            if isequal(saveFile, 0) || isequal(savePath, 0)
                uialert(app.UIFigure, 'Operación de guardado cancelada.', 'Cancelado');
                figure(app.UIFigure);
                return;
            end
            
            fullFilePath = fullfile(savePath, saveFile);
            
            % Crear estructura a guardar
            resultStruct = struct();
            resultStruct.X = X;
            resultStruct.frequency = f;
            resultStruct.Fs = fs;
            resultStruct.OriginalFileName = app.CosineTransform_FileName;
            
            save(fullFilePath, '-struct', 'resultStruct');
            disp(['Datos guardados en ', fullFilePath]);
            
            % Actualizar tabla CosineTransformLoadedSignalsTable
            newRow = {saveFile, 'Cosine Transform', fs};
            
            currentTable = app.CosineTransformLoadedSignalsTable;
            currentData = currentTable.Data;
            
            if isempty(currentData)
                updatedData = newRow;
            else
                updatedData = [currentData; newRow];
            end
            
            currentTable.Data = updatedData;

        end

        % Button pushed function: ApplyWaveletTransformButton
        function ApplyWaveletTransformButtonPushed(app, event)
                        % Check if a signal is loaded
                if isempty(app.WaveletTransformLoadedSignalsTable.Data)
                    uialert(app.UIFigure, 'Please load a signal first.', 'No Signal');
                    return;
                end

                % Get selected signal
                selectedRow = app.WaveletTransformLoadedSignalsTable.Selection;
                if isempty(selectedRow)
                    uialert(app.UIFigure, 'Please select a signal from the table.', 'No Selection');
                    return;
                end

                % Load signal data
                fileName = app.WaveletTransformLoadedSignalsTable.Data{selectedRow, 1};
                filePath = fullfile(app.DefaultSavePath, fileName);

                try
                    % =============================================
                    % 1. Load Signal from App Properties (Preloaded)
                    % =============================================
                    xLeft = app.WaveletTransform_LeftChannel;
                    xRight = app.WaveletTransform_RightChannel;
                    Fs = app.WaveletTransform_Fs;
                    isStereo = app.WaveletTransform_IsStereo;
                    t = app.WaveletTransform_TimeVector;

                    % =============================================
                    % 2. Apply Wavelet Transform to Left and Right
                    % =============================================
                    [cL, lL] = wavedec(xLeft, 3, 'db6');
                    approxL = appcoef(cL, lL, 'db6');
                    [cd1L, cd2L, cd3L] = detcoef(cL, lL, [1 2 3]);

                    if isStereo
                        [cR, lR] = wavedec(xRight, 3, 'db6');
                        approxR = appcoef(cR, lR, 'db6');
                        [cd1R, cd2R, cd3R] = detcoef(cR, lR, [1 2 3]);
                    end

                    % Time vectors
                    tA3 = linspace(t(1), t(end), length(approxL));
                    tD3 = linspace(t(1), t(end), length(cd3L));
                    tD2 = linspace(t(1), t(end), length(cd2L));
                    tD1 = linspace(t(1), t(end), length(cd1L));

                    % =============================================
                    % 3. Visualization
                    % =============================================

                    % Original Signal
                    cla(app.WaveletTransformInputSignalPreviewAxes);
                    stem(app.WaveletTransformInputSignalPreviewAxes, t, xLeft, 'b.', 'MarkerSize', 8, 'DisplayName', 'Left');
                    if isStereo
                        hold(app.WaveletTransformInputSignalPreviewAxes, 'on');
                        stem(app.WaveletTransformInputSignalPreviewAxes, t, xRight, 'r.', 'MarkerSize', 8, 'DisplayName', 'Right');
                        hold(app.WaveletTransformInputSignalPreviewAxes, 'off');
                        legend(app.WaveletTransformInputSignalPreviewAxes, 'Location', 'best');
                    end
                    title(app.WaveletTransformInputSignalPreviewAxes, 'Original Signal');
                    xlabel(app.WaveletTransformInputSignalPreviewAxes, 'Time (s)');
                    ylabel(app.WaveletTransformInputSignalPreviewAxes, 'Amplitude');
                    grid(app.WaveletTransformInputSignalPreviewAxes, 'on');

                    % Approximation Level 3
                    cla(app.WaveletTransformApproximationLevel3PreviewAxes);
                    plot(app.WaveletTransformApproximationLevel3PreviewAxes, tA3, approxL, 'b', 'LineWidth', 1.5, 'DisplayName', 'Left');
                    if isStereo
                        hold(app.WaveletTransformApproximationLevel3PreviewAxes, 'on');
                        plot(app.WaveletTransformApproximationLevel3PreviewAxes, tA3, approxR, 'r', 'LineWidth', 1.5, 'DisplayName', 'Right');
                        hold(app.WaveletTransformApproximationLevel3PreviewAxes, 'off');
                        legend(app.WaveletTransformApproximationLevel3PreviewAxes, 'Location', 'best');
                    end
                    title(app.WaveletTransformApproximationLevel3PreviewAxes, 'Approximation Level 3 (A3)');
                    xlabel(app.WaveletTransformApproximationLevel3PreviewAxes, 'Time (s)');
                    grid(app.WaveletTransformApproximationLevel3PreviewAxes, 'on');

                    % Detail Level 3
                    cla(app.WaveletTransformDetailLevel3PreviewAxes);
                    stem(app.WaveletTransformDetailLevel3PreviewAxes, tD3, cd3L, 'filled', ...
                        'MarkerSize', 3, 'Color', [0 0.5 0], 'DisplayName', 'Left');
                    if isStereo
                        hold(app.WaveletTransformDetailLevel3PreviewAxes, 'on');
                        stem(app.WaveletTransformDetailLevel3PreviewAxes, tD3, cd3R, 'filled', ...
                            'MarkerSize', 3, 'Color', [0.5 0 0], 'DisplayName', 'Right');
                        hold(app.WaveletTransformDetailLevel3PreviewAxes, 'off');
                        legend(app.WaveletTransformDetailLevel3PreviewAxes, 'Location', 'best');
                    end
                    title(app.WaveletTransformDetailLevel3PreviewAxes, 'Detail Coefficients Level 3 (D3)');
                    xlabel(app.WaveletTransformDetailLevel3PreviewAxes, 'Time (s)');
                    grid(app.WaveletTransformDetailLevel3PreviewAxes, 'on');

                    % Detail Level 2
                    cla(app.WaveletTransformDetailLevel2PreviewAxes);
                    stem(app.WaveletTransformDetailLevel2PreviewAxes, tD2, cd2L, 'filled', ...
                        'MarkerSize', 3, 'Color', [0.7 0 0], 'DisplayName', 'Left');
                    if isStereo
                        hold(app.WaveletTransformDetailLevel2PreviewAxes, 'on');
                        stem(app.WaveletTransformDetailLevel2PreviewAxes, tD2, cd2R, 'filled', ...
                            'MarkerSize', 3, 'Color', [0 0 0.8], 'DisplayName', 'Right');
                        hold(app.WaveletTransformDetailLevel2PreviewAxes, 'off');
                        legend(app.WaveletTransformDetailLevel2PreviewAxes, 'Location', 'best');
                    end
                    title(app.WaveletTransformDetailLevel2PreviewAxes, 'Detail Coefficients Level 2 (D2)');
                    xlabel(app.WaveletTransformDetailLevel2PreviewAxes, 'Time (s)');
                    grid(app.WaveletTransformDetailLevel2PreviewAxes, 'on');

                    % Detail Level 1
                    cla(app.WaveletTransformDetailLevel1PreviewAxes);
                    stem(app.WaveletTransformDetailLevel1PreviewAxes, tD1, cd1L, 'filled', ...
                        'MarkerSize', 3, 'Color', [0.5 0 0.5], 'DisplayName', 'Left');
                    if isStereo
                        hold(app.WaveletTransformDetailLevel1PreviewAxes, 'on');
                        stem(app.WaveletTransformDetailLevel1PreviewAxes, tD1, cd1R, 'filled', ...
                            'MarkerSize', 3, 'Color', [0.1 0.6 0.8], 'DisplayName', 'Right');
                        hold(app.WaveletTransformDetailLevel1PreviewAxes, 'off');
                        legend(app.WaveletTransformDetailLevel1PreviewAxes, 'Location', 'best');
                    end
                    title(app.WaveletTransformDetailLevel1PreviewAxes, 'Detail Coefficients Level 1 (D1)');
                    xlabel(app.WaveletTransformDetailLevel1PreviewAxes, 'Time (s)');
                    grid(app.WaveletTransformDetailLevel1PreviewAxes, 'on');

                catch ME
                    errMsg = sprintf('Wavelet Error:\n%s\n\nSignal Info:\nSize: %s\nFs: %g Hz', ...
                        ME.message, mat2str(size(xLeft)), Fs);
                    uialert(app.UIFigure, errMsg, 'Processing Error');
                end

        end

        % Button pushed function: SelectSignalButton_8
        function SelectSignalButton_8Pushed(app, event)
                        % Get selected row from the table
            selectedRow = app.WaveletTransformLoadedSignalsTable.Selection;

            % Check selection
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a signal first.', 'No Selection');
                return;
            end

            % Get file info
            fileName = app.WaveletTransformLoadedSignalsTable.Data{selectedRow, 1};
            Fs = app.WaveletTransformLoadedSignalsTable.Data{selectedRow, 3};
            fullPath = fullfile(app.DefaultSavePath, fileName);

            % File existence check
            if ~isfile(fullPath)
                uialert(app.UIFigure, 'File not found.', 'Error');
                return;
            end

            try
                % Load data based on file type
                [~, ~, ext] = fileparts(fullPath);
                if strcmpi(ext, '.mat')
                    data = load(fullPath);
                    x = data.x;
                    if isfield(data, 'Fs')
                        Fs = data.Fs; % Use Fs from file if available
                    end
                    t = (0:length(x)-1)/Fs;
                    isStereo = size(x, 2) == 2;
                else % Audio file
                    [x, Fs] = audioread(fullPath);
                    t = (0:length(x)-1)/Fs;
                    isStereo = size(x, 2) == 2;
                end

                % Plot signal
                cla(app.WaveletTransformInputSignalPreviewAxes);
                if isStereo
                    stem(app.WaveletTransformInputSignalPreviewAxes, t, x(:,1), 'b', 'DisplayName', 'Left');
                    hold(app.WaveletTransformInputSignalPreviewAxes, 'on');
                    stem(app.WaveletTransformInputSignalPreviewAxes, t, x(:,2), 'r', 'DisplayName', 'Right');
                    hold(app.WaveletTransformInputSignalPreviewAxes, 'off');
                    legend(app.WaveletTransformInputSignalPreviewAxes, 'Location', 'best');
                else
                    stem(app.WaveletTransformInputSignalPreviewAxes, t, x, 'b');
                end

                % Configure plot title
                if isStereo
                    titleStr = sprintf('%s (Stereo)', fileName);
                else
                    titleStr = sprintf('%s (Mono)', fileName);
                end
                title(app.WaveletTransformInputSignalPreviewAxes, titleStr, 'Interpreter', 'none');

                xlabel(app.WaveletTransformInputSignalPreviewAxes, 'Time (s)');
                ylabel(app.WaveletTransformInputSignalPreviewAxes, 'Amplitude');
                grid(app.WaveletTransformInputSignalPreviewAxes, 'on');

                % Store signal data
                app.WaveletTransform_InputSignal = x;
                app.WaveletTransform_TimeVector = t;
                app.WaveletTransform_Fs = Fs;
                app.WaveletTransform_FileName = fileName;
                app.WaveletTransform_IsStereo = isStereo;

                % Store channels separately
                if isStereo
                    app.WaveletTransform_LeftChannel = x(:,1);
                    app.WaveletTransform_RightChannel = x(:,2);
                else
                    app.WaveletTransform_LeftChannel = x;
                    app.WaveletTransform_RightChannel = [];
                end

            catch ME
                uialert(app.UIFigure, sprintf('Load error: %s', ME.message), 'Error');
            end
        end

        % Button pushed function: RemoveSignalButton_11
        function RemoveSignalButton_11Pushed(app, event)
            % Get selected row from Wavelet Transform table
            selectedRow = app.WaveletTransformLoadedSignalsTable.Selection;

            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a file to delete.', 'No Selection');
                return;
            end

            % Get filename from selected row
            fileName = app.WaveletTransformLoadedSignalsTable.Data{selectedRow, 1};
            fullPath = fullfile(app.DefaultSavePath, fileName);

            try
                % Delete file from disk
                if exist(fullPath, 'file')
                    delete(fullPath);
                end

                % List of all tables that might contain this file
                allTables = {
                    app.MicrophoneLoadedSignalsTable
                    app.SyntheticLoadedSignalsTable
                    app.LoadAudioFileLoadedSignalsTable
                    app.HardwareAcquisitionLoadedSignalsTable
                    app.PreprocessingLoadedSignalsTable
                    app.SingleSignalProcessingLoadedSignalsTable
                    app.MultipleSignalLoadedSignalsTable
                    app.FourierTransformLoadedSignalsTable
                    app.CosineTransformLoadedSignalsTable
                    app.WaveletTransformLoadedSignalsTable
                    app.FilteringLoadedSignalsTable
                    };

                % Remove file from all tables
                for i = 1:length(allTables)
                    currentTable = allTables{i};
                    if isobject(currentTable) && isprop(currentTable, 'Data')
                        % Find rows containing this filename
                        fileMatches = strcmp(currentTable.Data(:,1), fileName);
                        % Remove matching rows
                        currentTable.Data(fileMatches,:) = [];
                    end
                end

            catch ME
                uialert(app.UIFigure, ['Error deleting file: ' ME.message], 'Deletion Failed');
            end
        end

        % Button pushed function: CosineTransformRemoveSignalButton
        function CosineTransformRemoveSignalButtonPushed(app, event)
            % Get selected row from Wavelet Transform table
            selectedRow = app.CosineTransformLoadedSignalsTable.Selection;

            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a file to delete.', 'No Selection');
                return;
            end

            % Get filename from selected row
            fileName = app.CosineTransformLoadedSignalsTable.Data{selectedRow, 1};
            fullPath = fullfile(app.DefaultSavePath, fileName);

            try
                % Delete file from disk
                if exist(fullPath, 'file')
                    delete(fullPath);
                end

                % List of all tables that might contain this file
                allTables = {
                    app.MicrophoneLoadedSignalsTable
                    app.SyntheticLoadedSignalsTable
                    app.LoadAudioFileLoadedSignalsTable
                    app.HardwareAcquisitionLoadedSignalsTable
                    app.PreprocessingLoadedSignalsTable
                    app.SingleSignalProcessingLoadedSignalsTable
                    app.MultipleSignalLoadedSignalsTable
                    app.FourierTransformLoadedSignalsTable
                    app.CosineTransformLoadedSignalsTable
                    app.WaveletTransformLoadedSignalsTable
                    app.FilteringLoadedSignalsTable
                    };

                % Remove file from all tables
                for i = 1:length(allTables)
                    currentTable = allTables{i};
                    if isobject(currentTable) && isprop(currentTable, 'Data')
                        % Find rows containing this filename
                        fileMatches = strcmp(currentTable.Data(:,1), fileName);
                        % Remove matching rows
                        currentTable.Data(fileMatches,:) = [];
                    end
                end

            catch ME
                uialert(app.UIFigure, ['Error deleting file: ' ME.message], 'Deletion Failed');
            end
        end

        % Button pushed function: FourierTransformRemoveSignalButton
        function FourierTransformRemoveSignalButtonPushed(app, event)
            % Get selected row from Wavelet Transform table
            selectedRow = app.FourierTransformLoadedSignalsTable.Selection;

            % Check if a row is selected
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a file to delete.', 'No Selection');
                return;
            end

            % Get filename from selected row
            fileName = app.FourierTransformLoadedSignalsTable.Data{selectedRow, 1};
            fullPath = fullfile(app.DefaultSavePath, fileName);

            try
                % Delete file from disk
                if exist(fullPath, 'file')
                    delete(fullPath);
                end

                % List of all tables that might contain this file
                allTables = {
                    app.MicrophoneLoadedSignalsTable
                    app.SyntheticLoadedSignalsTable
                    app.LoadAudioFileLoadedSignalsTable
                    app.HardwareAcquisitionLoadedSignalsTable
                    app.PreprocessingLoadedSignalsTable
                    app.SingleSignalProcessingLoadedSignalsTable
                    app.MultipleSignalLoadedSignalsTable
                    app.FourierTransformLoadedSignalsTable
                    app.CosineTransformLoadedSignalsTable
                    app.WaveletTransformLoadedSignalsTable
                    app.FilteringLoadedSignalsTable
                    };

                % Remove file from all tables
                for i = 1:length(allTables)
                    currentTable = allTables{i};
                    if isobject(currentTable) && isprop(currentTable, 'Data')
                        % Find rows containing this filename
                        fileMatches = strcmp(currentTable.Data(:,1), fileName);
                        % Remove matching rows
                        currentTable.Data(fileMatches,:) = [];
                    end
                end

            catch ME
                uialert(app.UIFigure, ['Error deleting file: ' ME.message], 'Deletion Failed');
            end
        end

        % Value changed function: Button
        function ButtonValueChanged(app, event)
            % Verificar señal cargada
            if isempty(app.FilteringInputSignal) || isempty(app.FilteringFs)
                uialert(app.UIFigure, 'There is not any signal uploaded.', 'Error');
                return;
            end
            signal_name=app.FilteringFilename;
            % Paso 1: Elegir tipo de dominio
            domain_types = {'Fourier Filter', 'DCT Filter'};
            [domain_idx, ok] = listdlg('PromptString', 'Select the filter type:', ...
                'SelectionMode', 'single', ...
                'ListString', domain_types, ...
                'Name', 'Dominio de Filtro', ...
                'ListSize', [220, 100]);
            if ~ok
                return;
            end

            selected_domain = domain_types{domain_idx};

            % Paso 2: Elegir tipo de filtro
            filter_types = {'Low-Pass', 'High-Pass', 'Notch', 'Band-Pass'};
            [filter_idx, ok] = listdlg('PromptString', 'Selecciona el tipo de filtro:', ...
                'SelectionMode', 'single', ...
                'ListString', filter_types, ...
                'Name', 'Tipo de Filtro', ...
                'ListSize', [200, 160]);
            if ~ok
                return;
            end

            filter_type = lower(filter_types{filter_idx});
            disp(filter_type);
            
            try
                switch selected_domain
                    case 'Fourier Filter'
                        % Llamada a función que pide parámetros y aplica filtro Fourier
                        [filtered_signal, H, freq] = aplicar_filtro(app, ...
                            app.FilteringInputSignal, ...
                            app.FilteringFs, ...
                            app.FilteringFilename, ...
                            filter_type); % La función ya pide los varargin por inputdlg

                    case 'DCT Filter'  % Filter domain identifier
signal = app.FilteringInputSignal ;
fs = app.FilteringFs;
% Crear la caja de diálogo para selección de filtro
filter_types = {'Low-Pass Filter', 'High-Pass Filter', 'Notch Filter', 'Band-Pass Filter'};
[filter_idx, ok] = listdlg('PromptString', 'Select a filter type:', ...
                          'SelectionMode', 'single', ...
                          'ListString', filter_types, ...
                          'Name', 'Filter Selection', ...
                          'ListSize', [200, 160]);

% Verificar si el usuario hizo clic en Cancelar
if ~ok
    filtered_signal = signal;
else
    selected_filter = filter_types{filter_idx};

    % Calcular DCT
    N = length(signal);
    dct_coefs = dct(signal);

    % Crear el vector de índices k (representa los índices armónicos)
    k_indices = 0:(N-1);

    % Crear filtro basado en el tipo seleccionado
    H = ones(size(dct_coefs));  % Función de transferencia del filtro (predeterminado: paso todo)

    % Solicitar los índices de corte según el tipo de filtro
    switch selected_filter
        case 'Low-Pass Filter'
            prompt = {'Enter cutoff k-index (harmonic number):',... 
                      'Or enter cutoff frequency (Hz) - will be converted to nearest k-index:'};
            dlgtitle = 'Low-Pass Filter Parameters';
            dims = [1 70];
            default_input = {num2str(round(N/10)), ''};
            answer = inputdlg(prompt, dlgtitle, dims, default_input);
            
            if isempty(answer)
                filtered_signal = signal;
            else
                if ~isempty(answer{1})
                    kc = round(str2double(answer{1}));
                else
                    fc = str2double(answer{2});
                    kc = round(fc * 2 * N / fs);
                end
                
                kc = max(0, min(kc, N-1));
                H = zeros(size(dct_coefs));
                H(k_indices <= kc) = 1;
                filtered_dct = dct_coefs .* H;
                filtered_signal = idct(filtered_dct);
            end
            
        case 'High-Pass Filter'
            prompt = {'Enter cutoff k-index (harmonic number):',... 
                      'Or enter cutoff frequency (Hz) - will be converted to nearest k-index:'};
            dlgtitle = 'High-Pass Filter Parameters';
            dims = [1 70];
            default_input = {num2str(round(N/10)), ''};
            answer = inputdlg(prompt, dlgtitle, dims, default_input);
            
            if isempty(answer)
                filtered_signal = signal;
            else
                if ~isempty(answer{1})
                    kc = round(str2double(answer{1}));
                else
                    fc = str2double(answer{2});
                    kc = round(fc * 2 * N / fs);
                end
                
                kc = max(0, min(kc, N-1));
                H = zeros(size(dct_coefs));
                H(k_indices >= kc) = 1;
                filtered_dct = dct_coefs .* H;
                filtered_signal = idct(filtered_dct);
            end
            
        case 'Notch Filter'
            prompt = {'Enter lower cutoff k-index (harmonic number):',... 
                      'Or enter lower cutoff frequency (Hz):',... 
                      'Enter upper cutoff k-index (harmonic number):',... 
                      'Or enter upper cutoff frequency (Hz):'};
            dlgtitle = 'Notch Filter Parameters';
            dims = [1 70];
            default_input = {num2str(round(N/10)), '', num2str(round(N/5)), ''};
            answer = inputdlg(prompt, dlgtitle, dims, default_input);
            
            if isempty(answer)
                filtered_signal = signal;
            else
                if ~isempty(answer{1})
                    kc1 = round(str2double(answer{1}));
                else
                    fc1 = str2double(answer{2});
                    kc1 = round(fc1 * 2 * N / fs);
                end
                
                if ~isempty(answer{3})
                    kc2 = round(str2double(answer{3}));
                else
                    fc2 = str2double(answer{4});
                    kc2 = round(fc2 * 2 * N / fs);
                end
                
                kc1 = max(0, min(kc1, N-1));
                kc2 = max(0, min(kc2, N-1));
                if kc1 > kc2
                    temp = kc1;
                    kc1 = kc2;
                    kc2 = temp;
                end
                
                H = ones(size(dct_coefs));
                H((k_indices >= kc1) & (k_indices <= kc2)) = 0;
                filtered_dct = dct_coefs .* H;
                filtered_signal = idct(filtered_dct);
            end
            
        case 'Band-Pass Filter'
            prompt = {'Enter lower cutoff k-index (harmonic number):',... 
                      'Or enter lower cutoff frequency (Hz):',... 
                      'Enter upper cutoff k-index (harmonic number):',... 
                      'Or enter upper cutoff frequency (Hz):'};
            dlgtitle = 'Band-Pass Filter Parameters';
            dims = [1 70];
            default_input = {num2str(round(N/10)), '', num2str(round(N/5)), ''};
            answer = inputdlg(prompt, dlgtitle, dims, default_input);
            
            if isempty(answer)
                filtered_signal = signal;
            else
                if ~isempty(answer{1})
                    kc1 = round(str2double(answer{1}));
                else
                    fc1 = str2double(answer{2});
                    kc1 = round(fc1 * 2 * N / fs);
                end
                
                if ~isempty(answer{3})
                    kc2 = round(str2double(answer{3}));
                else
                    fc2 = str2double(answer{4});
                    kc2 = round(fc2 * 2 * N / fs);
                end
                
                kc1 = max(0, min(kc1, N-1));
                kc2 = max(0, min(kc2, N-1));
                if kc1 > kc2
                    temp = kc1;
                    kc1 = kc2;
                    kc2 = temp;
                end
                
                H = zeros(size(dct_coefs));
                H((k_indices >= kc1) & (k_indices <= kc2)) = 1;
                filtered_dct = dct_coefs .* H;
                filtered_signal = idct(filtered_dct);
            end
    end

    % Plot the results in the uiAxes object
    cla(app.FilteringOutputSignalPreviewAxes);
    t = (0:N-1) / fs;
    plot(app.FilteringOutputSignalPreviewAxes, t, filtered_signal);
    title(app.FilteringOutputSignalPreviewAxes, ['Filtered Signal: ','']);
    xlabel(app.FilteringOutputSignalPreviewAxes, 'Time (s)');
    ylabel(app.FilteringOutputSignalPreviewAxes, 'Amplitude');
    grid(app.FilteringOutputSignalPreviewAxes, 'on');
        
end

    
    
                    otherwise
                        uialert(app.UIFigure, 'Dominio de filtrado no reconocido.', 'Error');
                        return;
                end
                % (Opcional) Actualizar tabla o vista previa
                % updateFilteredTable(app, filtered_signal, app.Filter_FileName, filter_type);
        
            catch ME
                uialert(app.UIFigure, ['Error al aplicar el filtro: ' ME.message], 'Error');
            end
                    try
                            nombre_archivo = [signal_name, 'dctFilter', '.mat'];
                            ruta_completa = fullfile(app.DefaultSavePath, nombre_archivo);
                            resultStruct = struct(...
                                'x', filtered_signal, ...
                                'Fs', fs, ...
                                'n', t);
                            save(ruta_completa, '-struct', 'resultStruct');
                            disp(['Señal filtrada guardada en: ', ruta_completa]);
                    catch save_error
                        warning('Error:SaveFile:Failed', 'Error al guardar el archivo: %s', save_error.message);
                    end
  
        end

        % Button pushed function: FilteringRemoveSignalButton_2
        function FilteringRemoveSignalButton_2Pushed(app, event)
           
            selectedRow = app.FilteringLoadedSignalsTable_2.Selection;
            fileName = app.FilteringLoadedSignalsTable.Data{selectedRow, 1};
            fullFilePath = fullfile(app.DefaultSavePath, fileName);
            data = load(fullFilePath);

            signal = data.x;
            fs = data.Fs;

            % Limpiar el axes antes de graficar
            cla(app.UIAxes);

            % Parámetros para el espectrograma
            windowSize = 256;        % Tamaño de la ventana para la STFT
            overlap = round(0.75 * windowSize);  % Solapamiento entre ventanas (75%)
            nfft = 512;              % Número de puntos FFT


            % Calcular el espectrograma
            [s, f, t] = spectrogram(signal, windowSize, overlap, nfft, fs, 'yaxis');

            % Convertir a dB para mejor visualización
            s_db = 10*log10(abs(s));

            % Graficar el espectrograma en el axes específico
            surf(app.UIAxes, t, f, s_db, 'EdgeColor', 'none');
            view(app.UIAxes, 0, 90);  % Vista 2D

            % Configurar etiquetas y título
            xlabel(app.UIAxes, 'Tiempo (s)');
            ylabel(app.UIAxes, 'Frecuencia (Hz)');
            title(app.UIAxes, 'Espectrograma');

            % Añadir una barra de color
            colorbar(app.UIAxes);

            % Opcional: ajustar los límites de color para mejor contraste
            maxVal = max(s_db(:));
            minVal = max(min(s_db(:)), maxVal - 60);  % Limitar a 60 dB por debajo del máximo
            clim(app.UIAxes, [minVal maxVal]);

            % Configuración adicional del axes
            axis(app.UIAxes, 'tight');
            colormap(app.UIAxes, 'jet');  

        end

        % Button pushed function: FilteringByConvolutionButton
        function FilteringByConvolutionButtonPushed(app, event)
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

        % Button pushed function: FilteringByDifferenceEquationButton
        function FilteringByDifferenceEquationButtonPushed(app, event)
                 % Check if a signal is loaded
                if isempty(app.FilteringInputSignal)
                    uialert(app.UIFigure, 'Please load a signal first.', 'No Signal');
                    return;
                end

                % Ask how to enter the filter
                filterChoice = uiconfirm(app.UIFigure, 'Select filter type:', 'Choose Filter', ...
                    'Options', {'Load .fcf/.txt File', 'Enter Coefficients Manually'}, ...
                    'DefaultOption', 'Load .fcf/.txt File', 'CancelOption', 'Enter Coefficients Manually');

                % Initialize numerator (b) and denominator (a)
                b = []; a = [];

                if strcmp(filterChoice, 'Load .fcf/.txt File')
                    % Ask how many numerator and denominator coefficients
                    dims = inputdlg({'Enter number of denominator coefficients (a):', ...
                        'Enter number of numerator coefficients (b):'}, ...
                        'Filter Dimensions', 1, {'3', '3'});
                    if isempty(dims), return; end
                    Na = str2double(dims{1});
                    Nb = str2double(dims{2});
                    if isnan(Na) || isnan(Nb) || Na < 1 || Nb < 1
                        uialert(app.UIFigure, 'Invalid filter dimensions.', 'Error');
                        return;
                    end

                    % Load coefficients from file
                    [filterFile, filterPath] = uigetfile({'.fcf;.txt', 'Filter Coefficients (*.fcf, *.txt)'}, ...
                        'Select Filter File');
                    if isequal(filterFile, 0)
                        return;
                    end

                    try
                        data = dlmread(fullfile(filterPath, filterFile));
                        if length(data) < Na + Nb
                            uialert(app.UIFigure, 'Not enough data in file for specified sizes.', 'Error');
                            return;
                        end
                        b = data(1:Na);
                        a = data(Na+1 : Na+Nb);
                    catch ME
                        uialert(app.UIFigure, ['Error reading filter file: ' ME.message], 'File Error');
                        return;
                    end
                else
                    % Manual input of coefficients
                    prompts = {'Enter denominator coefficients (a) [space/comma separated]:', ...
                        'Enter numerator coefficients (b) [space/comma separated]:'};
                    defaultValues = {'1 -0.5', '0.25 0.5 0.25'};
                    answer = inputdlg(prompts, 'Manual Filter Input', 1, defaultValues);
                    if isempty(answer), return; end
                    try
                        a = str2num(answer{1}); %#ok<ST2NM>
                        b = str2num(answer{2}); %#ok<ST2NM>
                        if isempty(a) || isempty(b)
                            uialert(app.UIFigure, 'Invalid coefficients.', 'Error');
                            return;
                        end
                    catch
                        uialert(app.UIFigure, 'Error parsing coefficients.', 'Error');
                        return;
                    end
                end

                % Plot coefficients
                cla(app.FilteringFilterPreviewAxes);
                hold(app.FilteringFilterPreviewAxes, 'on');
                stem(app.FilteringFilterPreviewAxes, 0:length(a)-1, a, 'r', 'filled', 'DisplayName', 'a (denominator)');
                stem(app.FilteringFilterPreviewAxes, 0:length(b)-1, b, 'b', 'filled', 'DisplayName', 'b (numerator)');
                title(app.FilteringFilterPreviewAxes, 'IIR Filter Coefficients');
                xlabel(app.FilteringFilterPreviewAxes, 'n');
                ylabel(app.FilteringFilterPreviewAxes, 'Amplitude');
                legend(app.FilteringFilterPreviewAxes);
                grid(app.FilteringFilterPreviewAxes, 'on');
                hold(app.FilteringFilterPreviewAxes, 'off');

                % Apply IIR filter using difference equation
                x = app.FilteringInputSignal(:); % column
                Fs = app.FilteringFs;
               % Normalize coefficients (optional if a(1) = 1)
               if a(1) ~= 1
                   b = b / a(1);
                   a = a / a(1);
               end

               % Apply filter
               y = filter(b, a, x);

                % Plot filtered signal
                t = (0:length(y)-1) / Fs;
                cla(app.FilteringOutputSignalPreviewAxes);
                plot(app.FilteringOutputSignalPreviewAxes, t, y, 'b', 'LineWidth', 1.2);
                title(app.FilteringOutputSignalPreviewAxes, 'Filtered Signal (IIR Difference Equation)');
                xlabel(app.FilteringOutputSignalPreviewAxes, 'Time (s)');
                ylabel(app.FilteringOutputSignalPreviewAxes, 'Amplitude');
                grid(app.FilteringOutputSignalPreviewAxes, 'on');

                % Save to .mat file
                if ~isempty(app.FilteringInputSignalFileName)
                    signalFile = char(app.FilteringInputSignalFileName);
                    [~, name, ~] = fileparts(signalFile);
                    baseName = [name '_iir_filtered'];
                else
                    baseName = 'iir_filtered_signal';
                end

                counter = 1;
                outputFileName = [baseName '.mat'];
                outputFilePath = fullfile(app.DefaultSavePath, outputFileName);
                while exist(outputFilePath, 'file')
                    outputFileName = [baseName '_' num2str(counter) '.mat'];
                    outputFilePath = fullfile(app.DefaultSavePath, outputFileName);
                    counter = counter + 1;
                end

                x_filtered = y / max(abs(y));  % Normalize
                n = (0:length(x_filtered)-1)';
                x=x_filtered;
                save(outputFilePath, 'x', 'n', 'Fs');

                % Add to all tables
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
                newRow = {outputFileName, ['IIR Filter (a=' num2str(length(a)) ', b=' num2str(length(b)) ')'], Fs};
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
                app.CurrentFilterCoefficients = struct('a', a, 'b', b);

                figure(app.UIFigure); % keep focus

        end

        % Button pushed function: FilteringSelectFilterButton
        function FilteringSelectFilterButtonPushed(app, event)
            % Check if a signal is loaded
            if isempty(app.FilteringLoadedSignalsTable.Data)
                uialert(app.UIFigure, 'Please load a signal first.', 'No Signal');
                return;
            end

            % Get the selected row
            selectedRow = app.FilteringLoadedSignalsTable.Selection;
            if isempty(selectedRow)
                uialert(app.UIFigure, 'Please select a signal from the table.', 'No Selection');
                return;
            end

            % Get file name and build path
            fileName = app.FilteringLoadedSignalsTable.Data{selectedRow, 1};
            filePath = fullfile(app.DefaultSavePath, fileName);

            try
                % Load the signal based on file type
                [~, ~, ext] = fileparts(filePath);
                if any(strcmpi(ext, {'.wav', '.mp3', '.ogg', '.flac', '.m4a', '.aac'}))
                    [x, Fs] = audioread(filePath);
                elseif strcmpi(ext, '.mat')
                    data = load(filePath);
                    x = data.x;
                    Fs = data.Fs;
                else
                    error('Unsupported file format. Use .wav, .mp3, or .mat files.');
                end

                % Ensure double precision
                x = double(x);

                % If x is a row vector, convert it to a column vector
                if isrow(x)
                    x = x';  % Convert to column
                end

                % Create time vector
                t = (0:size(x,1)-1)/Fs;

                % Store signal in app properties (optional)
                app.FilteringInputSignal = x;
                app.FilteringFs = Fs;
                app.FilteringTime = t;

                % Plotting on Filter Preview Axes
                cla(app.FilteringFilterPreviewAxes);
                if size(x,2) == 1  % Mono
                    plot(app.FilteringFilterPreviewAxes, t, x, 'b', 'LineWidth', 1.2);
                    legend(app.FilteringFilterPreviewAxes, 'Mono');
                else  % Stereo
                    plot(app.FilteringFilterPreviewAxes, t, x(:,1), 'b', 'LineWidth', 1.2, 'DisplayName', 'Left');
                    hold(app.FilteringFilterPreviewAxes, 'on');
                    plot(app.FilteringFilterPreviewAxes, t, x(:,2), 'r', 'LineWidth', 1.2, 'DisplayName', 'Right');
                    hold(app.FilteringFilterPreviewAxes, 'off');
                    legend(app.FilteringFilterPreviewAxes, 'Location', 'best');
                end

                title(app.FilteringFilterPreviewAxes, 'Input Signal');
                xlabel(app.FilteringFilterPreviewAxes, 'Time (s)');
                ylabel(app.FilteringFilterPreviewAxes, 'Amplitude');
                grid(app.FilteringFilterPreviewAxes, 'on');

            catch ME
                errMsg = sprintf('Error loading signal:\n%s', ME.message);
                uialert(app.UIFigure, errMsg, 'Loading Error');
            end

        end

        % Button pushed function: FilteringSelectSignalButton
        function FilteringSelectSignalButtonPushed(app, event)
                % Check if a signal is loaded
                if isempty(app.FilteringLoadedSignalsTable.Data)
                    uialert(app.UIFigure, 'Please load a signal first.', 'No Signal');
                    return;
                end

                % Get the selected row
                selectedRow = app.FilteringLoadedSignalsTable.Selection;
                if isempty(selectedRow)
                    uialert(app.UIFigure, 'Please select a signal from the table.', 'No Selection');
                    return;
                end

                % Get file name and build path
                fileName = app.FilteringLoadedSignalsTable.Data{selectedRow, 1};
                filePath = fullfile(app.DefaultSavePath, fileName);

                try
                    % Load the signal based on file type
                    [~, ~, ext] = fileparts(filePath);
                    if any(strcmpi(ext, {'.wav', '.mp3', '.ogg', '.flac', '.m4a', '.aac'}))
                        [x, Fs] = audioread(filePath);
                    elseif strcmpi(ext, '.mat')
                        data = load(filePath);
                        x = data.x;
                        Fs = data.Fs;
                    else
                        error('Unsupported file format. Use .wav, .mp3, or .mat files.');
                    end

                    % Ensure double precision
                    x = double(x);

                    % If x is a row vector, convert it to a column vector
                    if isrow(x)
                        x = x';  % Convert to column
                    end

                    % Create time vector
                    t = (0:size(x,1)-1)/Fs;

                    % Store signal in app properties (optional)
                    app.FilteringInputSignal = x;
                    app.FilteringFs = Fs;
                    app.FilteringTime = t;
                    app.FilteringFilename=fileName;

                    % Plotting
                    cla(app.FilteringInputSignalPreviewAxes);
                    if size(x,2) == 1  % Mono
                        plot(app.FilteringInputSignalPreviewAxes, t, x, 'b', 'LineWidth', 1.2);
                        legend(app.FilteringInputSignalPreviewAxes, 'Mono');
                    else  % Stereo
                        plot(app.FilteringInputSignalPreviewAxes, t, x(:,1), 'b', 'LineWidth', 1.2, 'DisplayName', 'Left');
                        hold(app.FilteringInputSignalPreviewAxes, 'on');
                        plot(app.FilteringInputSignalPreviewAxes, t, x(:,2), 'r', 'LineWidth', 1.2, 'DisplayName', 'Right');
                        hold(app.FilteringInputSignalPreviewAxes, 'off');
                        legend(app.FilteringInputSignalPreviewAxes, 'Location', 'best');
                    end

                    title(app.FilteringInputSignalPreviewAxes, 'Input Signal');
                    xlabel(app.FilteringInputSignalPreviewAxes, 'Time (s)');
                    ylabel(app.FilteringInputSignalPreviewAxes, 'Amplitude');
                    grid(app.FilteringInputSignalPreviewAxes, 'on');

                catch ME
                    errMsg = sprintf('Error loading signal:\n%s', ME.message);
                    uialert(app.UIFigure, errMsg, 'Loading Error');
                end

        
        end

        % Button pushed function: FilteringRemoveSignalButton
        function FilteringRemoveSignalButtonPushed(app, event)
            % Check if a signal is loaded in the FilteringLoadedSignalsTable
                if isempty(app.FilteringLoadedSignalsTable.Data)
                    % No signal in the table to remove
                    return;
                end

                % Get the selected row
                selectedRow = app.FilteringLoadedSignalsTable.Selection;
                if isempty(selectedRow)
                    % No signal selected from the table
                    return;
                end

                % Get file name and build the full path to the file
                fileName = app.FilteringLoadedSignalsTable.Data{selectedRow, 1};
                filePath = fullfile(app.DefaultSavePath, fileName);

                try
                    % Remove the selected row from the FilteringLoadedSignalsTable
                    app.FilteringLoadedSignalsTable.Data(selectedRow, :) = [];

                    % Check if the file exists before deleting it
                    if exist(filePath, 'file')
                        % Delete the file from the disk
                        delete(filePath);
                    end

                    % Optionally, clear the app properties related to the signal
                    app.FilteringProcessedSignal = [];
                    app.FilteringProcessedFs = [];
                    app.FilteringProcessedTime = [];

                    % Clear the plot in the FilteringFilterPreviewAxes
                    cla(app.FilteringFilterPreviewAxes, 'reset');
                    title(app.FilteringFilterPreviewAxes, 'No Signal Loaded');
                    xlabel(app.FilteringFilterPreviewAxes, 'Time (s)');
                    ylabel(app.FilteringFilterPreviewAxes, 'Amplitude');
                    grid(app.FilteringFilterPreviewAxes, 'on');

                catch ME
                    % If an error occurs, display it in the command window (no dialog box)
                    disp(['Error removing signal: ', ME.message]);
                end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0.902 0.902 0.902];
            app.UIFigure.Position = [100 100 1200 800];
            app.UIFigure.Name = 'MATLAB App';

            % Create MainTabGroup
            app.MainTabGroup = uitabgroup(app.UIFigure);
            app.MainTabGroup.Position = [0 0 1200 800];

            % Create AcquisitionTab
            app.AcquisitionTab = uitab(app.MainTabGroup);
            app.AcquisitionTab.Title = 'Acquisition';
            app.AcquisitionTab.BackgroundColor = [0.9412 0.9686 0.9412];

            % Create AcquisitionTabGroup
            app.AcquisitionTabGroup = uitabgroup(app.AcquisitionTab);
            app.AcquisitionTabGroup.Position = [0 0 1200 777];

            % Create MicrophoneTab
            app.MicrophoneTab = uitab(app.AcquisitionTabGroup);
            app.MicrophoneTab.Title = 'Microphone';
            app.MicrophoneTab.BackgroundColor = [0.9412 0.9686 0.9412];

            % Create MicrophoneSignalPreviewAxes
            app.MicrophoneSignalPreviewAxes = uiaxes(app.MicrophoneTab);
            title(app.MicrophoneSignalPreviewAxes, 'Signal Preview')
            xlabel(app.MicrophoneSignalPreviewAxes, 'X')
            ylabel(app.MicrophoneSignalPreviewAxes, 'Y')
            zlabel(app.MicrophoneSignalPreviewAxes, 'Z')
            app.MicrophoneSignalPreviewAxes.FontName = 'Segoe UI';
            app.MicrophoneSignalPreviewAxes.XGrid = 'on';
            app.MicrophoneSignalPreviewAxes.YGrid = 'on';
            app.MicrophoneSignalPreviewAxes.Position = [20 150 900 590];

            % Create MicrophoneLoadedSignalsPanel
            app.MicrophoneLoadedSignalsPanel = uipanel(app.MicrophoneTab);
            app.MicrophoneLoadedSignalsPanel.Title = 'Loaded Signals';
            app.MicrophoneLoadedSignalsPanel.BackgroundColor = [0.851 0.851 0.851];
            app.MicrophoneLoadedSignalsPanel.FontName = 'Segoe UI';
            app.MicrophoneLoadedSignalsPanel.FontSize = 14;
            app.MicrophoneLoadedSignalsPanel.Position = [940 20 240 720];

            % Create MicrophoneLoadedSignalsGrid
            app.MicrophoneLoadedSignalsGrid = uigridlayout(app.MicrophoneLoadedSignalsPanel);
            app.MicrophoneLoadedSignalsGrid.ColumnWidth = {'1x'};
            app.MicrophoneLoadedSignalsGrid.RowHeight = {'1x', 'fit'};
            app.MicrophoneLoadedSignalsGrid.BackgroundColor = [1 1 1];

            % Create MicrophoneLoadedSignalsTable
            app.MicrophoneLoadedSignalsTable = uitable(app.MicrophoneLoadedSignalsGrid);
            app.MicrophoneLoadedSignalsTable.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.MicrophoneLoadedSignalsTable.ColumnName = {'File Name'; 'Type'; 'Sample Frequency'};
            app.MicrophoneLoadedSignalsTable.ColumnWidth = {'1x', '1x', '1x'};
            app.MicrophoneLoadedSignalsTable.RowName = {};
            app.MicrophoneLoadedSignalsTable.SelectionType = 'row';
            app.MicrophoneLoadedSignalsTable.FontName = 'Segoe UI';
            app.MicrophoneLoadedSignalsTable.Layout.Row = 1;
            app.MicrophoneLoadedSignalsTable.Layout.Column = 1;
            app.MicrophoneLoadedSignalsTable.FontSize = 14;

            % Create MicrophoneLoadedSignalsButtonsGrid
            app.MicrophoneLoadedSignalsButtonsGrid = uigridlayout(app.MicrophoneLoadedSignalsGrid);
            app.MicrophoneLoadedSignalsButtonsGrid.ColumnWidth = {'1x'};
            app.MicrophoneLoadedSignalsButtonsGrid.Layout.Row = 2;
            app.MicrophoneLoadedSignalsButtonsGrid.Layout.Column = 1;
            app.MicrophoneLoadedSignalsButtonsGrid.BackgroundColor = [1 1 1];

            % Create MicrophoneLoadSignalButton
            app.MicrophoneLoadSignalButton = uibutton(app.MicrophoneLoadedSignalsButtonsGrid, 'push');
            app.MicrophoneLoadSignalButton.ButtonPushedFcn = createCallbackFcn(app, @MicrophoneLoadSignalButtonPushed, true);
            app.MicrophoneLoadSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.MicrophoneLoadSignalButton.Layout.Row = 1;
            app.MicrophoneLoadSignalButton.Layout.Column = 1;
            app.MicrophoneLoadSignalButton.Text = 'Load Signal';

            % Create MicrophoneRemoveSignalButton
            app.MicrophoneRemoveSignalButton = uibutton(app.MicrophoneLoadedSignalsButtonsGrid, 'push');
            app.MicrophoneRemoveSignalButton.ButtonPushedFcn = createCallbackFcn(app, @MicrophoneRemoveSignalButtonPushed, true);
            app.MicrophoneRemoveSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.MicrophoneRemoveSignalButton.Layout.Row = 2;
            app.MicrophoneRemoveSignalButton.Layout.Column = 1;
            app.MicrophoneRemoveSignalButton.Text = 'Remove Signal';

            % Create MicrophoneButtonsPanel
            app.MicrophoneButtonsPanel = uipanel(app.MicrophoneTab);
            app.MicrophoneButtonsPanel.Position = [20 20 900 120];

            % Create MicrophoneButtonsGrid
            app.MicrophoneButtonsGrid = uigridlayout(app.MicrophoneButtonsPanel);
            app.MicrophoneButtonsGrid.ColumnWidth = {'1x', '1x', '1x', '1x'};
            app.MicrophoneButtonsGrid.RowHeight = {'1x'};
            app.MicrophoneButtonsGrid.BackgroundColor = [1 1 1];

            % Create StartRecordingButton
            app.StartRecordingButton = uibutton(app.MicrophoneButtonsGrid, 'push');
            app.StartRecordingButton.ButtonPushedFcn = createCallbackFcn(app, @StartRecordingButtonPushed, true);
            app.StartRecordingButton.BackgroundColor = [0.749 0.851 0.651];
            app.StartRecordingButton.Layout.Row = 1;
            app.StartRecordingButton.Layout.Column = 1;
            app.StartRecordingButton.Text = 'Start Recording';

            % Create StopRecordingButton
            app.StopRecordingButton = uibutton(app.MicrophoneButtonsGrid, 'push');
            app.StopRecordingButton.ButtonPushedFcn = createCallbackFcn(app, @StopRecordingButtonPushed, true);
            app.StopRecordingButton.BackgroundColor = [0.749 0.851 0.651];
            app.StopRecordingButton.Layout.Row = 1;
            app.StopRecordingButton.Layout.Column = 2;
            app.StopRecordingButton.Text = 'Stop Recording';

            % Create PlayRecordingButton
            app.PlayRecordingButton = uibutton(app.MicrophoneButtonsGrid, 'push');
            app.PlayRecordingButton.ButtonPushedFcn = createCallbackFcn(app, @PlayRecordingButtonPushed, true);
            app.PlayRecordingButton.BackgroundColor = [0.749 0.851 0.651];
            app.PlayRecordingButton.Layout.Row = 1;
            app.PlayRecordingButton.Layout.Column = 3;
            app.PlayRecordingButton.Text = 'Play Recording';

            % Create StopPlaybackButton
            app.StopPlaybackButton = uibutton(app.MicrophoneButtonsGrid, 'push');
            app.StopPlaybackButton.ButtonPushedFcn = createCallbackFcn(app, @StopPlaybackButtonPushed, true);
            app.StopPlaybackButton.BackgroundColor = [0.749 0.851 0.651];
            app.StopPlaybackButton.Layout.Row = 1;
            app.StopPlaybackButton.Layout.Column = 4;
            app.StopPlaybackButton.Text = 'Stop Playback';

            % Create SyntheticSignalTab
            app.SyntheticSignalTab = uitab(app.AcquisitionTabGroup);
            app.SyntheticSignalTab.Title = 'Synthetic Signal';
            app.SyntheticSignalTab.BackgroundColor = [0.9412 0.9686 0.9412];

            % Create SyntheticSignalPreviewAxes
            app.SyntheticSignalPreviewAxes = uiaxes(app.SyntheticSignalTab);
            title(app.SyntheticSignalPreviewAxes, 'Signal Preview')
            xlabel(app.SyntheticSignalPreviewAxes, 'X')
            ylabel(app.SyntheticSignalPreviewAxes, 'Y')
            zlabel(app.SyntheticSignalPreviewAxes, 'Z')
            app.SyntheticSignalPreviewAxes.FontName = 'Segoe UI';
            app.SyntheticSignalPreviewAxes.XGrid = 'on';
            app.SyntheticSignalPreviewAxes.YGrid = 'on';
            app.SyntheticSignalPreviewAxes.Position = [20 150 900 590];

            % Create SyntheticLoadedSignalsPanel
            app.SyntheticLoadedSignalsPanel = uipanel(app.SyntheticSignalTab);
            app.SyntheticLoadedSignalsPanel.Title = 'Loaded Signals';
            app.SyntheticLoadedSignalsPanel.BackgroundColor = [0.851 0.851 0.851];
            app.SyntheticLoadedSignalsPanel.FontName = 'Segoe UI';
            app.SyntheticLoadedSignalsPanel.FontSize = 14;
            app.SyntheticLoadedSignalsPanel.Position = [940 20 240 720];

            % Create SyntheticLoadedSignalsGrid
            app.SyntheticLoadedSignalsGrid = uigridlayout(app.SyntheticLoadedSignalsPanel);
            app.SyntheticLoadedSignalsGrid.ColumnWidth = {'1x'};
            app.SyntheticLoadedSignalsGrid.RowHeight = {'1x', 'fit'};
            app.SyntheticLoadedSignalsGrid.BackgroundColor = [1 1 1];

            % Create SyntheticLoadedSignalsTable
            app.SyntheticLoadedSignalsTable = uitable(app.SyntheticLoadedSignalsGrid);
            app.SyntheticLoadedSignalsTable.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.SyntheticLoadedSignalsTable.ColumnName = {'File Name'; 'Type'; 'Sample Frequency'};
            app.SyntheticLoadedSignalsTable.ColumnWidth = {'1x', '1x', '1x'};
            app.SyntheticLoadedSignalsTable.RowName = {};
            app.SyntheticLoadedSignalsTable.SelectionType = 'row';
            app.SyntheticLoadedSignalsTable.FontName = 'Segoe UI';
            app.SyntheticLoadedSignalsTable.Layout.Row = 1;
            app.SyntheticLoadedSignalsTable.Layout.Column = 1;
            app.SyntheticLoadedSignalsTable.FontSize = 14;

            % Create SyntheticLoadedSignalsButtonsGrid1
            app.SyntheticLoadedSignalsButtonsGrid1 = uigridlayout(app.SyntheticLoadedSignalsGrid);
            app.SyntheticLoadedSignalsButtonsGrid1.ColumnWidth = {'1x'};
            app.SyntheticLoadedSignalsButtonsGrid1.Layout.Row = 2;
            app.SyntheticLoadedSignalsButtonsGrid1.Layout.Column = 1;
            app.SyntheticLoadedSignalsButtonsGrid1.BackgroundColor = [1 1 1];

            % Create SyntheticRemoveSignalButton
            app.SyntheticRemoveSignalButton = uibutton(app.SyntheticLoadedSignalsButtonsGrid1, 'push');
            app.SyntheticRemoveSignalButton.ButtonPushedFcn = createCallbackFcn(app, @SyntheticRemoveSignalButtonPushed, true);
            app.SyntheticRemoveSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.SyntheticRemoveSignalButton.Layout.Row = 2;
            app.SyntheticRemoveSignalButton.Layout.Column = 1;
            app.SyntheticRemoveSignalButton.Text = 'Remove Signal';

            % Create SyntheticLoadedSignalsButtonsGrid2
            app.SyntheticLoadedSignalsButtonsGrid2 = uigridlayout(app.SyntheticLoadedSignalsButtonsGrid1);
            app.SyntheticLoadedSignalsButtonsGrid2.RowHeight = {'1x'};
            app.SyntheticLoadedSignalsButtonsGrid2.Padding = [0 0 0 0];
            app.SyntheticLoadedSignalsButtonsGrid2.Layout.Row = 1;
            app.SyntheticLoadedSignalsButtonsGrid2.Layout.Column = 1;

            % Create SyntheticLoadSignalButton
            app.SyntheticLoadSignalButton = uibutton(app.SyntheticLoadedSignalsButtonsGrid2, 'push');
            app.SyntheticLoadSignalButton.ButtonPushedFcn = createCallbackFcn(app, @SyntheticLoadSignalButtonPushed, true);
            app.SyntheticLoadSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.SyntheticLoadSignalButton.Layout.Row = 1;
            app.SyntheticLoadSignalButton.Layout.Column = 1;
            app.SyntheticLoadSignalButton.Text = 'Load Signal';

            % Create SyntheticBrowseButton
            app.SyntheticBrowseButton = uibutton(app.SyntheticLoadedSignalsButtonsGrid2, 'push');
            app.SyntheticBrowseButton.ButtonPushedFcn = createCallbackFcn(app, @SyntheticBrowseButtonPushed, true);
            app.SyntheticBrowseButton.BackgroundColor = [0.749 0.851 0.651];
            app.SyntheticBrowseButton.Layout.Row = 1;
            app.SyntheticBrowseButton.Layout.Column = 2;
            app.SyntheticBrowseButton.Text = 'Browse';

            % Create SyntheticSignalButtonsPanel
            app.SyntheticSignalButtonsPanel = uipanel(app.SyntheticSignalTab);
            app.SyntheticSignalButtonsPanel.Position = [20 20 900 120];

            % Create SyntheticSignalButtonsGrid
            app.SyntheticSignalButtonsGrid = uigridlayout(app.SyntheticSignalButtonsPanel);
            app.SyntheticSignalButtonsGrid.ColumnWidth = {'1x', '1x', '1x'};
            app.SyntheticSignalButtonsGrid.RowHeight = {'1x'};
            app.SyntheticSignalButtonsGrid.BackgroundColor = [1 1 1];

            % Create SelectaSignalTypeDropDownLabel
            app.SelectaSignalTypeDropDownLabel = uilabel(app.SyntheticSignalButtonsGrid);
            app.SelectaSignalTypeDropDownLabel.BackgroundColor = [0.749 0.851 0.651];
            app.SelectaSignalTypeDropDownLabel.HorizontalAlignment = 'center';
            app.SelectaSignalTypeDropDownLabel.Layout.Row = 1;
            app.SelectaSignalTypeDropDownLabel.Layout.Column = 1;
            app.SelectaSignalTypeDropDownLabel.Text = 'Select a Signal Type';

            % Create SelectSignalTypeDropDown
            app.SelectSignalTypeDropDown = uidropdown(app.SyntheticSignalButtonsGrid);
            app.SelectSignalTypeDropDown.Items = {'Sine wave', 'Cosine wave', 'Chirp signal', 'Ramp signal', 'Unit step signal', 'Dirac delta (Discrete impulse)', 'Rectangular pulse', 'Sawtooth wave', 'Triangular wave', 'Sinc function', 'Square wave', 'Exponential growth', 'Exponential decay'};
            app.SelectSignalTypeDropDown.BackgroundColor = [0.749 0.851 0.651];
            app.SelectSignalTypeDropDown.Layout.Row = 1;
            app.SelectSignalTypeDropDown.Layout.Column = 2;
            app.SelectSignalTypeDropDown.Value = 'Sine wave';

            % Create AddSignalButton
            app.AddSignalButton = uibutton(app.SyntheticSignalButtonsGrid, 'push');
            app.AddSignalButton.ButtonPushedFcn = createCallbackFcn(app, @AddSignalButtonPushed, true);
            app.AddSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.AddSignalButton.Layout.Row = 1;
            app.AddSignalButton.Layout.Column = 3;
            app.AddSignalButton.Text = 'Add Signal';

            % Create LoadAudioFileTab
            app.LoadAudioFileTab = uitab(app.AcquisitionTabGroup);
            app.LoadAudioFileTab.Title = 'Load Audio File';
            app.LoadAudioFileTab.BackgroundColor = [0.9412 0.9686 0.9412];

            % Create LoadAudioFileSignalPreviewIAxes
            app.LoadAudioFileSignalPreviewIAxes = uiaxes(app.LoadAudioFileTab);
            title(app.LoadAudioFileSignalPreviewIAxes, 'Signal Preview')
            xlabel(app.LoadAudioFileSignalPreviewIAxes, 'X')
            ylabel(app.LoadAudioFileSignalPreviewIAxes, 'Y')
            zlabel(app.LoadAudioFileSignalPreviewIAxes, 'Z')
            app.LoadAudioFileSignalPreviewIAxes.FontName = 'Segoe UI';
            app.LoadAudioFileSignalPreviewIAxes.XGrid = 'on';
            app.LoadAudioFileSignalPreviewIAxes.YGrid = 'on';
            app.LoadAudioFileSignalPreviewIAxes.Position = [20 150 900 590];

            % Create LoadAudioFileLoadedSignalsPanel
            app.LoadAudioFileLoadedSignalsPanel = uipanel(app.LoadAudioFileTab);
            app.LoadAudioFileLoadedSignalsPanel.Title = 'Loaded Signals';
            app.LoadAudioFileLoadedSignalsPanel.BackgroundColor = [0.851 0.851 0.851];
            app.LoadAudioFileLoadedSignalsPanel.FontName = 'Segoe UI';
            app.LoadAudioFileLoadedSignalsPanel.FontSize = 14;
            app.LoadAudioFileLoadedSignalsPanel.Position = [940 20 240 720];

            % Create LoadAudioFileLoadedSignalsGrid
            app.LoadAudioFileLoadedSignalsGrid = uigridlayout(app.LoadAudioFileLoadedSignalsPanel);
            app.LoadAudioFileLoadedSignalsGrid.ColumnWidth = {'1x'};
            app.LoadAudioFileLoadedSignalsGrid.RowHeight = {'1x', 'fit'};
            app.LoadAudioFileLoadedSignalsGrid.BackgroundColor = [1 1 1];

            % Create LoadAudioFileLoadedSignalsTable
            app.LoadAudioFileLoadedSignalsTable = uitable(app.LoadAudioFileLoadedSignalsGrid);
            app.LoadAudioFileLoadedSignalsTable.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.LoadAudioFileLoadedSignalsTable.ColumnName = {'File Name'; 'Type'; 'Sample Frequency'};
            app.LoadAudioFileLoadedSignalsTable.ColumnWidth = {'1x', '1x', '1x'};
            app.LoadAudioFileLoadedSignalsTable.RowName = {};
            app.LoadAudioFileLoadedSignalsTable.SelectionType = 'row';
            app.LoadAudioFileLoadedSignalsTable.FontName = 'Segoe UI';
            app.LoadAudioFileLoadedSignalsTable.Layout.Row = 1;
            app.LoadAudioFileLoadedSignalsTable.Layout.Column = 1;
            app.LoadAudioFileLoadedSignalsTable.FontSize = 14;

            % Create LoadAudioFileLoadedSignalsButtonsGrid
            app.LoadAudioFileLoadedSignalsButtonsGrid = uigridlayout(app.LoadAudioFileLoadedSignalsGrid);
            app.LoadAudioFileLoadedSignalsButtonsGrid.ColumnWidth = {'1x'};
            app.LoadAudioFileLoadedSignalsButtonsGrid.Layout.Row = 2;
            app.LoadAudioFileLoadedSignalsButtonsGrid.Layout.Column = 1;
            app.LoadAudioFileLoadedSignalsButtonsGrid.BackgroundColor = [1 1 1];

            % Create LoadAudioFileLoadSignalButton
            app.LoadAudioFileLoadSignalButton = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid, 'push');
            app.LoadAudioFileLoadSignalButton.ButtonPushedFcn = createCallbackFcn(app, @LoadAudioFileLoadSignalButtonPushed, true);
            app.LoadAudioFileLoadSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.LoadAudioFileLoadSignalButton.Layout.Row = 1;
            app.LoadAudioFileLoadSignalButton.Layout.Column = 1;
            app.LoadAudioFileLoadSignalButton.Text = 'Load Signal';

            % Create LoadAudioFileRemoveSignalButton
            app.LoadAudioFileRemoveSignalButton = uibutton(app.LoadAudioFileLoadedSignalsButtonsGrid, 'push');
            app.LoadAudioFileRemoveSignalButton.ButtonPushedFcn = createCallbackFcn(app, @LoadAudioFileRemoveSignalButtonPushed, true);
            app.LoadAudioFileRemoveSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.LoadAudioFileRemoveSignalButton.Layout.Row = 2;
            app.LoadAudioFileRemoveSignalButton.Layout.Column = 1;
            app.LoadAudioFileRemoveSignalButton.Text = 'Remove Signal';

            % Create LoadAudioFileButtonsPanel
            app.LoadAudioFileButtonsPanel = uipanel(app.LoadAudioFileTab);
            app.LoadAudioFileButtonsPanel.Position = [20 20 900 120];

            % Create LoadAudioFileButtonsGrid
            app.LoadAudioFileButtonsGrid = uigridlayout(app.LoadAudioFileButtonsPanel);
            app.LoadAudioFileButtonsGrid.ColumnWidth = {'1x'};
            app.LoadAudioFileButtonsGrid.RowHeight = {'1x'};
            app.LoadAudioFileButtonsGrid.BackgroundColor = [1 1 1];

            % Create BrowseButton
            app.BrowseButton = uibutton(app.LoadAudioFileButtonsGrid, 'push');
            app.BrowseButton.ButtonPushedFcn = createCallbackFcn(app, @BrowseButtonPushed, true);
            app.BrowseButton.BackgroundColor = [0.749 0.851 0.651];
            app.BrowseButton.Layout.Row = 1;
            app.BrowseButton.Layout.Column = 1;
            app.BrowseButton.Text = 'Browse';

            % Create HardwareAcquisitionTab
            app.HardwareAcquisitionTab = uitab(app.AcquisitionTabGroup);
            app.HardwareAcquisitionTab.Title = 'Hardware Acquisition';
            app.HardwareAcquisitionTab.BackgroundColor = [0.9412 0.9686 0.9412];

            % Create HardwareAcquisitionSignalPreviewAxes
            app.HardwareAcquisitionSignalPreviewAxes = uiaxes(app.HardwareAcquisitionTab);
            title(app.HardwareAcquisitionSignalPreviewAxes, 'Signal Preview')
            xlabel(app.HardwareAcquisitionSignalPreviewAxes, 'X')
            ylabel(app.HardwareAcquisitionSignalPreviewAxes, 'Y')
            zlabel(app.HardwareAcquisitionSignalPreviewAxes, 'Z')
            app.HardwareAcquisitionSignalPreviewAxes.FontName = 'Segoe UI';
            app.HardwareAcquisitionSignalPreviewAxes.XGrid = 'on';
            app.HardwareAcquisitionSignalPreviewAxes.YGrid = 'on';
            app.HardwareAcquisitionSignalPreviewAxes.Position = [20 150 900 590];

            % Create HardwareAcquisitionTabLoadedSignalsPanel
            app.HardwareAcquisitionTabLoadedSignalsPanel = uipanel(app.HardwareAcquisitionTab);
            app.HardwareAcquisitionTabLoadedSignalsPanel.Title = 'Loaded Signals';
            app.HardwareAcquisitionTabLoadedSignalsPanel.BackgroundColor = [0.851 0.851 0.851];
            app.HardwareAcquisitionTabLoadedSignalsPanel.FontName = 'Segoe UI';
            app.HardwareAcquisitionTabLoadedSignalsPanel.FontSize = 14;
            app.HardwareAcquisitionTabLoadedSignalsPanel.Position = [940 20 240 720];

            % Create HardwareAcquisitionTabLoadedSignalsGrid
            app.HardwareAcquisitionTabLoadedSignalsGrid = uigridlayout(app.HardwareAcquisitionTabLoadedSignalsPanel);
            app.HardwareAcquisitionTabLoadedSignalsGrid.ColumnWidth = {'1x'};
            app.HardwareAcquisitionTabLoadedSignalsGrid.RowHeight = {'1x', 'fit'};
            app.HardwareAcquisitionTabLoadedSignalsGrid.BackgroundColor = [1 1 1];

            % Create HardwareAcquisitionLoadedSignalsTable
            app.HardwareAcquisitionLoadedSignalsTable = uitable(app.HardwareAcquisitionTabLoadedSignalsGrid);
            app.HardwareAcquisitionLoadedSignalsTable.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.HardwareAcquisitionLoadedSignalsTable.ColumnName = {'File Name'; 'Type'; 'Sample Frequency'};
            app.HardwareAcquisitionLoadedSignalsTable.ColumnWidth = {'1x', '1x', '1x'};
            app.HardwareAcquisitionLoadedSignalsTable.RowName = {};
            app.HardwareAcquisitionLoadedSignalsTable.SelectionType = 'row';
            app.HardwareAcquisitionLoadedSignalsTable.FontName = 'Segoe UI';
            app.HardwareAcquisitionLoadedSignalsTable.Layout.Row = 1;
            app.HardwareAcquisitionLoadedSignalsTable.Layout.Column = 1;
            app.HardwareAcquisitionLoadedSignalsTable.FontSize = 14;

            % Create HardwareAcquisitionTabLoadedSignalsButtonsGrid
            app.HardwareAcquisitionTabLoadedSignalsButtonsGrid = uigridlayout(app.HardwareAcquisitionTabLoadedSignalsGrid);
            app.HardwareAcquisitionTabLoadedSignalsButtonsGrid.ColumnWidth = {'1x'};
            app.HardwareAcquisitionTabLoadedSignalsButtonsGrid.Layout.Row = 2;
            app.HardwareAcquisitionTabLoadedSignalsButtonsGrid.Layout.Column = 1;
            app.HardwareAcquisitionTabLoadedSignalsButtonsGrid.BackgroundColor = [1 1 1];

            % Create HardwareAcquisitionLoadSignalButton
            app.HardwareAcquisitionLoadSignalButton = uibutton(app.HardwareAcquisitionTabLoadedSignalsButtonsGrid, 'push');
            app.HardwareAcquisitionLoadSignalButton.ButtonPushedFcn = createCallbackFcn(app, @HardwareAcquisitionLoadSignalButtonPushed, true);
            app.HardwareAcquisitionLoadSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.HardwareAcquisitionLoadSignalButton.Layout.Row = 1;
            app.HardwareAcquisitionLoadSignalButton.Layout.Column = 1;
            app.HardwareAcquisitionLoadSignalButton.Text = 'Load Signal';

            % Create HardwareAcquisitionRemoveSignalButton
            app.HardwareAcquisitionRemoveSignalButton = uibutton(app.HardwareAcquisitionTabLoadedSignalsButtonsGrid, 'push');
            app.HardwareAcquisitionRemoveSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.HardwareAcquisitionRemoveSignalButton.Layout.Row = 2;
            app.HardwareAcquisitionRemoveSignalButton.Layout.Column = 1;
            app.HardwareAcquisitionRemoveSignalButton.Text = 'Remove Signal';

            % Create HardwareAcquisitionButtonsPanel
            app.HardwareAcquisitionButtonsPanel = uipanel(app.HardwareAcquisitionTab);
            app.HardwareAcquisitionButtonsPanel.Position = [20 20 900 120];

            % Create HardwareAcquisitionButtonsGrid
            app.HardwareAcquisitionButtonsGrid = uigridlayout(app.HardwareAcquisitionButtonsPanel);
            app.HardwareAcquisitionButtonsGrid.ColumnWidth = {'1x'};
            app.HardwareAcquisitionButtonsGrid.RowHeight = {'1x'};
            app.HardwareAcquisitionButtonsGrid.BackgroundColor = [1 1 1];

            % Create AcquireButton
            app.AcquireButton = uibutton(app.HardwareAcquisitionButtonsGrid, 'push');
            app.AcquireButton.ButtonPushedFcn = createCallbackFcn(app, @AcquireButtonPushed, true);
            app.AcquireButton.BackgroundColor = [0.749 0.851 0.651];
            app.AcquireButton.Layout.Row = 1;
            app.AcquireButton.Layout.Column = 1;
            app.AcquireButton.Text = 'Acquire';

            % Create ProcessingTab
            app.ProcessingTab = uitab(app.MainTabGroup);
            app.ProcessingTab.Title = 'Processing';

            % Create ProcessingTabGroup
            app.ProcessingTabGroup = uitabgroup(app.ProcessingTab);
            app.ProcessingTabGroup.Position = [0 0 1200 777];

            % Create PreprocessingTab
            app.PreprocessingTab = uitab(app.ProcessingTabGroup);
            app.PreprocessingTab.Title = 'Preprocessing';
            app.PreprocessingTab.BackgroundColor = [0.9412 0.9686 0.9412];

            % Create PreprocessingInputSignalPreviewAxes
            app.PreprocessingInputSignalPreviewAxes = uiaxes(app.PreprocessingTab);
            title(app.PreprocessingInputSignalPreviewAxes, 'Input Signal Preview')
            xlabel(app.PreprocessingInputSignalPreviewAxes, 'X')
            ylabel(app.PreprocessingInputSignalPreviewAxes, 'Y')
            zlabel(app.PreprocessingInputSignalPreviewAxes, 'Z')
            app.PreprocessingInputSignalPreviewAxes.FontName = 'Segoe UI';
            app.PreprocessingInputSignalPreviewAxes.YGrid = 'on';
            app.PreprocessingInputSignalPreviewAxes.Position = [20 430 900 310];

            % Create PreprocessingOutputSignalPreviewAxes
            app.PreprocessingOutputSignalPreviewAxes = uiaxes(app.PreprocessingTab);
            title(app.PreprocessingOutputSignalPreviewAxes, 'Output Signal Preview')
            xlabel(app.PreprocessingOutputSignalPreviewAxes, 'X')
            ylabel(app.PreprocessingOutputSignalPreviewAxes, 'Y')
            zlabel(app.PreprocessingOutputSignalPreviewAxes, 'Z')
            app.PreprocessingOutputSignalPreviewAxes.FontName = 'Segoe UI';
            app.PreprocessingOutputSignalPreviewAxes.YGrid = 'on';
            app.PreprocessingOutputSignalPreviewAxes.Position = [20 110 900 310];

            % Create PreprocessingLoadedSignalsPanel
            app.PreprocessingLoadedSignalsPanel = uipanel(app.PreprocessingTab);
            app.PreprocessingLoadedSignalsPanel.Title = 'Loaded Signals';
            app.PreprocessingLoadedSignalsPanel.FontName = 'Segoe UI';
            app.PreprocessingLoadedSignalsPanel.FontSize = 14;
            app.PreprocessingLoadedSignalsPanel.Position = [940 20 240 720];

            % Create PreprocessingLoadedSignalsGrid
            app.PreprocessingLoadedSignalsGrid = uigridlayout(app.PreprocessingLoadedSignalsPanel);
            app.PreprocessingLoadedSignalsGrid.ColumnWidth = {'1x'};
            app.PreprocessingLoadedSignalsGrid.RowHeight = {'1x', 'fit'};
            app.PreprocessingLoadedSignalsGrid.BackgroundColor = [1 1 1];

            % Create PreprocessingLoadedSignalsTable
            app.PreprocessingLoadedSignalsTable = uitable(app.PreprocessingLoadedSignalsGrid);
            app.PreprocessingLoadedSignalsTable.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.PreprocessingLoadedSignalsTable.ColumnName = {'File Name'; 'Type'; 'Sample Frequency'};
            app.PreprocessingLoadedSignalsTable.ColumnWidth = {'1x', '1x', '1x'};
            app.PreprocessingLoadedSignalsTable.RowName = {};
            app.PreprocessingLoadedSignalsTable.SelectionType = 'row';
            app.PreprocessingLoadedSignalsTable.FontName = 'Segoe UI';
            app.PreprocessingLoadedSignalsTable.Layout.Row = 1;
            app.PreprocessingLoadedSignalsTable.Layout.Column = 1;
            app.PreprocessingLoadedSignalsTable.FontSize = 14;

            % Create PreprocessingLoadedSignalsButtonsGrid
            app.PreprocessingLoadedSignalsButtonsGrid = uigridlayout(app.PreprocessingLoadedSignalsGrid);
            app.PreprocessingLoadedSignalsButtonsGrid.ColumnWidth = {'1x'};
            app.PreprocessingLoadedSignalsButtonsGrid.Layout.Row = 2;
            app.PreprocessingLoadedSignalsButtonsGrid.Layout.Column = 1;
            app.PreprocessingLoadedSignalsButtonsGrid.BackgroundColor = [1 1 1];

            % Create PreprocessingSelectSignalButton
            app.PreprocessingSelectSignalButton = uibutton(app.PreprocessingLoadedSignalsButtonsGrid, 'push');
            app.PreprocessingSelectSignalButton.ButtonPushedFcn = createCallbackFcn(app, @PreprocessingSelectSignalButtonPushed, true);
            app.PreprocessingSelectSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.PreprocessingSelectSignalButton.Layout.Row = 1;
            app.PreprocessingSelectSignalButton.Layout.Column = 1;
            app.PreprocessingSelectSignalButton.Text = 'Select Signal';

            % Create PreprocessingRemoveSignalButton
            app.PreprocessingRemoveSignalButton = uibutton(app.PreprocessingLoadedSignalsButtonsGrid, 'push');
            app.PreprocessingRemoveSignalButton.ButtonPushedFcn = createCallbackFcn(app, @PreprocessingRemoveSignalButtonPushed, true);
            app.PreprocessingRemoveSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.PreprocessingRemoveSignalButton.Layout.Row = 2;
            app.PreprocessingRemoveSignalButton.Layout.Column = 1;
            app.PreprocessingRemoveSignalButton.Text = 'Remove Signal';

            % Create PreprocessingButtonsPanel
            app.PreprocessingButtonsPanel = uipanel(app.PreprocessingTab);
            app.PreprocessingButtonsPanel.Position = [20 20 900 80];

            % Create PreprocessingButtonsGrid
            app.PreprocessingButtonsGrid = uigridlayout(app.PreprocessingButtonsPanel);
            app.PreprocessingButtonsGrid.ColumnWidth = {'1x', '1x', '1x'};
            app.PreprocessingButtonsGrid.RowHeight = {'1x'};

            % Create SelectanormalizationDropDown_2Label
            app.SelectanormalizationDropDown_2Label = uilabel(app.PreprocessingButtonsGrid);
            app.SelectanormalizationDropDown_2Label.BackgroundColor = [0.749 0.851 0.651];
            app.SelectanormalizationDropDown_2Label.HorizontalAlignment = 'center';
            app.SelectanormalizationDropDown_2Label.Layout.Row = 1;
            app.SelectanormalizationDropDown_2Label.Layout.Column = 1;
            app.SelectanormalizationDropDown_2Label.Text = 'Select a normalization';

            % Create SelectNormalizationDropDown
            app.SelectNormalizationDropDown = uidropdown(app.PreprocessingButtonsGrid);
            app.SelectNormalizationDropDown.Items = {'0 to 1', '-1 to 1', 'Z-score (Standard)'};
            app.SelectNormalizationDropDown.BackgroundColor = [0.749 0.851 0.651];
            app.SelectNormalizationDropDown.Layout.Row = 1;
            app.SelectNormalizationDropDown.Layout.Column = 2;
            app.SelectNormalizationDropDown.Value = '0 to 1';

            % Create NormalizeButton
            app.NormalizeButton = uibutton(app.PreprocessingButtonsGrid, 'push');
            app.NormalizeButton.ButtonPushedFcn = createCallbackFcn(app, @NormalizeButtonPushed, true);
            app.NormalizeButton.BackgroundColor = [0.749 0.851 0.651];
            app.NormalizeButton.Layout.Row = 1;
            app.NormalizeButton.Layout.Column = 3;
            app.NormalizeButton.Text = 'Normalize';

            % Create SingleSignalProcessingTab
            app.SingleSignalProcessingTab = uitab(app.ProcessingTabGroup);
            app.SingleSignalProcessingTab.Title = 'Single Signal Processing';
            app.SingleSignalProcessingTab.BackgroundColor = [0.9412 0.9686 0.9412];

            % Create SingleSignalProcessingInputPreviewAxes
            app.SingleSignalProcessingInputPreviewAxes = uiaxes(app.SingleSignalProcessingTab);
            title(app.SingleSignalProcessingInputPreviewAxes, 'Input Signal Preview')
            xlabel(app.SingleSignalProcessingInputPreviewAxes, 'X')
            ylabel(app.SingleSignalProcessingInputPreviewAxes, 'Y')
            zlabel(app.SingleSignalProcessingInputPreviewAxes, 'Z')
            app.SingleSignalProcessingInputPreviewAxes.FontName = 'Segoe UI';
            app.SingleSignalProcessingInputPreviewAxes.YGrid = 'on';
            app.SingleSignalProcessingInputPreviewAxes.Position = [20 430 900 310];

            % Create SingleSignalProcessingOutputPreviewAxes
            app.SingleSignalProcessingOutputPreviewAxes = uiaxes(app.SingleSignalProcessingTab);
            title(app.SingleSignalProcessingOutputPreviewAxes, 'Output Signal Preview')
            xlabel(app.SingleSignalProcessingOutputPreviewAxes, 'X')
            ylabel(app.SingleSignalProcessingOutputPreviewAxes, 'Y')
            zlabel(app.SingleSignalProcessingOutputPreviewAxes, 'Z')
            app.SingleSignalProcessingOutputPreviewAxes.FontName = 'Segoe UI';
            app.SingleSignalProcessingOutputPreviewAxes.YGrid = 'on';
            app.SingleSignalProcessingOutputPreviewAxes.Position = [20 110 900 310];

            % Create SingleSignalProcessingLoadedSignalsPanel
            app.SingleSignalProcessingLoadedSignalsPanel = uipanel(app.SingleSignalProcessingTab);
            app.SingleSignalProcessingLoadedSignalsPanel.Title = 'Loaded Signals';
            app.SingleSignalProcessingLoadedSignalsPanel.BackgroundColor = [0.851 0.851 0.851];
            app.SingleSignalProcessingLoadedSignalsPanel.FontName = 'Segoe UI';
            app.SingleSignalProcessingLoadedSignalsPanel.FontSize = 14;
            app.SingleSignalProcessingLoadedSignalsPanel.Position = [940 20 240 720];

            % Create SingleSignalProcessingLoadedSignalsGrid
            app.SingleSignalProcessingLoadedSignalsGrid = uigridlayout(app.SingleSignalProcessingLoadedSignalsPanel);
            app.SingleSignalProcessingLoadedSignalsGrid.ColumnWidth = {'1x'};
            app.SingleSignalProcessingLoadedSignalsGrid.RowHeight = {'1x', 'fit'};
            app.SingleSignalProcessingLoadedSignalsGrid.BackgroundColor = [1 1 1];

            % Create SingleSignalProcessingLoadedSignalsTable
            app.SingleSignalProcessingLoadedSignalsTable = uitable(app.SingleSignalProcessingLoadedSignalsGrid);
            app.SingleSignalProcessingLoadedSignalsTable.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.SingleSignalProcessingLoadedSignalsTable.ColumnName = {'File Name'; 'Type'; 'Sample Frequency'};
            app.SingleSignalProcessingLoadedSignalsTable.ColumnWidth = {'1x', '1x', '1x'};
            app.SingleSignalProcessingLoadedSignalsTable.RowName = {};
            app.SingleSignalProcessingLoadedSignalsTable.SelectionType = 'row';
            app.SingleSignalProcessingLoadedSignalsTable.FontName = 'Segoe UI';
            app.SingleSignalProcessingLoadedSignalsTable.Layout.Row = 1;
            app.SingleSignalProcessingLoadedSignalsTable.Layout.Column = 1;
            app.SingleSignalProcessingLoadedSignalsTable.FontSize = 14;

            % Create SingleSignalProcessingLoadedSignalsButtonsGrid
            app.SingleSignalProcessingLoadedSignalsButtonsGrid = uigridlayout(app.SingleSignalProcessingLoadedSignalsGrid);
            app.SingleSignalProcessingLoadedSignalsButtonsGrid.ColumnWidth = {'1x'};
            app.SingleSignalProcessingLoadedSignalsButtonsGrid.Layout.Row = 2;
            app.SingleSignalProcessingLoadedSignalsButtonsGrid.Layout.Column = 1;
            app.SingleSignalProcessingLoadedSignalsButtonsGrid.BackgroundColor = [1 1 1];

            % Create SingleSignalProcessingSelectSignalButton
            app.SingleSignalProcessingSelectSignalButton = uibutton(app.SingleSignalProcessingLoadedSignalsButtonsGrid, 'push');
            app.SingleSignalProcessingSelectSignalButton.ButtonPushedFcn = createCallbackFcn(app, @SingleSignalProcessingSelectSignalButtonPushed, true);
            app.SingleSignalProcessingSelectSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.SingleSignalProcessingSelectSignalButton.Layout.Row = 1;
            app.SingleSignalProcessingSelectSignalButton.Layout.Column = 1;
            app.SingleSignalProcessingSelectSignalButton.Text = 'Select Signal';

            % Create SingleSignalProcessingRemoveSignalButton
            app.SingleSignalProcessingRemoveSignalButton = uibutton(app.SingleSignalProcessingLoadedSignalsButtonsGrid, 'push');
            app.SingleSignalProcessingRemoveSignalButton.ButtonPushedFcn = createCallbackFcn(app, @SingleSignalProcessingRemoveSignalButtonPushed, true);
            app.SingleSignalProcessingRemoveSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.SingleSignalProcessingRemoveSignalButton.Layout.Row = 2;
            app.SingleSignalProcessingRemoveSignalButton.Layout.Column = 1;
            app.SingleSignalProcessingRemoveSignalButton.Text = 'Remove Signal';

            % Create SingleSignalProcessingButtonsPanel
            app.SingleSignalProcessingButtonsPanel = uipanel(app.SingleSignalProcessingTab);
            app.SingleSignalProcessingButtonsPanel.Position = [20 20 900 80];

            % Create SingleSignalProcessingButtonsGrid
            app.SingleSignalProcessingButtonsGrid = uigridlayout(app.SingleSignalProcessingButtonsPanel);
            app.SingleSignalProcessingButtonsGrid.ColumnWidth = {'1x', '1x', '1x'};
            app.SingleSignalProcessingButtonsGrid.RowHeight = {'1x'};
            app.SingleSignalProcessingButtonsGrid.BackgroundColor = [1 1 1];

            % Create SelectanoperationDropDown_3Label
            app.SelectanoperationDropDown_3Label = uilabel(app.SingleSignalProcessingButtonsGrid);
            app.SelectanoperationDropDown_3Label.BackgroundColor = [0.749 0.851 0.651];
            app.SelectanoperationDropDown_3Label.HorizontalAlignment = 'center';
            app.SelectanoperationDropDown_3Label.Layout.Row = 1;
            app.SelectanoperationDropDown_3Label.Layout.Column = 1;
            app.SelectanoperationDropDown_3Label.Text = 'Select an operation';

            % Create SingleSignalSelectOperationDropDown
            app.SingleSignalSelectOperationDropDown = uidropdown(app.SingleSignalProcessingButtonsGrid);
            app.SingleSignalSelectOperationDropDown.Items = {'Time reflection', 'Time displacement', 'Downsampling', 'Upsampling', 'Amplitude scaling', 'Exponentiation', 'Logarithm', 'Play Signal Forward', 'Play Signal Reverse', 'Add Echo', 'Volume Envelope', 'Stereo to Mono Conversion'};
            app.SingleSignalSelectOperationDropDown.BackgroundColor = [0.749 0.851 0.651];
            app.SingleSignalSelectOperationDropDown.Layout.Row = 1;
            app.SingleSignalSelectOperationDropDown.Layout.Column = 2;
            app.SingleSignalSelectOperationDropDown.Value = 'Time reflection';

            % Create SingleSignalApplyButton
            app.SingleSignalApplyButton = uibutton(app.SingleSignalProcessingButtonsGrid, 'push');
            app.SingleSignalApplyButton.ButtonPushedFcn = createCallbackFcn(app, @SingleSignalApplyButtonPushed, true);
            app.SingleSignalApplyButton.BackgroundColor = [0.749 0.851 0.651];
            app.SingleSignalApplyButton.Layout.Row = 1;
            app.SingleSignalApplyButton.Layout.Column = 3;
            app.SingleSignalApplyButton.Text = 'Apply';

            % Create MultipleSignalProcessingTab
            app.MultipleSignalProcessingTab = uitab(app.ProcessingTabGroup);
            app.MultipleSignalProcessingTab.Title = 'Multiple Signal Processing';
            app.MultipleSignalProcessingTab.BackgroundColor = [0.9412 0.9686 0.9412];

            % Create MultipleSignalInputSignalsPreviewAxes
            app.MultipleSignalInputSignalsPreviewAxes = uiaxes(app.MultipleSignalProcessingTab);
            title(app.MultipleSignalInputSignalsPreviewAxes, 'Input Signals Preview')
            xlabel(app.MultipleSignalInputSignalsPreviewAxes, 'X')
            ylabel(app.MultipleSignalInputSignalsPreviewAxes, 'Y')
            zlabel(app.MultipleSignalInputSignalsPreviewAxes, 'Z')
            app.MultipleSignalInputSignalsPreviewAxes.FontName = 'Segoe UI';
            app.MultipleSignalInputSignalsPreviewAxes.YGrid = 'on';
            app.MultipleSignalInputSignalsPreviewAxes.Position = [20 430 900 310];

            % Create MultipleSignalOutputSignalPreviewAxes
            app.MultipleSignalOutputSignalPreviewAxes = uiaxes(app.MultipleSignalProcessingTab);
            title(app.MultipleSignalOutputSignalPreviewAxes, 'Output Signal Preview')
            xlabel(app.MultipleSignalOutputSignalPreviewAxes, 'X')
            ylabel(app.MultipleSignalOutputSignalPreviewAxes, 'Y')
            zlabel(app.MultipleSignalOutputSignalPreviewAxes, 'Z')
            app.MultipleSignalOutputSignalPreviewAxes.FontName = 'Segoe UI';
            app.MultipleSignalOutputSignalPreviewAxes.YGrid = 'on';
            app.MultipleSignalOutputSignalPreviewAxes.Position = [20 110 900 310];

            % Create MultipleSignalLoadedSignalsPanel
            app.MultipleSignalLoadedSignalsPanel = uipanel(app.MultipleSignalProcessingTab);
            app.MultipleSignalLoadedSignalsPanel.Title = 'Loaded Signals';
            app.MultipleSignalLoadedSignalsPanel.BackgroundColor = [0.851 0.851 0.851];
            app.MultipleSignalLoadedSignalsPanel.FontName = 'Segoe UI';
            app.MultipleSignalLoadedSignalsPanel.FontSize = 14;
            app.MultipleSignalLoadedSignalsPanel.Position = [940 20 240 720];

            % Create MultipleSignalLoadedSignalsGrid
            app.MultipleSignalLoadedSignalsGrid = uigridlayout(app.MultipleSignalLoadedSignalsPanel);
            app.MultipleSignalLoadedSignalsGrid.ColumnWidth = {'1x'};
            app.MultipleSignalLoadedSignalsGrid.RowHeight = {'1x', 'fit'};
            app.MultipleSignalLoadedSignalsGrid.BackgroundColor = [1 1 1];

            % Create MultipleSignalLoadedSignalsTable
            app.MultipleSignalLoadedSignalsTable = uitable(app.MultipleSignalLoadedSignalsGrid);
            app.MultipleSignalLoadedSignalsTable.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.MultipleSignalLoadedSignalsTable.ColumnName = {'File Name'; 'Type'; 'Sample Frequency'};
            app.MultipleSignalLoadedSignalsTable.ColumnWidth = {'1x', '1x', '1x'};
            app.MultipleSignalLoadedSignalsTable.RowName = {};
            app.MultipleSignalLoadedSignalsTable.SelectionType = 'row';
            app.MultipleSignalLoadedSignalsTable.FontName = 'Segoe UI';
            app.MultipleSignalLoadedSignalsTable.Layout.Row = 1;
            app.MultipleSignalLoadedSignalsTable.Layout.Column = 1;
            app.MultipleSignalLoadedSignalsTable.FontSize = 14;

            % Create MultipleSignalLoadedSignalsButtonsGrid1
            app.MultipleSignalLoadedSignalsButtonsGrid1 = uigridlayout(app.MultipleSignalLoadedSignalsGrid);
            app.MultipleSignalLoadedSignalsButtonsGrid1.ColumnWidth = {'1x'};
            app.MultipleSignalLoadedSignalsButtonsGrid1.Layout.Row = 2;
            app.MultipleSignalLoadedSignalsButtonsGrid1.Layout.Column = 1;
            app.MultipleSignalLoadedSignalsButtonsGrid1.BackgroundColor = [1 1 1];

            % Create MultipleSignalRemoveSignalButton
            app.MultipleSignalRemoveSignalButton = uibutton(app.MultipleSignalLoadedSignalsButtonsGrid1, 'push');
            app.MultipleSignalRemoveSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.MultipleSignalRemoveSignalButton.Layout.Row = 2;
            app.MultipleSignalRemoveSignalButton.Layout.Column = 1;
            app.MultipleSignalRemoveSignalButton.Text = 'Remove Signal';

            % Create MultipleSignalLoadedSignalsButtonsGrid2
            app.MultipleSignalLoadedSignalsButtonsGrid2 = uigridlayout(app.MultipleSignalLoadedSignalsButtonsGrid1);
            app.MultipleSignalLoadedSignalsButtonsGrid2.RowHeight = {'fit'};
            app.MultipleSignalLoadedSignalsButtonsGrid2.Padding = [0 0 0 0];
            app.MultipleSignalLoadedSignalsButtonsGrid2.Layout.Row = 1;
            app.MultipleSignalLoadedSignalsButtonsGrid2.Layout.Column = 1;

            % Create MultipleSignalSelectSignal1Button
            app.MultipleSignalSelectSignal1Button = uibutton(app.MultipleSignalLoadedSignalsButtonsGrid2, 'push');
            app.MultipleSignalSelectSignal1Button.ButtonPushedFcn = createCallbackFcn(app, @MultipleSignalSelectSignal1ButtonPushed, true);
            app.MultipleSignalSelectSignal1Button.BackgroundColor = [0.749 0.851 0.651];
            app.MultipleSignalSelectSignal1Button.Layout.Row = 1;
            app.MultipleSignalSelectSignal1Button.Layout.Column = 1;
            app.MultipleSignalSelectSignal1Button.Text = 'Select Signal 1';

            % Create MultipleSignalSelectSignal2Button
            app.MultipleSignalSelectSignal2Button = uibutton(app.MultipleSignalLoadedSignalsButtonsGrid2, 'push');
            app.MultipleSignalSelectSignal2Button.ButtonPushedFcn = createCallbackFcn(app, @MultipleSignalSelectSignal2ButtonPushed, true);
            app.MultipleSignalSelectSignal2Button.BackgroundColor = [0.749 0.851 0.651];
            app.MultipleSignalSelectSignal2Button.Layout.Row = 1;
            app.MultipleSignalSelectSignal2Button.Layout.Column = 2;
            app.MultipleSignalSelectSignal2Button.Text = 'Select Signal 2';

            % Create MultipleSignalProcessingButtonsPanel
            app.MultipleSignalProcessingButtonsPanel = uipanel(app.MultipleSignalProcessingTab);
            app.MultipleSignalProcessingButtonsPanel.Position = [20 20 900 80];

            % Create MultipleSignalProcessingButtonsGrid
            app.MultipleSignalProcessingButtonsGrid = uigridlayout(app.MultipleSignalProcessingButtonsPanel);
            app.MultipleSignalProcessingButtonsGrid.ColumnWidth = {'1x', '1x', '1x'};
            app.MultipleSignalProcessingButtonsGrid.RowHeight = {'1x'};
            app.MultipleSignalProcessingButtonsGrid.BackgroundColor = [1 1 1];

            % Create SelectanoperationDropDown_4Label
            app.SelectanoperationDropDown_4Label = uilabel(app.MultipleSignalProcessingButtonsGrid);
            app.SelectanoperationDropDown_4Label.BackgroundColor = [0.749 0.851 0.651];
            app.SelectanoperationDropDown_4Label.HorizontalAlignment = 'center';
            app.SelectanoperationDropDown_4Label.Layout.Row = 1;
            app.SelectanoperationDropDown_4Label.Layout.Column = 1;
            app.SelectanoperationDropDown_4Label.Text = 'Select an operation';

            % Create MultipleSignalSelectOperationDropDown
            app.MultipleSignalSelectOperationDropDown = uidropdown(app.MultipleSignalProcessingButtonsGrid);
            app.MultipleSignalSelectOperationDropDown.Items = {'Addition', 'Subtraction', 'Multiplication', 'Division', 'Convolution', 'Correlation', 'Generate Stereo Signal'};
            app.MultipleSignalSelectOperationDropDown.BackgroundColor = [0.749 0.851 0.651];
            app.MultipleSignalSelectOperationDropDown.Layout.Row = 1;
            app.MultipleSignalSelectOperationDropDown.Layout.Column = 2;
            app.MultipleSignalSelectOperationDropDown.Value = 'Addition';

            % Create MultipleSignalApplyButton
            app.MultipleSignalApplyButton = uibutton(app.MultipleSignalProcessingButtonsGrid, 'push');
            app.MultipleSignalApplyButton.ButtonPushedFcn = createCallbackFcn(app, @MultipleSignalApplyButtonPushed, true);
            app.MultipleSignalApplyButton.BackgroundColor = [0.749 0.851 0.651];
            app.MultipleSignalApplyButton.Layout.Row = 1;
            app.MultipleSignalApplyButton.Layout.Column = 3;
            app.MultipleSignalApplyButton.Text = 'Apply';

            % Create FourierTransformTab
            app.FourierTransformTab = uitab(app.ProcessingTabGroup);
            app.FourierTransformTab.Title = 'Fourier Transform';
            app.FourierTransformTab.BackgroundColor = [0.9412 0.9686 0.9412];

            % Create FourierTransformInputSignalPreviewAxes
            app.FourierTransformInputSignalPreviewAxes = uiaxes(app.FourierTransformTab);
            title(app.FourierTransformInputSignalPreviewAxes, 'Input Signal Preview')
            xlabel(app.FourierTransformInputSignalPreviewAxes, 'X')
            ylabel(app.FourierTransformInputSignalPreviewAxes, 'Y')
            zlabel(app.FourierTransformInputSignalPreviewAxes, 'Z')
            app.FourierTransformInputSignalPreviewAxes.FontName = 'Segoe UI';
            app.FourierTransformInputSignalPreviewAxes.YGrid = 'on';
            app.FourierTransformInputSignalPreviewAxes.Position = [30 422 888 296];

            % Create FourierTransformIMagnitudeSignalPreviewAxes
            app.FourierTransformIMagnitudeSignalPreviewAxes = uiaxes(app.FourierTransformTab);
            title(app.FourierTransformIMagnitudeSignalPreviewAxes, 'Magnitude')
            xlabel(app.FourierTransformIMagnitudeSignalPreviewAxes, 'X')
            ylabel(app.FourierTransformIMagnitudeSignalPreviewAxes, 'Y')
            zlabel(app.FourierTransformIMagnitudeSignalPreviewAxes, 'Z')
            app.FourierTransformIMagnitudeSignalPreviewAxes.FontName = 'Segoe UI';
            app.FourierTransformIMagnitudeSignalPreviewAxes.YGrid = 'on';
            app.FourierTransformIMagnitudeSignalPreviewAxes.Position = [21 105 440 310];

            % Create FourierTransformPhaseSignalPreviewAxes
            app.FourierTransformPhaseSignalPreviewAxes = uiaxes(app.FourierTransformTab);
            title(app.FourierTransformPhaseSignalPreviewAxes, 'Phase')
            xlabel(app.FourierTransformPhaseSignalPreviewAxes, 'X')
            ylabel(app.FourierTransformPhaseSignalPreviewAxes, 'Y')
            zlabel(app.FourierTransformPhaseSignalPreviewAxes, 'Z')
            app.FourierTransformPhaseSignalPreviewAxes.FontName = 'Segoe UI';
            app.FourierTransformPhaseSignalPreviewAxes.YGrid = 'on';
            app.FourierTransformPhaseSignalPreviewAxes.Position = [481 105 440 310];

            % Create FourierTransformLoadedSignalsPanel
            app.FourierTransformLoadedSignalsPanel = uipanel(app.FourierTransformTab);
            app.FourierTransformLoadedSignalsPanel.Title = 'Loaded Signals';
            app.FourierTransformLoadedSignalsPanel.FontName = 'Segoe UI';
            app.FourierTransformLoadedSignalsPanel.FontSize = 14;
            app.FourierTransformLoadedSignalsPanel.Position = [940 20 240 720];

            % Create FourierTransformLoadedSignalsGrid
            app.FourierTransformLoadedSignalsGrid = uigridlayout(app.FourierTransformLoadedSignalsPanel);
            app.FourierTransformLoadedSignalsGrid.ColumnWidth = {'1x'};
            app.FourierTransformLoadedSignalsGrid.RowHeight = {'1x', 'fit'};
            app.FourierTransformLoadedSignalsGrid.BackgroundColor = [1 1 1];

            % Create FourierTransformLoadedSignalsTable
            app.FourierTransformLoadedSignalsTable = uitable(app.FourierTransformLoadedSignalsGrid);
            app.FourierTransformLoadedSignalsTable.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.FourierTransformLoadedSignalsTable.ColumnName = {'File Name'; 'Type'; 'Sample Frequency'};
            app.FourierTransformLoadedSignalsTable.ColumnWidth = {'1x', '1x', '1x'};
            app.FourierTransformLoadedSignalsTable.RowName = {};
            app.FourierTransformLoadedSignalsTable.SelectionType = 'row';
            app.FourierTransformLoadedSignalsTable.FontName = 'Segoe UI';
            app.FourierTransformLoadedSignalsTable.Layout.Row = 1;
            app.FourierTransformLoadedSignalsTable.Layout.Column = 1;
            app.FourierTransformLoadedSignalsTable.FontSize = 14;

            % Create FourierTransformLoadedSignalsButtonsGrid
            app.FourierTransformLoadedSignalsButtonsGrid = uigridlayout(app.FourierTransformLoadedSignalsGrid);
            app.FourierTransformLoadedSignalsButtonsGrid.ColumnWidth = {'1x'};
            app.FourierTransformLoadedSignalsButtonsGrid.Layout.Row = 2;
            app.FourierTransformLoadedSignalsButtonsGrid.Layout.Column = 1;
            app.FourierTransformLoadedSignalsButtonsGrid.BackgroundColor = [1 1 1];

            % Create FourierTransformSelectSignalButton
            app.FourierTransformSelectSignalButton = uibutton(app.FourierTransformLoadedSignalsButtonsGrid, 'push');
            app.FourierTransformSelectSignalButton.ButtonPushedFcn = createCallbackFcn(app, @FourierTransformSelectSignalButtonPushed, true);
            app.FourierTransformSelectSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.FourierTransformSelectSignalButton.Layout.Row = 1;
            app.FourierTransformSelectSignalButton.Layout.Column = 1;
            app.FourierTransformSelectSignalButton.Text = 'Select Signal';

            % Create FourierTransformRemoveSignalButton
            app.FourierTransformRemoveSignalButton = uibutton(app.FourierTransformLoadedSignalsButtonsGrid, 'push');
            app.FourierTransformRemoveSignalButton.ButtonPushedFcn = createCallbackFcn(app, @FourierTransformRemoveSignalButtonPushed, true);
            app.FourierTransformRemoveSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.FourierTransformRemoveSignalButton.Layout.Row = 2;
            app.FourierTransformRemoveSignalButton.Layout.Column = 1;
            app.FourierTransformRemoveSignalButton.Text = 'Remove Signal';

            % Create FourierTransformButtonsPanel
            app.FourierTransformButtonsPanel = uipanel(app.FourierTransformTab);
            app.FourierTransformButtonsPanel.Position = [20 20 900 80];

            % Create FourierTransformButtonsGrid
            app.FourierTransformButtonsGrid = uigridlayout(app.FourierTransformButtonsPanel);
            app.FourierTransformButtonsGrid.ColumnWidth = {'1x'};
            app.FourierTransformButtonsGrid.RowHeight = {'1x'};
            app.FourierTransformButtonsGrid.BackgroundColor = [1 1 1];

            % Create ApplyFourierTransformButton
            app.ApplyFourierTransformButton = uibutton(app.FourierTransformButtonsGrid, 'push');
            app.ApplyFourierTransformButton.ButtonPushedFcn = createCallbackFcn(app, @ApplyFourierTransformButtonPushed, true);
            app.ApplyFourierTransformButton.BackgroundColor = [0.749 0.851 0.651];
            app.ApplyFourierTransformButton.Layout.Row = 1;
            app.ApplyFourierTransformButton.Layout.Column = 1;
            app.ApplyFourierTransformButton.Text = 'Apply Fourier Transform';

            % Create CosineTransformTab
            app.CosineTransformTab = uitab(app.ProcessingTabGroup);
            app.CosineTransformTab.Title = 'Cosine Transform';
            app.CosineTransformTab.BackgroundColor = [0.9412 0.9686 0.9412];

            % Create CosineTransformInputSignalPreviewAxes
            app.CosineTransformInputSignalPreviewAxes = uiaxes(app.CosineTransformTab);
            title(app.CosineTransformInputSignalPreviewAxes, 'Input Signal Preview')
            xlabel(app.CosineTransformInputSignalPreviewAxes, 'X')
            ylabel(app.CosineTransformInputSignalPreviewAxes, 'Y')
            zlabel(app.CosineTransformInputSignalPreviewAxes, 'Z')
            app.CosineTransformInputSignalPreviewAxes.FontName = 'Segoe UI';
            app.CosineTransformInputSignalPreviewAxes.YGrid = 'on';
            app.CosineTransformInputSignalPreviewAxes.Position = [20 430 900 310];

            % Create CosineTransformMagnitudePreviewAxes
            app.CosineTransformMagnitudePreviewAxes = uiaxes(app.CosineTransformTab);
            title(app.CosineTransformMagnitudePreviewAxes, 'Magnitude')
            xlabel(app.CosineTransformMagnitudePreviewAxes, 'X')
            ylabel(app.CosineTransformMagnitudePreviewAxes, 'Y')
            zlabel(app.CosineTransformMagnitudePreviewAxes, 'Z')
            app.CosineTransformMagnitudePreviewAxes.FontName = 'Segoe UI';
            app.CosineTransformMagnitudePreviewAxes.YGrid = 'on';
            app.CosineTransformMagnitudePreviewAxes.Position = [20 110 900 310];

            % Create CosineTransformLoadedSignalsPanel
            app.CosineTransformLoadedSignalsPanel = uipanel(app.CosineTransformTab);
            app.CosineTransformLoadedSignalsPanel.Title = 'Loaded Signals';
            app.CosineTransformLoadedSignalsPanel.FontName = 'Segoe UI';
            app.CosineTransformLoadedSignalsPanel.FontSize = 14;
            app.CosineTransformLoadedSignalsPanel.Position = [940 20 240 720];

            % Create CosineTransformLoadedSignalsGrid
            app.CosineTransformLoadedSignalsGrid = uigridlayout(app.CosineTransformLoadedSignalsPanel);
            app.CosineTransformLoadedSignalsGrid.ColumnWidth = {'1x'};
            app.CosineTransformLoadedSignalsGrid.RowHeight = {'1x', 'fit'};
            app.CosineTransformLoadedSignalsGrid.BackgroundColor = [1 1 1];

            % Create CosineTransformLoadedSignalsTable
            app.CosineTransformLoadedSignalsTable = uitable(app.CosineTransformLoadedSignalsGrid);
            app.CosineTransformLoadedSignalsTable.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.CosineTransformLoadedSignalsTable.ColumnName = {'File Name'; 'Type'; 'Sample Frequency'};
            app.CosineTransformLoadedSignalsTable.ColumnWidth = {'1x', '1x', '1x'};
            app.CosineTransformLoadedSignalsTable.RowName = {};
            app.CosineTransformLoadedSignalsTable.SelectionType = 'row';
            app.CosineTransformLoadedSignalsTable.FontName = 'Segoe UI';
            app.CosineTransformLoadedSignalsTable.Layout.Row = 1;
            app.CosineTransformLoadedSignalsTable.Layout.Column = 1;
            app.CosineTransformLoadedSignalsTable.FontSize = 14;

            % Create CosineTransformLoadedSignalsButtonsGrid
            app.CosineTransformLoadedSignalsButtonsGrid = uigridlayout(app.CosineTransformLoadedSignalsGrid);
            app.CosineTransformLoadedSignalsButtonsGrid.ColumnWidth = {'1x'};
            app.CosineTransformLoadedSignalsButtonsGrid.Layout.Row = 2;
            app.CosineTransformLoadedSignalsButtonsGrid.Layout.Column = 1;
            app.CosineTransformLoadedSignalsButtonsGrid.BackgroundColor = [1 1 1];

            % Create CosineTransformSelectSignalButton
            app.CosineTransformSelectSignalButton = uibutton(app.CosineTransformLoadedSignalsButtonsGrid, 'push');
            app.CosineTransformSelectSignalButton.ButtonPushedFcn = createCallbackFcn(app, @CosineTransformSelectSignalButtonPushed, true);
            app.CosineTransformSelectSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.CosineTransformSelectSignalButton.Layout.Row = 1;
            app.CosineTransformSelectSignalButton.Layout.Column = 1;
            app.CosineTransformSelectSignalButton.Text = 'Select Signal';

            % Create CosineTransformRemoveSignalButton
            app.CosineTransformRemoveSignalButton = uibutton(app.CosineTransformLoadedSignalsButtonsGrid, 'push');
            app.CosineTransformRemoveSignalButton.ButtonPushedFcn = createCallbackFcn(app, @CosineTransformRemoveSignalButtonPushed, true);
            app.CosineTransformRemoveSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.CosineTransformRemoveSignalButton.Layout.Row = 2;
            app.CosineTransformRemoveSignalButton.Layout.Column = 1;
            app.CosineTransformRemoveSignalButton.Text = 'Remove Signal';

            % Create CosineTransformButtonsPanel
            app.CosineTransformButtonsPanel = uipanel(app.CosineTransformTab);
            app.CosineTransformButtonsPanel.Position = [20 20 900 80];

            % Create CosineTransformButtonsGrid
            app.CosineTransformButtonsGrid = uigridlayout(app.CosineTransformButtonsPanel);
            app.CosineTransformButtonsGrid.ColumnWidth = {'1x'};
            app.CosineTransformButtonsGrid.RowHeight = {'1x'};
            app.CosineTransformButtonsGrid.BackgroundColor = [1 1 1];

            % Create ApplyCosineTransformButton
            app.ApplyCosineTransformButton = uibutton(app.CosineTransformButtonsGrid, 'push');
            app.ApplyCosineTransformButton.ButtonPushedFcn = createCallbackFcn(app, @ApplyCosineTransformButtonPushed, true);
            app.ApplyCosineTransformButton.BackgroundColor = [0.749 0.851 0.651];
            app.ApplyCosineTransformButton.Layout.Row = 1;
            app.ApplyCosineTransformButton.Layout.Column = 1;
            app.ApplyCosineTransformButton.Text = 'Apply Cosine Transform';

            % Create WaveletTransformTab
            app.WaveletTransformTab = uitab(app.ProcessingTabGroup);
            app.WaveletTransformTab.Title = 'Wavelet Transform';
            app.WaveletTransformTab.BackgroundColor = [0.9412 0.9686 0.9412];

            % Create WaveletTransformInputSignalPreviewAxes
            app.WaveletTransformInputSignalPreviewAxes = uiaxes(app.WaveletTransformTab);
            title(app.WaveletTransformInputSignalPreviewAxes, 'Input Signal Preview')
            xlabel(app.WaveletTransformInputSignalPreviewAxes, 'X')
            ylabel(app.WaveletTransformInputSignalPreviewAxes, 'Y')
            zlabel(app.WaveletTransformInputSignalPreviewAxes, 'Z')
            app.WaveletTransformInputSignalPreviewAxes.FontName = 'Segoe UI';
            app.WaveletTransformInputSignalPreviewAxes.YGrid = 'on';
            app.WaveletTransformInputSignalPreviewAxes.Position = [20 430 900 310];

            % Create WaveletTransformDetailLevel2PreviewAxes
            app.WaveletTransformDetailLevel2PreviewAxes = uiaxes(app.WaveletTransformTab);
            title(app.WaveletTransformDetailLevel2PreviewAxes, 'Detail Level 2 (D2)')
            xlabel(app.WaveletTransformDetailLevel2PreviewAxes, 'X')
            ylabel(app.WaveletTransformDetailLevel2PreviewAxes, 'Y')
            zlabel(app.WaveletTransformDetailLevel2PreviewAxes, 'Z')
            app.WaveletTransformDetailLevel2PreviewAxes.FontName = 'Segoe UI';
            app.WaveletTransformDetailLevel2PreviewAxes.YGrid = 'on';
            app.WaveletTransformDetailLevel2PreviewAxes.Position = [20 110 440 150];

            % Create WaveletTransformDetailLevel1PreviewAxes
            app.WaveletTransformDetailLevel1PreviewAxes = uiaxes(app.WaveletTransformTab);
            title(app.WaveletTransformDetailLevel1PreviewAxes, 'Detail Level 1 (D1)')
            xlabel(app.WaveletTransformDetailLevel1PreviewAxes, 'X')
            ylabel(app.WaveletTransformDetailLevel1PreviewAxes, 'Y')
            zlabel(app.WaveletTransformDetailLevel1PreviewAxes, 'Z')
            app.WaveletTransformDetailLevel1PreviewAxes.FontName = 'Segoe UI';
            app.WaveletTransformDetailLevel1PreviewAxes.YGrid = 'on';
            app.WaveletTransformDetailLevel1PreviewAxes.Position = [480 110 440 150];

            % Create WaveletTransformApproximationLevel3PreviewAxes
            app.WaveletTransformApproximationLevel3PreviewAxes = uiaxes(app.WaveletTransformTab);
            title(app.WaveletTransformApproximationLevel3PreviewAxes, 'Approximation Level 3 (A3)')
            xlabel(app.WaveletTransformApproximationLevel3PreviewAxes, 'X')
            ylabel(app.WaveletTransformApproximationLevel3PreviewAxes, 'Y')
            zlabel(app.WaveletTransformApproximationLevel3PreviewAxes, 'Z')
            app.WaveletTransformApproximationLevel3PreviewAxes.FontName = 'Segoe UI';
            app.WaveletTransformApproximationLevel3PreviewAxes.YGrid = 'on';
            app.WaveletTransformApproximationLevel3PreviewAxes.Position = [20 270 440 150];

            % Create WaveletTransformDetailLevel3PreviewAxes
            app.WaveletTransformDetailLevel3PreviewAxes = uiaxes(app.WaveletTransformTab);
            title(app.WaveletTransformDetailLevel3PreviewAxes, 'Detail Level 3 (D3)')
            xlabel(app.WaveletTransformDetailLevel3PreviewAxes, 'X')
            ylabel(app.WaveletTransformDetailLevel3PreviewAxes, 'Y')
            zlabel(app.WaveletTransformDetailLevel3PreviewAxes, 'Z')
            app.WaveletTransformDetailLevel3PreviewAxes.FontName = 'Segoe UI';
            app.WaveletTransformDetailLevel3PreviewAxes.YGrid = 'on';
            app.WaveletTransformDetailLevel3PreviewAxes.Position = [480 270 440 150];

            % Create WaveletTransformLoadedSignalsPanel
            app.WaveletTransformLoadedSignalsPanel = uipanel(app.WaveletTransformTab);
            app.WaveletTransformLoadedSignalsPanel.Title = 'Loaded Signals';
            app.WaveletTransformLoadedSignalsPanel.FontName = 'Segoe UI';
            app.WaveletTransformLoadedSignalsPanel.FontSize = 14;
            app.WaveletTransformLoadedSignalsPanel.Position = [940 20 240 720];

            % Create WaveletTransformLoadedSignalsGrid
            app.WaveletTransformLoadedSignalsGrid = uigridlayout(app.WaveletTransformLoadedSignalsPanel);
            app.WaveletTransformLoadedSignalsGrid.ColumnWidth = {'1x'};
            app.WaveletTransformLoadedSignalsGrid.RowHeight = {'1x', 'fit'};
            app.WaveletTransformLoadedSignalsGrid.BackgroundColor = [1 1 1];

            % Create WaveletTransformLoadedSignalsTable
            app.WaveletTransformLoadedSignalsTable = uitable(app.WaveletTransformLoadedSignalsGrid);
            app.WaveletTransformLoadedSignalsTable.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.WaveletTransformLoadedSignalsTable.ColumnName = {'File Name'; 'Type'; 'Sample Frequency'};
            app.WaveletTransformLoadedSignalsTable.ColumnWidth = {'1x', '1x', '1x'};
            app.WaveletTransformLoadedSignalsTable.RowName = {};
            app.WaveletTransformLoadedSignalsTable.SelectionType = 'row';
            app.WaveletTransformLoadedSignalsTable.FontName = 'Segoe UI';
            app.WaveletTransformLoadedSignalsTable.Layout.Row = 1;
            app.WaveletTransformLoadedSignalsTable.Layout.Column = 1;
            app.WaveletTransformLoadedSignalsTable.FontSize = 14;

            % Create loadedSignalsLayout2_11
            app.loadedSignalsLayout2_11 = uigridlayout(app.WaveletTransformLoadedSignalsGrid);
            app.loadedSignalsLayout2_11.ColumnWidth = {'1x'};
            app.loadedSignalsLayout2_11.Layout.Row = 2;
            app.loadedSignalsLayout2_11.Layout.Column = 1;
            app.loadedSignalsLayout2_11.BackgroundColor = [1 1 1];

            % Create SelectSignalButton_8
            app.SelectSignalButton_8 = uibutton(app.loadedSignalsLayout2_11, 'push');
            app.SelectSignalButton_8.ButtonPushedFcn = createCallbackFcn(app, @SelectSignalButton_8Pushed, true);
            app.SelectSignalButton_8.BackgroundColor = [0.749 0.851 0.651];
            app.SelectSignalButton_8.Layout.Row = 1;
            app.SelectSignalButton_8.Layout.Column = 1;
            app.SelectSignalButton_8.Text = 'Select Signal';

            % Create RemoveSignalButton_11
            app.RemoveSignalButton_11 = uibutton(app.loadedSignalsLayout2_11, 'push');
            app.RemoveSignalButton_11.ButtonPushedFcn = createCallbackFcn(app, @RemoveSignalButton_11Pushed, true);
            app.RemoveSignalButton_11.BackgroundColor = [0.749 0.851 0.651];
            app.RemoveSignalButton_11.Layout.Row = 2;
            app.RemoveSignalButton_11.Layout.Column = 1;
            app.RemoveSignalButton_11.Text = 'Remove Signal';

            % Create WaveletTransformButtonsPanel
            app.WaveletTransformButtonsPanel = uipanel(app.WaveletTransformTab);
            app.WaveletTransformButtonsPanel.Position = [20 20 900 80];

            % Create WaveletTransformButtonsGrid
            app.WaveletTransformButtonsGrid = uigridlayout(app.WaveletTransformButtonsPanel);
            app.WaveletTransformButtonsGrid.ColumnWidth = {'1x'};
            app.WaveletTransformButtonsGrid.RowHeight = {'1x'};
            app.WaveletTransformButtonsGrid.BackgroundColor = [1 1 1];

            % Create ApplyWaveletTransformButton
            app.ApplyWaveletTransformButton = uibutton(app.WaveletTransformButtonsGrid, 'push');
            app.ApplyWaveletTransformButton.ButtonPushedFcn = createCallbackFcn(app, @ApplyWaveletTransformButtonPushed, true);
            app.ApplyWaveletTransformButton.BackgroundColor = [0.749 0.851 0.651];
            app.ApplyWaveletTransformButton.Layout.Row = 1;
            app.ApplyWaveletTransformButton.Layout.Column = 1;
            app.ApplyWaveletTransformButton.Text = 'Apply Wavelet Transform';

            % Create FilteringTab
            app.FilteringTab = uitab(app.ProcessingTabGroup);
            app.FilteringTab.Title = 'Filtering';
            app.FilteringTab.BackgroundColor = [0.9412 0.9686 0.9412];

            % Create FilteringInputSignalPreviewAxes
            app.FilteringInputSignalPreviewAxes = uiaxes(app.FilteringTab);
            title(app.FilteringInputSignalPreviewAxes, 'Input Signal Preview')
            xlabel(app.FilteringInputSignalPreviewAxes, 'X')
            ylabel(app.FilteringInputSignalPreviewAxes, 'Y')
            zlabel(app.FilteringInputSignalPreviewAxes, 'Z')
            app.FilteringInputSignalPreviewAxes.FontName = 'Segoe UI';
            app.FilteringInputSignalPreviewAxes.YGrid = 'on';
            app.FilteringInputSignalPreviewAxes.Position = [30 430 430 288];

            % Create FilteringOutputSignalPreviewAxes
            app.FilteringOutputSignalPreviewAxes = uiaxes(app.FilteringTab);
            title(app.FilteringOutputSignalPreviewAxes, 'Output Signal Preview')
            xlabel(app.FilteringOutputSignalPreviewAxes, 'X')
            ylabel(app.FilteringOutputSignalPreviewAxes, 'Y')
            zlabel(app.FilteringOutputSignalPreviewAxes, 'Z')
            app.FilteringOutputSignalPreviewAxes.FontName = 'Segoe UI';
            app.FilteringOutputSignalPreviewAxes.YGrid = 'on';
            app.FilteringOutputSignalPreviewAxes.Position = [30 110 890 310];

            % Create FilteringFilterPreviewAxes
            app.FilteringFilterPreviewAxes = uiaxes(app.FilteringTab);
            title(app.FilteringFilterPreviewAxes, 'Filter Preview')
            xlabel(app.FilteringFilterPreviewAxes, 'X')
            ylabel(app.FilteringFilterPreviewAxes, 'Y')
            zlabel(app.FilteringFilterPreviewAxes, 'Z')
            app.FilteringFilterPreviewAxes.FontName = 'Segoe UI';
            app.FilteringFilterPreviewAxes.YGrid = 'on';
            app.FilteringFilterPreviewAxes.Position = [490 428 430 288];

            % Create FilteringLoadedSignalsPanel
            app.FilteringLoadedSignalsPanel = uipanel(app.FilteringTab);
            app.FilteringLoadedSignalsPanel.Title = 'Loaded Signals';
            app.FilteringLoadedSignalsPanel.FontName = 'Segoe UI';
            app.FilteringLoadedSignalsPanel.FontSize = 14;
            app.FilteringLoadedSignalsPanel.Position = [940 20 240 720];

            % Create FilteringLoadedSignalsGrid
            app.FilteringLoadedSignalsGrid = uigridlayout(app.FilteringLoadedSignalsPanel);
            app.FilteringLoadedSignalsGrid.ColumnWidth = {'1x'};
            app.FilteringLoadedSignalsGrid.RowHeight = {'1x', 'fit'};
            app.FilteringLoadedSignalsGrid.BackgroundColor = [1 1 1];

            % Create FilteringLoadedSignalsTable
            app.FilteringLoadedSignalsTable = uitable(app.FilteringLoadedSignalsGrid);
            app.FilteringLoadedSignalsTable.BackgroundColor = [0.9412 0.9686 0.9412;0.9412 0.9686 0.9412];
            app.FilteringLoadedSignalsTable.ColumnName = {'File Name'; 'Type'; 'Sample Frequency'};
            app.FilteringLoadedSignalsTable.ColumnWidth = {'1x', '1x', '1x'};
            app.FilteringLoadedSignalsTable.RowName = {};
            app.FilteringLoadedSignalsTable.SelectionType = 'row';
            app.FilteringLoadedSignalsTable.FontName = 'Segoe UI';
            app.FilteringLoadedSignalsTable.Layout.Row = 1;
            app.FilteringLoadedSignalsTable.Layout.Column = 1;
            app.FilteringLoadedSignalsTable.FontSize = 14;

            % Create FilteringLoadedSignalsButtonsGrid1
            app.FilteringLoadedSignalsButtonsGrid1 = uigridlayout(app.FilteringLoadedSignalsGrid);
            app.FilteringLoadedSignalsButtonsGrid1.ColumnWidth = {'1x'};
            app.FilteringLoadedSignalsButtonsGrid1.Layout.Row = 2;
            app.FilteringLoadedSignalsButtonsGrid1.Layout.Column = 1;
            app.FilteringLoadedSignalsButtonsGrid1.BackgroundColor = [1 1 1];

            % Create FilteringRemoveSignalButton
            app.FilteringRemoveSignalButton = uibutton(app.FilteringLoadedSignalsButtonsGrid1, 'push');
            app.FilteringRemoveSignalButton.ButtonPushedFcn = createCallbackFcn(app, @FilteringRemoveSignalButtonPushed, true);
            app.FilteringRemoveSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.FilteringRemoveSignalButton.Layout.Row = 2;
            app.FilteringRemoveSignalButton.Layout.Column = 1;
            app.FilteringRemoveSignalButton.Text = 'Remove Signal';

            % Create FilteringLoadedSignalsButtonsGrid2
            app.FilteringLoadedSignalsButtonsGrid2 = uigridlayout(app.FilteringLoadedSignalsButtonsGrid1);
            app.FilteringLoadedSignalsButtonsGrid2.RowHeight = {'fit'};
            app.FilteringLoadedSignalsButtonsGrid2.Layout.Row = 1;
            app.FilteringLoadedSignalsButtonsGrid2.Layout.Column = 1;
            app.FilteringLoadedSignalsButtonsGrid2.BackgroundColor = [1 1 1];

            % Create FilteringSelectFilterButton
            app.FilteringSelectFilterButton = uibutton(app.FilteringLoadedSignalsButtonsGrid2, 'push');
            app.FilteringSelectFilterButton.ButtonPushedFcn = createCallbackFcn(app, @FilteringSelectFilterButtonPushed, true);
            app.FilteringSelectFilterButton.BackgroundColor = [0.749 0.851 0.651];
            app.FilteringSelectFilterButton.Layout.Row = 1;
            app.FilteringSelectFilterButton.Layout.Column = 1;
            app.FilteringSelectFilterButton.Text = 'Select Filter';

            % Create FilteringSelectSignalButton
            app.FilteringSelectSignalButton = uibutton(app.FilteringLoadedSignalsButtonsGrid2, 'push');
            app.FilteringSelectSignalButton.ButtonPushedFcn = createCallbackFcn(app, @FilteringSelectSignalButtonPushed, true);
            app.FilteringSelectSignalButton.BackgroundColor = [0.749 0.851 0.651];
            app.FilteringSelectSignalButton.Layout.Row = 1;
            app.FilteringSelectSignalButton.Layout.Column = 2;
            app.FilteringSelectSignalButton.Text = 'Select Signal';

            % Create FilteringButtonsPanel
            app.FilteringButtonsPanel = uipanel(app.FilteringTab);
            app.FilteringButtonsPanel.Position = [20 20 900 80];

            % Create FilteringButtonsGrid
            app.FilteringButtonsGrid = uigridlayout(app.FilteringButtonsPanel);
            app.FilteringButtonsGrid.ColumnWidth = {'1x', '1x', '1x'};
            app.FilteringButtonsGrid.RowHeight = {'1x'};
            app.FilteringButtonsGrid.BackgroundColor = [1 1 1];

            % Create Button
            app.Button = uibutton(app.FilteringButtonsGrid, 'state');
            app.Button.ValueChangedFcn = createCallbackFcn(app, @ButtonValueChanged, true);
            app.Button.Text = 'Frequency-Domain Filtering';
            app.Button.BackgroundColor = [0.749 0.851 0.651];
            app.Button.Layout.Row = 1;
            app.Button.Layout.Column = 3;

            % Create FilteringByDifferenceEquationButton
            app.FilteringByDifferenceEquationButton = uibutton(app.FilteringButtonsGrid, 'push');
            app.FilteringByDifferenceEquationButton.ButtonPushedFcn = createCallbackFcn(app, @FilteringByDifferenceEquationButtonPushed, true);
            app.FilteringByDifferenceEquationButton.BackgroundColor = [0.749 0.851 0.651];
            app.FilteringByDifferenceEquationButton.Layout.Row = 1;
            app.FilteringByDifferenceEquationButton.Layout.Column = 2;
            app.FilteringByDifferenceEquationButton.Text = 'Filtering By Difference Equation';

            % Create FilteringByConvolutionButton
            app.FilteringByConvolutionButton = uibutton(app.FilteringButtonsGrid, 'push');
            app.FilteringByConvolutionButton.ButtonPushedFcn = createCallbackFcn(app, @FilteringByConvolutionButtonPushed, true);
            app.FilteringByConvolutionButton.BackgroundColor = [0.749 0.851 0.651];
            app.FilteringByConvolutionButton.Layout.Row = 1;
            app.FilteringByConvolutionButton.Layout.Column = 1;
            app.FilteringByConvolutionButton.Text = 'Filtering By Convolution';

            % Create SpectrogramTab
            app.SpectrogramTab = uitab(app.ProcessingTabGroup);
            app.SpectrogramTab.Title = 'Spectrogram';
            app.SpectrogramTab.BackgroundColor = [0.9412 0.9686 0.9412];

            % Create UIAxes
            app.UIAxes = uiaxes(app.SpectrogramTab);
            title(app.UIAxes, 'Signal Spectrogram')
            xlabel(app.UIAxes, 'Frequency (Hz)')
            ylabel(app.UIAxes, 'Magnitude (Db)')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Position = [30 31 878 687];

            % Create FilteringLoadedSignalsPanel_2
            app.FilteringLoadedSignalsPanel_2 = uipanel(app.SpectrogramTab);
            app.FilteringLoadedSignalsPanel_2.Title = 'Loaded Signals';
            app.FilteringLoadedSignalsPanel_2.Position = [940 20 240 720];

            % Create FilteringLoadedSignalsGrid_2
            app.FilteringLoadedSignalsGrid_2 = uigridlayout(app.FilteringLoadedSignalsPanel_2);
            app.FilteringLoadedSignalsGrid_2.ColumnWidth = {'1x'};
            app.FilteringLoadedSignalsGrid_2.RowHeight = {'1x', 'fit'};

            % Create FilteringLoadedSignalsTable_2
            app.FilteringLoadedSignalsTable_2 = uitable(app.FilteringLoadedSignalsGrid_2);
            app.FilteringLoadedSignalsTable_2.ColumnName = {'File Name'; 'Type'; 'Sample Frequency'};
            app.FilteringLoadedSignalsTable_2.RowName = {};
            app.FilteringLoadedSignalsTable_2.Layout.Row = 1;
            app.FilteringLoadedSignalsTable_2.Layout.Column = 1;

            % Create FilteringLoadedSignalsButtonsGrid1_2
            app.FilteringLoadedSignalsButtonsGrid1_2 = uigridlayout(app.FilteringLoadedSignalsGrid_2);
            app.FilteringLoadedSignalsButtonsGrid1_2.ColumnWidth = {'1x'};
            app.FilteringLoadedSignalsButtonsGrid1_2.Layout.Row = 2;
            app.FilteringLoadedSignalsButtonsGrid1_2.Layout.Column = 1;

            % Create FilteringRemoveSignalButton_2
            app.FilteringRemoveSignalButton_2 = uibutton(app.FilteringLoadedSignalsButtonsGrid1_2, 'push');
            app.FilteringRemoveSignalButton_2.ButtonPushedFcn = createCallbackFcn(app, @FilteringRemoveSignalButton_2Pushed, true);
            app.FilteringRemoveSignalButton_2.Layout.Row = 2;
            app.FilteringRemoveSignalButton_2.Layout.Column = 1;
            app.FilteringRemoveSignalButton_2.Text = 'Apply Spectrogram';

            % Create FilteringLoadedSignalsButtonsGrid2_2
            app.FilteringLoadedSignalsButtonsGrid2_2 = uigridlayout(app.FilteringLoadedSignalsButtonsGrid1_2);
            app.FilteringLoadedSignalsButtonsGrid2_2.RowHeight = {'fit'};
            app.FilteringLoadedSignalsButtonsGrid2_2.Layout.Row = 1;
            app.FilteringLoadedSignalsButtonsGrid2_2.Layout.Column = 1;

            % Create HelpTab
            app.HelpTab = uitab(app.MainTabGroup);
            app.HelpTab.Title = 'Help';
            app.HelpTab.Scrollable = 'on';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = start_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

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