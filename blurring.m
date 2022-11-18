function [ blurred, PSF ] = blurring( gi, hsize, sigma)

PSF = fspecial('gaussian', hsize, sigma);
blurred = conv2(double(gi), PSF);
blurred = uint8(blurred);

end

