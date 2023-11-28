# cuda-admix
Admix for NVIDIA CUDA

## CUDA 12:

See https://developer.nvidia.com/cuda-12-2-0-download-archive

```bash
wget https://developer.download.nvidia.com/compute/cuda/12.2.0/local_installers/cuda_12.2.0_535.54.03_linux.run
```

Compatibility of cuda, drivers, cudnn:

https://docs.nvidia.com/deeplearning/cudnn/support-matrix/index.html#cudnn-cuda-hardware-versions

## cuDNN

Login on NVIDIa developer site,

- archive of previous versions https://developer.nvidia.com/rdp/cudnn-archive
- releases (plus support matrix links)  https://docs.nvidia.com/deeplearning/cudnn/archives/index.html
- support matrix https://docs.nvidia.com/deeplearning/cudnn/support-matrix/index.html
- install guide and verification https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html

1. For CUDA 11:

   Download latest 8.5.0 RPM distro cudnn-local-repo-rhel8-8.5.0.96-1.0-1.x86_64.rpm
   Use rpm2cpio to extract RPM  contents and copy resulting 3 RPMS into sources
   and google drive:

   libcudnn8-8.5.0.96-1.cuda11.7.x86_64.rpm
   libcudnn8-devel-8.5.0.96-1.cuda11.7.x86_64.rpm
   libcudnn8-samples-8.5.0.96-1.cuda11.7.x86_64.rpm

1. For CUDA 12

   Download 8.9.6 RPM distro cudnn-local-repo-rhel8-8.9.6.50-1.0-1.x86_64.rpm
   There are separate RPMS for cuda 12.x and cuda 11.x for the same cudnn version,
   use one for cuda 12.

## ffmpeg

FFmpeg is the most popular multimedia transcoding software and is used extensively for video
and audio transcoding.  NVENC and NVDEC can be effectively used with FFmpeg to significantly
speed up video decoding, encoding, and end-to-end transcoding.
For detailed info see https://docs.nvidia.com/video-technologies/video-codec-sdk/12.0/ffmpeg-with-nvidia-gpu/index.html

For ffmpeg v 6.1:

- install ffnvcodec headers (see ffnvcodec.yamlnd corresponding module file)
- compile ffmpeg with ffncodec and cuda modules.

VErify once built:

```bash
module load ffmpeg/6.1
ffmpeg -hide_banner -encoders  | grep nvenc
ffmpeg -hide_banner -decoders | grep cuvid
```

Useful links
- compiling ffmpeg https://trac.ffmpeg.org/wiki/CompilationGuide/Centos
- github repo https://github.com/FFmpeg/nv-codec-headers
- ffmpeg/ffnvcodec interaction https://github.com/omen23/ffmpeg-ffnvcodec-explanation
