function y = fir_block_convolution(x, h, blockSize)
% CONVOLUCION FIR POR BLOQUES - Filtrado de respuesta finita al impulso
% Esta función realiza la convolución entre una señal de entrada y los coeficientes
% de un filtro FIR, procesando la señal en bloques para manejar señales largas
% de manera eficiente en memoria.
%
% PARAMETROS DE ENTRADA:
%   x: Señal de entrada (vector fila o columna)
%   h: Coeficientes del filtro FIR (vector fila o columna) 
%   blockSize: Tamaño del bloque para procesamiento (entero positivo)
%
% PARAMETROS DE SALIDA:
%   y: Señal filtrada (vector fila)
%
% FUNCIONAMIENTO PASO A PASO:
%   1. Valida que se proporcionen los 3 parámetros requeridos
%   2. Convierte las señales a vectores fila para consistencia
%   3. Calcula la longitud de salida: Ly = Lx + Lh - 1
%   4. Procesa la señal en bloques de tamaño 'blockSize'
%   5. Para cada bloque: conv(xBlock, h) y suma al resultado acumulado
%   6. Maneja el bloque residual si la señal no es múltiplo exacto del blockSize

    if nargin < 3
        error('fir_block_convolution requires x, h, and blockSize.');
    end

    if isempty(x) || isempty(h)
        y = [];
        return;
    end

    if ~isscalar(blockSize) || ~isfinite(blockSize) || blockSize < 1
        error('blockSize must be a positive integer.');
    end

    x = x(:)';
    h = h(:)';

    Lx = length(x);
    Lh = length(h);
    Ly = Lx + Lh - 1;
    y = zeros(1, Ly);

    Lyb = blockSize + Lh - 1;
    Nb = floor(Lx / blockSize);

    if Nb >= 1
        y(1:Lyb) = conv(h, x(1:blockSize));
        for k = 2:Nb
            xb = x((k - 1) * blockSize + 1 : k * blockSize);
            yb = conv(h, xb);
            y((k - 1) * blockSize + 1 : (k - 1) * blockSize + Lyb) = ...
                y((k - 1) * blockSize + 1 : (k - 1) * blockSize + Lyb) + yb;
        end
    end

    Lxr = mod(Lx, blockSize);
    if Lxr ~= 0
        xbr = x(Nb * blockSize + 1 : end);
        ybr = conv(h, xbr);
        y(Nb * blockSize + 1 : end) = y(Nb * blockSize + 1 : end) + ybr;
    end
end

function yNorm = normalize_signal(x)
% NORMALIZACION DE SEÑAL - Normalización por valor máximo absoluto
% Esta función normaliza una señal dividiendo todos sus valores por el máximo
% valor absoluto encontrado en la señal, manteniendo la forma de onda pero
% limitando la amplitud máxima a 1.
%
% PARAMETROS DE ENTRADA:
%   x: Señal de entrada (vector fila o columna)
%
% PARAMETROS DE SALIDA:
%   yNorm: Señal normalizada (mismo formato que entrada)
%
% FUNCIONAMIENTO PASO A PASO:
%   1. Verifica si la señal está vacía
%   2. Encuentra el valor máximo absoluto en toda la señal
%   3. Si el máximo es 0 (señal de ceros), devuelve la señal original
%   4. Si no, divide todos los valores por el máximo absoluto
%   5. El resultado tiene amplitud máxima de 1, preservando la forma

    if isempty(x)
        yNorm = x;
        return;
    end

    m = max(abs(x(:)));
    if m == 0
        yNorm = x;
    else
        yNorm = x ./ m;
    end
end

function t = time_vector(numSamples, Fs)
% VECTOR DE TIEMPO - Generación de eje temporal para señales
% Esta función crea un vector de tiempo correspondiente a una señal muestreada,
% útil para graficar señales en el dominio temporal o calcular frecuencias.
%
% PARAMETROS DE ENTRADA:
%   numSamples: Número de muestras (entero positivo)
%   Fs: Frecuencia de muestreo en Hz (escalar positivo)
%
% PARAMETROS DE SALIDA:
%   t: Vector fila de tiempo desde 0 hasta (numSamples-1)/Fs
%
% FUNCIONAMIENTO PASO A PASO:
%   1. Valida que Fs sea un escalar positivo
%   2. Valida que numSamples sea un entero positivo
%   3. Crea vector desde 0 hasta numSamples-1
%   4. Divide cada elemento por Fs para obtener tiempo en segundos
%   5. Resultado: t = [0, 1/Fs, 2/Fs, ..., (numSamples-1)/Fs]

    if nargin < 2 || isempty(Fs) || ~isscalar(Fs) || Fs <= 0
        error('Fs must be a positive scalar.');
    end
    if ~isscalar(numSamples) || numSamples < 1
        error('numSamples must be a positive integer.');
    end
    t = (0:numSamples-1) ./ Fs;
end


function y = iir_difference_equation(x, b, a)
% FILTRADO IIR POR ECUACION DE DIFERENCIAS - Filtrado de respuesta infinita al impulso
% Esta función implementa un filtro IIR usando la ecuación de diferencias directa,
% que combina muestras de entrada pasadas y presentes con muestras de salida pasadas.
%
% PARAMETROS DE ENTRADA:
%   x: Señal de entrada (vector fila o columna)
%   b: Coeficientes de alimentación directa [b0 b1 ... bM]
%   a: Coeficientes de retroalimentación [a0 a1 ... aN], con a0 ≠ 0
%
% PARAMETROS DE SALIDA:
%   y: Señal filtrada (vector fila)
%
% FUNCIONAMIENTO PASO A PASO:
%   1. Normaliza coeficientes dividiendo por a0 para que a0 = 1
%   2. Para cada muestra n de la señal de entrada:
%      - Calcula parte de alimentación directa: suma de b(k)*x(n-k)
%      - Calcula parte de retroalimentación: suma de a(k)*y(n-k)
%      - Combina ambas partes: y(n) = alimentación - retroalimentación
%   3. La ecuación implementada es:
%      y[n] = Σ(b(k)*x[n-k]) - Σ(a(k)*y[n-k]) para k=0..M y k=1..N

    if nargin < 3
        error('iir_difference_equation requiere x, b, y a.');
    end

    if isempty(x)
        y = x;
        return;
    end

    x = x(:)';
    b = b(:)';
    a = a(:)';

    if isempty(a) || a(1) == 0
        error('El coeficiente a(1) (a0) debe ser diferente de cero.');
    end

    % Normalizar coeficientes para que a0 = 1
    b = b ./ a(1);
    a = a ./ a(1);

    Lx = length(x);
    M = length(b) - 1; % orden de alimentación directa
    N = length(a) - 1; % orden de retroalimentación (excluyendo a0)

    y = zeros(1, Lx);

    % Ecuación de diferencias en forma directa I:
    % y[n] = -suma_{k=1..N} a(k+1)*y[n-k] + suma_{k=0..M} b(k+1)*x[n-k]
    for n = 1:Lx
        acc = 0;
        % parte de alimentación directa
        for k = 0:M
            idx = n - k;
            if idx >= 1
                acc = acc + b(k+1) * x(idx);
            end
        end
        % parte de retroalimentación
        for k = 1:N
            idx = n - k;
            if idx >= 1
                acc = acc - a(k+1) * y(idx);
            end
        end
        y(n) = acc;
    end

end


%% ========================================================================
%% EJEMPLOS DE PRUEBA PARA VERIFICAR EL FUNCIONAMIENTO DE LOS FILTROS
%% ========================================================================
%%
%% Para probar estas funciones, ejecuta los siguientes comandos en MATLAB:
%%
%% 1. PRUEBA DE CONVOLUCION FIR:
%%     % Crear señal de prueba (seno con ruido)
%%     Fs = 1000;                    % Frecuencia de muestreo
%%     t = time_vector(1000, Fs);    % Vector de tiempo
%%     x = sin(2*pi*50*t) + 0.5*randn(size(t));  % Señal: 50Hz + ruido
%%     
%%     % Crear filtro pasa-bajas FIR simple
%%     h = [1 1 1 1 1]/5;            % Filtro promedio móvil
%%     
%%     % Aplicar filtrado por bloques
%%     y_fir = fir_block_convolution(x, h, 256);
%%     y_fir = normalize_signal(y_fir);
%%     
%%     % Graficar resultados
%%     figure; subplot(2,1,1); plot(t, x); title('Señal Original');
%%     subplot(2,1,2); plot(y_fir); title('Señal Filtrada FIR');
%%
%% 2. PRUEBA DE FILTRADO IIR:
%%     % Usar la misma señal de prueba
%%     
%%     % Crear filtro IIR pasa-bajas (Butterworth de 2do orden)
%%     % Frecuencia de corte: 100Hz, Fs = 1000Hz
%%     fc = 100;                     % Frecuencia de corte
%%     wc = 2*pi*fc/Fs;             % Frecuencia normalizada
%%     
%%     % Coeficientes para filtro Butterworth de 2do orden
%%     b = [wc^2];                   % Coeficientes de alimentación directa
%%     a = [1, 2*wc, wc^2];         % Coeficientes de retroalimentación
%%     
%%     % Aplicar filtrado IIR
%%     y_iir = iir_difference_equation(x, b, a);
%%     y_iir = normalize_signal(y_iir);
%%     
%%     % Graficar resultados
%%     figure; subplot(2,1,1); plot(t, x); title('Señal Original');
%%     subplot(2,1,2); plot(y_iir); title('Señal Filtrada IIR');
%%
%% 3. PRUEBA DE NORMALIZACION:
%%     % Crear señal con amplitud variable
%%     x_test = [1, 5, -3, 2, -8, 4];
%%     x_norm = normalize_signal(x_test);
%%     
%%     % Verificar que max(abs(x_norm)) == 1
%%     fprintf('Máximo absoluto original: %.2f\n', max(abs(x_test)));
%%     fprintf('Máximo absoluto normalizado: %.2f\n', max(abs(x_norm)));
%%
%% 4. PRUEBA DE VECTOR DE TIEMPO:
%%     % Generar vector de tiempo para 100 muestras a 1000 Hz
%%     t_test = time_vector(100, 1000);
%%     
%%     % Verificar propiedades
%%     fprintf('Primera muestra: %.4f s\n', t_test(1));
%%     fprintf('Última muestra: %.4f s\n', t_test(end));
%%     fprintf('Duración total: %.4f s\n', t_test(end) - t_test(1));
%%
%% 5. COMPARACION FIR vs IIR:
%%     % Aplicar ambos filtros a la misma señal
%%     figure;
%%     subplot(3,1,1); plot(t, x); title('Señal Original');
%%     subplot(3,1,2); plot(y_fir); title('Filtrado FIR (Promedio Móvil)');
%%     subplot(3,1,3); plot(y_iir); title('Filtrado IIR (Butterworth)');
%%
%% NOTAS:
%% - El filtro FIR es más estable pero requiere más coeficientes
%% - El filtro IIR es más eficiente pero puede ser inestable si a0 ≈ 0
%% - La normalización preserva la forma de onda pero limita la amplitud
%% - El vector de tiempo es esencial para análisis frecuencial
%%

