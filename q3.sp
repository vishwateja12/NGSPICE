
*INCLUDE your model file
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={20*LAMBDA}
.global gnd vdd

.options post


VGS	G	gnd 'VGG'
VDS D   gnd 1.8V 

M1      D       G       gnd     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
 
.dc VGS 0 1.8 0.025


.control
set hcopypscolor = 1 *White background for saving plots
set color0=white ** color0 is used to set the background of the plot (manual sec:17.7))
set color1=black ** color1 is used to set the grid color of the plot (manual sec:17.7))

run

let x = log(-VDS#branch)
set curplottitle="log(id) vs vgs"
plot x 


*hardcopy fig_mos_id_vgs.eps (-VDS#branch)
.endc
