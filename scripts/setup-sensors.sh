#!/bin/bash
sudo apt install lm-sensors -y
sudo sensors-detect
sensors
sudo pwmconfig
