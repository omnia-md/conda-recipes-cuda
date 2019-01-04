@echo off
echo Downloading CUDA toolkit 10.0
appveyor DownloadFile  https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda_10.0.130_411.31_windows -FileName cuda_10.0.130_411.31_windows.exe

dir "%ProgramFiles%"
dir "C:\Program Files"

echo Installing CUDA toolkit
cuda_10.0.130_411.31_windows.exe -s nvcc_10.0 ^
            memcheck_10.0 ^
            cublas_10.0 ^
            cublas_dev_10.0 ^
            cudart_10.0 ^
            cufft_dev_10.0 ^
            curand_10.0 ^
            curand_dev_10.0 ^
            nvrtc_10.0 ^
            nvrtc_dev_10.0

dir .

dir "%ProgramFiles%"
dir "C:\Program Files"
dir "C:\Program Files\NVIDIA Corporation"
dir "C:\Program Files\NVIDIA GPU Computing Toolkit"
dir "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA"
dir "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v10.0"
dir "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v10.0\bin"
dir "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v10.0\lib"
dir "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v10.0\lib\x64"

if NOT EXIST "%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v10.0\bin\cudart64_100.dll" (
echo "Failed to install CUDA"
exit /B 1
)

set PATH=%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v10.0\bin;%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v10.0\libnvvp;%PATH%
set CUDA_VERSION=10.0
set CUDA_SHORT_VERSION=100

nvcc -V
