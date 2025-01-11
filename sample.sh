#!/bin/bash
# audioldm --mode generation -t "clearly and high pitch" -f ./sample1.wav \
# --model_name audioldm-l-full --b 3 --ddim_steps 500 -gs 10.0 -n 3 -dur 2.5 --seed 42



# audioldm --mode generation -t "clearly and same pitch" -f ./sample1.wav \
# --model_name audioldm-l-full --b 3 --ddim_steps 500 -gs 10.0 -n 3 -dur 2.5 --seed 42




# audioldm --mode transfer -t "dog bark" -f ./sample2.wav \
# --model_name audioldm-l-full --b 3 --ddim_steps 500 -gs 5.0 -n 3 -dur 2.5 --seed 1234

# transfer_strength - d스타일 전송 모드에서 스타일이 적용되는 강도조절 (0 - 1)
# gs - 가이던스 스케일은 텍스트의 관련성과 오디오 다양성간의 균형을 맞춘다. 값이 클 수록 텍스트 관련성이 높고 
# 값이 낮을 수록 다양성 증가

# gs 의 경우 낮아지면 원본 음성과 상관없는 음성파일이 생성됨 -> 텍스트에 맞춰지는지도 모르겠음
# -> 아님 gs 가 낮아져도 transfer을 줄이니깐 괜찮아짐,
# 
# transfer_strnegth 가 강해질 수록 0.8만 되어도 텍스트에 초점이 맞춰져, 원본음성과 상관없이 같은게 나온다.


# gs가 낮고, trasnfer가 높아지면 이상한 소리가 나온다-> 드럼소리등 
# 여기서 gs가 높아지면 거의 비슷한 소리가 나옴
# gs가 높고 trnasfer_stength 가 낮아지면 3개의 음성이 전부 같은 음성이 나온다(소리는 거의 원본과 비슷, 텍스트의 영향력이 없다)

# sample1 에 적용하였을때, sample2와 다른 음성파일이지만 원본파일과 똑같음 

# 즉 transfer_strenth는 원본파일에서 얼마냐 변할꺼냐? 를 정하는듯


# gs 1.0 -> 전혀 이상한 소리가 나옴 5이상 부터 제대로 나옴 
# text의 의미보다 seed에 따라 변하는 변동성이크다.





## 낫배드 
# audioldm --mode transfer -t "dog whining" -f ./sample1.wav \
# --model_name audioldm-l-full --b 3 --ddim_steps 500 -gs 8.0 -n 3 -dur 2.5 \
# --transfer_strength 0.65 --seed 123



# audioldm --mode transfer -t "dog whining" -f ./sample2.wav \
# --model_name audioldm-l-full --b 3 --ddim_steps 500 -gs 5.0 -n 3 -dur 2.5 \
# --transfer_strength 0.65 --seed 123




# audioldm --mode transfer -t "dog whining" -f ./sample1.wav \
# --model_name audioldm-l-full --b 3 --ddim_steps 500 -gs 7.0 -n 3 -dur 2.5 \
# --transfer_strength 0.55 --seed 42



# audioldm --mode transfer -t "dog whining" -f ./sample2.wav \
# --model_name audioldm-l-full --b 3 --ddim_steps 500 -gs 7.0 -n 3 -dur 2.5 \
# --transfer_strength 0.55 --seed 42


#----- using under code ----

audioldm --mode transfer -t "dog whining" -f ./sample1.wav \
--model_name audioldm-l-full --b 3 --ddim_steps 500 -gs 7.0 -n 3 -dur 2.5 \
--transfer_strength 0.55 --seed 789



audioldm --mode transfer -t "dog whining" -f ./sample2.wav \
--model_name audioldm-l-full --b 3 --ddim_steps 500 -gs 7.0 -n 3 -dur 2.5 \
--transfer_strength 0.55 --seed 789



audioldm --mode generation -f ./sample1.wav \
--model_name audioldm-l-full --b 3 --ddim_steps 500 -gs 10.0 -n 3 -dur 2.5 --seed 42



audioldm --mode generation -f ./sample2.wav \
--model_name audioldm-l-full --b 3 --ddim_steps 500 -gs 10.0 -n 3 -dur 2.5 --seed 42


