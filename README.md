# Lucy-Richardson Deblurring

Lucy-Richardson deblurring algorithm is implemented using MATLAB. The function takes 3 arguments, those are the blurred image, PSF and the number of iterations.
PSF is the matrix this is applied on original image for getting the blurred image.

The function will perform the main action of Lucy-Richardson algorithm t times, where t is the number of iterations. If the number of iterations is increased, the result will
be more precise, although other stopping conditions can also be applied. Finally, the function will return one output which will be the deblurred image.

![image](https://user-images.githubusercontent.com/25793193/203104528-72232b9e-290e-4285-8a97-779a680ae8fd.png)
