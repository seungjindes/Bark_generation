#!/bin/bash
audioldm --mode generation -t "dog howling with clearly and high pitch" -f ../audio_dataset/소형견/감사함/말티즈_요구_barking_own_o_s_16.wav \
--model_name audioldm-l-full --b 3 --ddim_steps 500 -gs 10.0 -n 3 -dur 2.5 --seed 123