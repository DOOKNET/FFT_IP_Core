# FFT_IP_Core
## Fast Fourier Transform v9.0
## 说明：      
1. 本工程主要是仿真FFT v9.0 的IP核。目前vivado的IP核大都采用总线接口，网上资料都是比较旧的了。        
2. 主要是 FFT_Control_3.v、tb_fft_3.v 这两个文件。
3. TestBeach读取的数据是由MATLAB产生的，经过FFT转换后的结果存在文本文件中，通过MATLAB读取数据，显示波形，对比结果是否正确。         
4. MATLAB产生、读取数据的代码这里没有给出。         
5. 如需运行工程，自行修改tb_fft_3.v中的代码，只要例化一个FFT IP核就行了。    
