# TTSbuild

## Failing (Work in progress)

### Unofficial Docker Build for [Mozilla TTS](https://github.com/mozilla/TTS)
This project aims to make it simple to run the TTS project along with downloading the pre-trained model by running a single bash script `all.sh`.

### Expected Configuration
A system with a NVIDIA GPU running a linux distribution with [NVIDIA Docker](https://github.com/NVIDIA/nvidia-docker) and python installed.

### Usage
Initially you should be able to run `sudo ./all.sh` which runs three corresponding bash scripts for the build as follows:
 * `downloadModels.sh` - Downloads the released models from the TTS project into the mnt folder.
 * `dBuild.sh` - Builds the `Dockerfile` to `mozilla-tts`, which has been modified from the TTS project to include a working configuration.
 * `dRun.sh` - Runs the nvidia-docker container just built and starts the server with filesystem access to the configured `mnt` folder.

### Troubleshooting
You may want to enter the container using bash to try playing directly with the build. `dBash.sh` has this command prepared for you. You will lose the changes there
 unless they are committed to the docker container. The TTS
`server/conf.json` file gets replaced by `conf/conf.json.fix_db7f3d3`. The models are expected to be placed in the `mnt/tts` and `mnt/waveRNN`
folders. These models additionally have their own `config.json` files, that will be preconfigured to the container. 
