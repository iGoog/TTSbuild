#!/usr/bin/env bash
pip install gdown
gdown https://drive.google.com/uc?id=1otOqpixEsHf7SbOZIcttv3O7pG0EadDx
gdown https://drive.google.com/uc?id=12GRFk5mcTDXqAdO5mR81E-DpTk8v2YS9
mv checkpoint_433000.pth.tar mnt/waveRNN/checkpoint_433000.pth.tar
mv checkpoint_261000.pth.tar mnt/tts/checkpoint_261000.pth.tar
