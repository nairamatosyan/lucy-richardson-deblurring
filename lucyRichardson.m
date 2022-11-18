function [ deblurr ] = lucyRichardson( blurred, PSF, t )

blurred = double(blurred);
deblurr = blurred; 
PSF_HAT = rot90(PSF);

for i= 1:t
    temp      = conv2(deblurr,PSF,'same');
    temp = blurred./temp;
    temp     = conv2(temp,PSF_HAT,'same'); 
    deblurr    = deblurr.* temp;
end

deblurr = uint8(deblurr);

end

