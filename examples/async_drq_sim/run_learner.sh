export XLA_PYTHON_CLIENT_PREALLOCATE=false && \
export XLA_PYTHON_CLIENT_MEM_FRACTION=.2 && \
python3 async_drq_sim.py "$@" \
    --learner \
    --exp_name=serl_dev_drq_sim_test_resnet \
    --seed 0 \
    --training_starts 1000 \
    --critic_actor_ratio 4 \
    --encoder_type resnet-pretrained \
    --max_steps 1000000 \
    --save_model True \
    --checkpoint_period 10000 \
    --checkpoint_path "/home/ziangc/03_CodeBases/thrid_partys/algo_RL/SampleEfficientRL/examples/async_drq_sim/checkpoints" \ 

    # --demo_path franka_lift_cube_image_20_trajs.pkl \
    # --debug # wandb is disabled when debug
