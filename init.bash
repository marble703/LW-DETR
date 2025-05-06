source ~/miniconda3/bin/activate
conda activate lwdetr
export PYTHONPATH="/media/Data/yolo/LW-DETR:$PYTHONPATH"

# camera_tiny

# sh demo/camera_lwdetr_tiny_coco_infer.sh pts/checkpoint_best_regular_0504.pth demo/000000496954.jpg output