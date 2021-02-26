# Quick reference

**Maintained by**: [The Dockminer Team](https://github.com/dockminer/gminer)

**Where to get help**: [Dockminer GMiner issues](https://github.com/dockminer/gminer/issues), or [GMiner GitHub Repository](https://github.com/develsoftware/GMinerRelease)

# Supported tags and respective `Dockerfile` links

- [`2.45`, `latest`](https://github.com/dockminer/gminer/blob/079b6cabef2f036f62bf7fb4182c0630333f58f2/Dockerfile)
- [`2.44`](https://github.com/dockminer/gminer/blob/e027349fcc332699d7dd4f389a3a0f5af4463d1c/Dockerfile)

# What is GMiner?

GMiner was created by a Russian group of specialists in the field of high performance computing and cryptography.

The first version of GMiner was released on September 21, 2018 and was received quite warmly among users.<br/>
Thanks to its unique developments and stability, in just six months, the miner became a favorite on the Equihash algorithms.

The miner is focused on NVIDIA and AMD platforms and supports most popular algorithms such as: Ethash, ProgPoW, KAWPOW, Equihash, CuckooCycle.

GMiner maintains a leading position in the mining of such coins as Beam, Grin, Cortex, Bitcoin Gold.<br/>
In 2020, the miner added support for Ethash, ProgPoW and KAWPOW algorithms with high performance relative to competitors.

The development team never stops at what has been achieved and achieves the maximum performance of the algorithms with the minimum power consumption, it is these qualities that distinguish GMiner from the competitors and win the hearts of users.

For a detailed description of features read [here](https://github.com/develsoftware/GMinerRelease).

# How to use this image

Run the following commands in your terminal:

`docker run --gpus all -d dockminer/gminer:latest [miner arguments]`

The container should up and start mining.

In default, the docker expose the 8080 port for GMiner monitoring page, you can connect http://localhost:8080 to see the web page.

# Image Information

This image is built on top of the following softwares:

- [Nvidia CUDA Container](https://gitlab.com/nvidia/container-images/cuda) v10.2
- [GMiner](https://github.com/develsoftware/GMinerRelease) v2.45
