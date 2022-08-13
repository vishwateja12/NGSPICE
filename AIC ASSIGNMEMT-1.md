## AIC ASSIGNMEMT-1

**Q2)**

**a)** 

* Below is the figure corresponding  to the netlist given by the code q2_2022.cir
* ![](/home/anya/Downloads/Q2a.png)



**b)**

​           **TABLE-1: Harmonics for small signal input 0.025**

<img src="/home/anya/Pictures/Screenshots/Screenshot from 2022-08-12 14-49-02.png" alt="Screenshot from 2022-08-12 14-49-02" style="zoom:100%;" />

​          **TABLE-2: Harmonics for small signal input 0.010**

![](/home/anya/Pictures/Screenshots/Screenshot from 2022-08-12 14-58-24.png)

​         **TABLE-3: Harmonics for small signal input 0.030**

​                                      ![](/home/anya/Pictures/Screenshots/Screenshot from 2022-08-12 15-02-04.png)   



​       **TABLE-4: Harmonics for little large signal input 0.035**

![](/home/anya/Pictures/Screenshots/Screenshot from 2022-08-12 15-05-27.png)

​     **TABLE-5: Harmonics for little large signal input 0.05**

![Screenshot from 2022-08-12 15-22-11](/home/anya/Pictures/Screenshots/Screenshot from 2022-08-12 15-22-11.png)

​     **TABLE-6: Harmonics for little large signal input 0.06**

![](/home/anya/Pictures/Screenshots/Screenshot from 2022-08-12 15-37-49.png)



**c)**

* At an input voltage of **45.68mV** the THD value from the netlist is coming closer to 10% which is **THD=10.0009 %,**

* At an input voltage of **83.13mV** the THD value from the netlist is coming closer to 20% which is **THD=20** %,![image-20220812215813771](/home/anya/.config/Typora/typora-user-images/image-20220812215813771.png)

**d)**

* To increase the linearity we can decrease the gain by changing the VG bias shift or we can decrease the length of the mosfets we use. By this I changed the lengths of the mosfets in the netlist to the value of 0.09um so that the gain will be lower but by looking into the THD of the voltages in the c part are dropped. Below the THD values are shown for the process we proceeded above

* At an input voltage of 45.68mV the THD value from the netlist is coming closer to  **THD=1.12623 %,**

* At an input voltage of 83.13mV the THD value from the netlist is coming closer to **THD=5.58003%,**



**Q3)**

**a)**

![](/home/anya/Pictures/Screenshots/Screenshot from 2022-08-12 21-31-39.png)

* In above plot X is the current Id flown with respect to the sweep Vgs from 0-1.8 with step 0.1.

* As discussed in the class effect on u that is if we increase VGS more the u which implies mobility of the charges. So now 
  $$
  \mu'=\frac{\mu}{1+\theta (V_{GS}-V_T)}
  $$

* Now as observing that the 
  $$
  I_d=\alpha(V_{GS}-V_T)
  $$
  
* Alpha contains the mobility factor u so the effect will not be seen in the place where the slope alpha is max we found that point and drawn a straight line from that point and found the x-intercept which is indefinately named as threshold voltage

* comes to calculations the slope is highest at **Id = 2.45946*x10^(-5)A Vgs=0.712264V slope is 158*x10^(-6)**

* taking above values into considerations and calculating the x-intercept we got threshold voltage $V_T$ as **0.5566** 

  

**b)**

<img src="/home/anya/Pictures/Screenshots/Screenshot from 2022-08-12 22-15-18.png" alt="Screenshot from 2022-08-12 22-15-18" style="zoom:60%;" />

* Here Given $V_{DS}$ is 1.8 $V_{GS}-V_T$ will always be less than $V_{DS}$ so the mosfet will always be in saturation mode so Id is given by equation below

  ​                
  $$
  I_d=\frac{1}{2}\mu C_{Ox}\frac{W}{L}(V_{GS}-V_T)^2
  $$

  * Now we are interested in finding $V_T$ so i want to linearise the $V_{GS}-V_T$ so i wanted to plot $\sqrt{Id}\space vs \space V_{GS}$ curve which will be linear the above discussed change in carrier mobility should be considered in this case also

* So as from above point we will find the x-intercept for the straight line plotted at the highest slope point in $\sqrt{Id}\space vs \space V_{GS}$ 

* omes to calculations the slope is highest at $\sqrt{Id}$ = **0.0628378 Vgs=0.638393 V slope is 0.0361486**

* From above values obtained from ng-spice Vthreshold is given by **V~T~=0.4646V**

  

**c)**

* As Observed the value of threshold voltage is higher in the first case than the second case,as in first case the mosfet is in a triode state but in the case of b part the mosfet is in saturation region,as velocity of carriers is saturated the threshold voltage will be dropped and below is the expression for new threshold voltage(DIBL)

* in case a DIBL will not be effective as it is in triode state but as in part b the mosfet in saturated state so DIBL is effective
  $$
  V_T'=V_T-\eta V_{DS}
  $$
  

**d)**

* We have the maximum slope point from the part B from that we can find the uCox the value is approximately equal to **2.614*10^(-4)**

**e)**
$$
I_d=I_0e^{\frac{V_{GS}}{\eta V_{thermal}}}
$$

* Apply logarithm on both sides 

$$
log(I_d)=log(I_0)+\frac{V_{GS}}{\eta V_{thermal}}
$$

* by looking into above equation and plot we got from either of the parts we can calculate $\eta$ 
* log(Id) vs V~GS~ for V~DS~ =50mV

![Screenshot from 2022-08-13 00-48-51](/home/anya/Pictures/Screenshots/Screenshot from 2022-08-13 00-48-51.png)

* On calculation by taking a value at VGS=0.3V we got $\eta = 1.4875$ 

* log(Id) vs V~GS~ for V~DS~ =1.8V

![](/home/anya/Pictures/Screenshots/Screenshot from 2022-08-13 01-02-48.png)

* On calculation by taking a value at VGS=0.3V we got $\eta = 1.4815$ 