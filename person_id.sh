#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python -u Illuminance_bbox/main.py \
    --data \
      keita_2026_0617/1_tsunoda_1  keita_2026_0617/1_tsunoda_2 \
      keita_2026_0617/2_shoji_1    keita_2026_0617/2_shoji_2 \
      keita_2026_0617/3_shibuya_1  keita_2026_0617/3_shibuya_2 \
      keita_2026_0617/4_kojima_1   keita_2026_0617/4_kojima_2 \
      keita_2026_0617/5_yoshizaki_1 keita_2026_0617/5_yoshizaki_2 \
      keita_2026_0617/6_ishizaki_1 keita_2026_0617/6_ishizaki_2 \
      keita_2026_0617/7_john_1     keita_2026_0617/7_john_2 \
      keita_2026_0617/8_sekiyama_1 keita_2026_0617/8_sekiyama_2 \
      keita_2026_0617/9_shigin_1   keita_2026_0617/9_shigin_2 \
      keita_2026_0617/10_ueno_1    keita_2026_0617/10_ueno_2 \
    --num_classes 10 --num_queries 10 \
    --batch_size 1024 --epochs 1000000 --early_stopping_patience 50 \
    --dataset_file illuminance --backbone illuminance --standardize \
    --window_size 41 --sub_window_size 37 --stride 1 \
    --scale full --model_mode time_sensor \
    --enc_layers 3 --dec_layers 3 --environment none \
    --num_sensors 36 --k_neighbors 36 --sensor_dropout_rate 0.1 \
    --exp_name person_id_sanity --n_runs 1 \
    --comment "person identification sanity check (within-session split)";

    #nohup ./person_id.sh > ./person_id.txt &
