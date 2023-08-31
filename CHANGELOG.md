<!-- auto-changelog-above -->
# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Generated by [`auto-changelog`](https://github.com/CookPete/auto-changelog).

## [Unreleased](https://github.com/RCIC-UCI-Public/cuda-admix/compare/2.0...HEAD)

### Commits

- spell out included toolkit binaries [`43906a1`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/43906a1dd5b6884b4d826c763d753a3bfeeb690f)
- 12_2 -&gt; 12.2 in naming [`db3ac7b`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/db3ac7b00a494094bf9c4592697d9007970d0443)
- Need updated cuda driver for Rocky 8.8. [`b24893d`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/b24893d1f51dfd4293115ae6a0f0a763395cd10b)

## [2.0](https://github.com/RCIC-UCI-Public/cuda-admix/compare/1.0...2.0) - 2023-07-20

### Commits

- update pycuda to higher revision, add source, rm compiler [`7c17ac5`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/7c17ac590774b0648dc0bace87dd4688f83fd124)
- fix  infinite recursion from including versions.yaml file [`2ce77f9`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/2ce77f9823edeaa02ff7b42c134273b793cba2f3)
- rm redundant definition. It is inherited from packages.yaml [`d662b70`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/d662b70ad9c53573280e64ee5597a541ab9bbe05)
- use regular versions form versions file [`958534e`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/958534eb89306e822430de4ec5e3eac621b0bb9c)
- add pycuda to google drive [`0ae21b6`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/0ae21b652c441ca8e78c94f9017afad3c3b7669d)
- set persistence-mode=1 as argument to nvidia-smi in installer.sh. [`b03201d`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/b03201d5f772ba37a063b5c77f0e92db76d3536d)
- Updates for pycuda [`f7e4273`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/f7e42733b711054a5828a89da3a47b1ebb4549a0)
- dont include stubs directory in LD_LIBRARY_PATH [`54dbaf6`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/54dbaf6e08761de0270da20186ac598875355b8f)
- rm duplicate lib64 from Debigger and CUPTI locations [`dac18f3`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/dac18f3dc41970b3eff78ee2ec0105d74b70b67e)
- Update installer to rebuild cuda driver if the kernel has changed. [`4455f83`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/4455f83aa8a264ca0fbbbc43d31a5a7f923114c9)
- add driver to the latest set, rm separate cuda-driver set [`9d27f9b`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/9d27f9b67f83e608377300d7d24ea0ae87256a7f)
- move extrazction for driver to a driver yaml [`fca224a`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/fca224ab1852d755aaab999ec21d11a72f79bb59)
- dont requires cuda-toolkit [`f0e3907`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/f0e3907739c4e6d57576cdf8cdfed9f9c4ebaa45)
- add cudnn download info [`61a00cf`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/61a00cf1a125f2dc7c716e2d44ee29cff3c72d81)
- fix typo in checksum, add newest libcudnn for cuda 11.7 [`525e689`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/525e689ac21d2ac0fc1d829bbc564f5a65b504b3)
- filter out libQt6* libraries that are included in cuda 11.7 distro [`5054089`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/5054089061586554092cb7c349b734ece60dac4b)
- wenable installgin two versions of cuda 11 so that we provide 11.4 [`bc4560d`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/bc4560d652dedf290b8a5c21a8d799952c3eef89)
- disable buildid links so that multiple versions of the same major [`07b647e`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/07b647e9fd636eaf3e09a26d0e0cbebc9a7103a2)
- Cuda 11.7.1 Driver [`76fa745`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/76fa745d358e779b58a1b80ab5c981e2584b2c00)
- 11.7.1 cuda driver [`784dcdf`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/784dcdfc35f52ef0d5706c937adad5fc34ae1b59)
- Old software doesn't compile with newer nasm.  Disable assembly optimizations. [`c984b98`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/c984b980afa8da7b994f6aa5979738113fb98a1e)
- refactor cuda-driver into cuda-common and cuda-driver-common [`6cc0e05`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/6cc0e05717030812f53a5c6717bc7460ba65d14f)
- need to unset MAKEFLAGS [`d080bd5`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/d080bd5e7b44d418fccdb663ee25922757fb120b)
- Small tweaks for building on RHEL. [`ce8e720`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/ce8e72084e73272f55561c49da30c08a47138569)
- update samples build [`a25c7bf`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/a25c7bf4140632c55dd87934ad20212953c96b9b)
- Add toolkit-samples filter [`9711aea`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/9711aeabb67ac784ae6ca8f6b3ac79075ed51314)
- CUDA 10/11 should now properly build with a single "make buildall" [`1f2e09a`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/1f2e09a3366790048c378ea1adb57b227081d8de)
- first fused commit for cuda10 and cuda11 builds. Needs testing [`5510c91`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/5510c91fbbcec426b5c4a4b0a9856320a5f58fbb)
- Add Cuda11 run file and cudnn RPMS to google drive [`9484643`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/94846430356fd319c943617299a34b7850b7055a)
- Add Cuda11 run file and cudnn RPMS to google drive [`0128e33`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/0128e335dde45f6ecfe3c072d1b0e2635cdfe80a)
- Cuda driver and installer updates for Cuda11. [`dffefda`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/dffefda6aaafd211d064ba29555198181db528aa)
- First go around with CUDA11 updates [`534a59b`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/534a59bc363b0ca8a466e9bea0643edfb4fd2910)
- initial cleanup for opt1 changes [`c9e2f54`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/c9e2f54d3f92dee98c04c356d6d6edf7749d13e9)

## [1.0](https://github.com/RCIC-UCI-Public/cuda-admix/compare/0.9...1.0) - 2021-06-10

### Commits

- rm fossils [`309d909`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/309d9097427a20452725079814560fb01b39d5e3)
- fix parent and root [`50a67ea`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/50a67eaf52a8e467f7f3e0321216bdb0c98d38dc)

## 0.9 - 2020-12-11

### Commits

- Add 'stubs' directory in library-related paths to pick up generic libcuda.so [`c3c2162`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/c3c2162c8408480ca87d63a180b8b999236a1a6e)
- add root dir to RPM. Bump release [`2f39f0f`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/2f39f0f6c7af0c627579370f4df68066b0c0a1f2)
- bump release for update [`787a6b1`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/787a6b1acfc733cc3fabc213401dce12b8ff0b1d)
- remove filter-requires from toolkit-samples. [`e4bfc2e`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/e4bfc2eaed52ba6bda29ac102e3eae09e60664c2)
- update release for new module support [`8b1d2aa`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/8b1d2aa3ee3cd9c635f1f4ccd8ccf2af64088115)
- update rpm filter anchor name [`45cf5e3`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/45cf5e3d36daf821a01314677647943f30b165a5)
- use rpm.yaml [`50bd31d`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/50bd31d245e24753ca777cf1f3970fc6822a78fe)
- use empty string for module [`0bd6a0e`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/0bd6a0e90841756cd656f3a3561300be6bb43cd9)
- add missing addfile directive [`6c5bba7`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/6c5bba7c48a6b19f133f8d8b3497514651f86289)
- use baserpm name per defaults [`4162729`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/41627296c6193943ef12ea8a8916676137c52bcb)
- moving to ruamel version [`69a0847`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/69a08471614fb3319f2b6878b590c50bde6a8743)
- nvidia-installer service now calls nvidia-smi on every service start. [`f07f5bc`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/f07f5bc8596332b1f4f875cb230d25fc4282c354)
- Add a service that will install the nvidia driver. Service needs to be turned on [`b62c961`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/b62c9619a4c29806949cf543d9dd03cda7fe98a6)
- bump release to 2 for ffmpeg. Allows for update of previously-compiled version [`9f75e6b`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/9f75e6b9c8340a3e7eb922826369abdce78b74cd)
- Clean up module lines in build [`aa8859c`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/aa8859cb6971843f04843654ca1ec8f066a53160)
- generic top-level Makefile [`9376157`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/937615797b08f0611597256bfc6aeec228a293f4)
- updates per changes in default include files [`bf4149c`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/bf4149c078c9fbce7e5d721af5037fa1d417d21a)
- add default include [`692f513`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/692f5133a5b31b84177e9d9b3399b64b51ee296b)
- add environment vars useful for compilation [`92e85fe`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/92e85feaf1fd8decdd9d4b08eb15beb09797647b)
- add LD_RUN_PATH, needed to compile pytorch [`f904826`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/f9048260041e0ff769c5d5237ba3b2517e37521e)
- add CPPFLAGS and LDFLAGS. [`53e1501`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/53e1501bca6da9ff238c86a156eb20e70f3d8e86)
- move files on google drive [`637df12`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/637df12f2b40abf9e6b2be4888b7f2fa3ba52d5d)
- use cuda.shortversion for requires stanzas [`22ccca1`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/22ccca1ca076a532fc3576c0ffb70608ae6f64ef)
- add source files per google drive [`ec0567b`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/ec0567bbb04509f9d8b64c4c27def7c0276eede1)
- add ffmepg sources from google drive [`48ee402`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/48ee4025011a2df1ece5762c7aeb00bf152fe53f)
- simplify incluided file path [`7c4cabf`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/7c4cabf24f910e62548fb5872b62e68e429f36c6)
- rm exec bit [`e513ef3`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/e513ef38f08bef2c285d39a6b76483b2c6d449de)
- add module for each ffmpeg version [`23c5162`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/23c516224a86c6ee72c5d9e265f2f234fedcdeee)
- use versions.yaml for tracking multipel versions [`7357b1b`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/7357b1bab0e4f59f8603997e1ebf7a5ab59dfd77)
- download cudnn RPMs during bootstrap [`1596c4e`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/1596c4e6521c05bef0f652a1bf3b6f22eaabef61)
- move cudnn from tensorflow-admix [`25eb251`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/25eb2514689c4c7decf70882eb91586bc8061d4d)
- keep rpm name consistent [`9abf7ea`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/9abf7eadbd3aa98bec6eee93c9503c5ae8686411)
- add gitignore [`baca67a`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/baca67adb8d67c4d1d71ebae6309e4343b72b326)
- no space around curly brackets [`e33ff67`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/e33ff6787452fa7cbd5f03c2cbc51c8a10c5b371)
- update paths [`4f40110`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/4f40110fd91e04b2156bbd404040422170cd609f)
- adjust build slightly, cuda-module now labeled as TOOLS [`7e60d7c`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/7e60d7ce07fffa3e7ab2ee72ce012d048a34c668)
- uses packages.yaml [`35f4c26`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/35f4c268d05c1079792def5fd3d35e2e94b4ef7a)
- Cuda now in /opt/apps/cuda. [`0e1a15d`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/0e1a15d56197c5f5a0cf0c91d08726134e49c4b1)
- Add an ansible file to disable the nouveau driver [`35ad734`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/35ad73433574220395e21b4479917c4c234a8bdc)
- Install the cuda driver (just the run file) [`1e4e390`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/1e4e3905599c19a4b6b038d1177efea082678303)
- more modules to build [`0292053`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/0292053066977f00dfefdb18a8b08d003193af80)
- build cuda-samples [`baed5e8`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/baed5e87da7cd6c6bcfc396066b180ef438ca990)
- filter out some spurious requirements in cuda-toolkit-extras. Explicitly set [`58ff3c8`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/58ff3c83a369bdfb44666112fd4fa6f8588cdd54)
- Latest CUDA (10/9/2019) does not require ffmpeg [`d0d25f6`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/d0d25f6e888321b70cff9b067187c0f442c23d2f)
- change true --&gt; True for consistency [`e15fe80`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/e15fe809c82790f48965eec9e0c0a1adb706c6a8)
- filter requires for the cuda toolkit [`52cbf30`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/52cbf30532e015e440a77e493023e7921b3a8f95)
- bootstrap modules [`bd3644b`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/bd3644b45cb56a5d36a5ed1e5ce651243323c1b2)
- Add vendor_source. Update version [`c53f9b4`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/c53f9b46595355db601b4a3f4098c90bf04e1aa6)
- Makefile and system modules [`c07c0f2`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/c07c0f24ce8793970f1500d2aa75ace6faff3e9d)
- Generic top-level make [`6399559`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/6399559f3f36074d75652350633a88bf4c6b2655)
- modules to build. [`dc7bb98`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/dc7bb98079b2eef1782c1fe3d476f103be2223be)
- First stage of splitting cuda toolkit into multiple RPMs [`3a0ba25`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/3a0ba254962c39c1393289dd56fbdd5b62d0ec97)
- Initial commit [`2a46270`](https://github.com/RCIC-UCI-Public/cuda-admix/commit/2a462700c1801632edd84d9a4037c014a1964123)