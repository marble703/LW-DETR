# 先激活conda

``` bash 
conda create -n lwdetr python=3.8.19
conda activate lwdetr

conda install pytorch==1.13.0 torchvision==0.14.0 pytorch-cuda=11.6 -c pytorch -c nvidia

wget https://developer.download.nvidia.com/compute/cuda/11.6.0/local_installers/cuda_11.6.0_510.39.01_linux.run

chmod +x cuda_11.6.0_510.39.01_linux.run
```

# 接下来注意取消勾选 Driver 和 Nsight 

``` bash 
sudo ./cuda_11.6.0_510.39.01_linux.run 


export PATH=/usr/local/cuda-11.6/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-11.6/lib64:$LD_LIBRARY_PATH

pip install -r requirements.txt

pip install -r deploy/requirements.txt


cd models/ops
python setup.py build install
# unit test (should see all checking is True)
python test.py
cd ../..

```