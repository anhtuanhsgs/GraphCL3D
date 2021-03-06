cat $0
python main.py --env ins_wswm_0 \
--gpu-id  0 1 2 3  --workers 8 --valid-gpu 1 \
--lbl-agents 0 --num-steps 6 --max-episode-length 6 --reward seg \
--model AttUNet2 --out-radius 16 --use-masks --size 224 224 \
--features 32 64 128 256 512 --entropy-alpha 0.05 \
--downsample -1 --data dic-hela --in-radius 0.8 --log-period 50 \
--lr 1e-4 --fgbg-ratio 0.3 --st-fgbg-ratio 0.3 \
--spl_w 3.0 --mer_w 1.0 \
--split ins \
--save-period 50 --minsize 12 \
--log-dir logs/July2020/ --save-model-dir logs/July2020/trained_models/ \
--dilate-fac 2 \
--rew-drop 4 --rew-drop-2 5 \
--wctrl s2m \
--wctrl-schedule 2000 4000 6000 8000 10000 12000 14000 \
--exp-pool 50 \
