#!/bin/bash
#SBATCH --job-name=doc2grap_few_shots
#SBATCH --gres=gpu:1
#SBATCH --output=logs/few_shots/dblp_seed27

# data="dblp"
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1
# python3 src/main.py --dataset ${data} --model NetGenWord --teacher_forcing 1
# python3 src/main.py --dataset ${data} --model NetGenLink --teacher_forcing 1
# 
# data="nyt"
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1
# python3 src/main.py --dataset ${data} --model NetGenWord --teacher_forcing 1
# python3 src/main.py --dataset ${data} --model NetGenLink --teacher_forcing 1

# data="yelp"
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 27
# python3 src/main.py --dataset ${data} --model NetGenWord --teacher_forcing 1
# python3 src/main.py --dataset ${data} --model NetGenLink --teacher_forcing 1

# data="yelp.3-class"
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 27
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 1105
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 768
# python3 src/main.py --dataset ${data} --model LSTMClassifer --teacher_forcing 1 --seed 27
# python3 src/main.py --dataset ${data} --model LSTMClassifer --teacher_forcing 1 --seed 1105
# python3 src/main.py --dataset ${data} --model LSTMClassifer --teacher_forcing 1 --seed 768

# data="dblp"
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 27
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 1105
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 768
# python3 src/main.py --dataset ${data} --model LSTMClassifer --teacher_forcing 1 --seed 27
# python3 src/main.py --dataset ${data} --model LSTMClassifer --teacher_forcing 1 --seed 1105
# python3 src/main.py --dataset ${data} --model LSTMClassifer --teacher_forcing 1 --seed 768

# data="nyt"
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 27
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 1105
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 768
# python3 src/main.py --dataset ${data} --model LSTMClassifer --teacher_forcing 1 --seed 27
# python3 src/main.py --dataset ${data} --model LSTMClassifer --teacher_forcing 1 --seed 1105
# python3 src/main.py --dataset ${data} --model LSTMClassifer --teacher_forcing 1 --seed 768


# Few shots 
# data="nyt"
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 27 --few_shot_ratio 0.001 --include_all True
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 27 --few_shot_ratio 0.0025 --include_all True
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 27 --few_shot_ratio 0.0050 --include_all True
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 27 --few_shot_ratio 0.0075 --include_all True
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 27 --few_shot_ratio 0.01 --include_all True
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 27 --few_shot_ratio 0.025 --include_all True
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 27 --few_shot_ratio 0.050 --include_all True
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 27 --few_shot_ratio 0.075 --include_all True
# python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed 27 --few_shot_ratio 0.10 --include_all True
data="dblp"
seed=27
# seed=1105
# seed=768
python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed ${seed} --few_shot_ratio 0.001 --include_all True
python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed ${seed} --few_shot_ratio 0.0025 --include_all True
python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed ${seed} --few_shot_ratio 0.0050 --include_all True
python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed ${seed} --few_shot_ratio 0.0075 --include_all True
python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed ${seed} --few_shot_ratio 0.01 --include_all True
python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed ${seed} --few_shot_ratio 0.025 --include_all True
python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed ${seed} --few_shot_ratio 0.050 --include_all True
python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed ${seed} --few_shot_ratio 0.075 --include_all True
python3 src/main.py --dataset ${data} --model NetGen --teacher_forcing 1 --seed ${seed} --few_shot_ratio 0.10 --include_all True
