output_address = ('E:\UNL\semester 1\CSI 8300 cv and ıp\PA_B\leaf\Test\Pongamia Pinnata (P7)\Unhealthy Plants');  
current_folder = dir('E:\UNL\semester 1\CSI 8300 cv and ıp\PA_B\leaf\Test\Pongamia Pinnata (P7)\diseased\*.jpg');
for i = 1 : length(current_folder)
  current_image = current_folder(i).name;
  Img   = imread(fullfile(current_folder(i).folder,current_image));
  j = imresize(Img, [227, 227], 'bilinear');
  imwrite(j, fullfile(output_address, current_image));
end


