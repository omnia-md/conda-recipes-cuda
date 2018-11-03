@echo off
echo Downloading CUDA toolkit 9.2
appveyor DownloadFile  https://developer.nvidia.com/compute/cuda/9.2/Prod2/local_installers2/cuda_9.2.148_windows -FileName cuda.exe
echo Installing CUDA toolkit
cuda.exe -s compiler_9.2 ^
                           cublas_9.2 ^
                           cublas_dev_9.2 ^
                           cudart_9.2 ^
                           curand_9.2 ^
                           curand_dev_9.2

dir .

dir "%ProgramFiles%"
dir "C:\Program Files"
dir "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA"
dir "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v9.2"
dir "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v9.2\bin"

if NOT EXIST "%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v9.2\bin\cudart64_80.dll" (
echo "Failed to install CUDA"
exit /B 1
)

set PATH=%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v9.2\bin;%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v9.2\libnvvp;%PATH%

nvcc -V
