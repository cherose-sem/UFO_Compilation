# III. Prototyping & Evaluation, Documentation

---
- **Title**: Prototyping & Evaluation, Documentation
- **Author**: Andreas Styltsvig (cph-as283) & Cherry Rose Semeña(cph-cs241)
- **Date**: 11/10/2018
- **Assignment reference**: https://datsoftlyngby.github.io/soft2018fall/UFO/03-Prototyping_and_Evaluation.html
---
> ## Exercise 1 

There are digital ocean droplets running in different parts of the world. The are all set up to respond to ping. Their addresses are the following:

- http://139.59.132.185:8080
- http://192.81.216.124:8080
- http://128.199.180.131:8080



### 1. Plan
---
*Formulate a hypothesis/problem statement about behavior of response times of these three servers.* 

The servers is located in different places in the world and we assumes that the distance from the request-source to the location of the server will determine the response latency very visible.

Thence our hypothesis is : 

> "The distance to the location of the server will determine the response latency in MiliSeconds(MS), so we assumes that the further distance is, the latency will increase"




### 2. Setup
---
*Plan an experiment, which measures response times of these three servers.*

We have to gain 3 given facts about the servers:

	1. The location of the ip
	2. The distance between the server and our request-source
	3. The response time for the server

1. **The locations**

There are many places where we can get information about the location of the ip. As start we will be using a iplocation lookup provider (https://www.iplocation.net/).

The results are listed here: 


```
IP: 139.59.132.185
Location: Germany
``` 
![Screenshot1](https://i.gyazo.com/f4e2615c4960c316b86c17722058de6a.png)

```
IP: 192.81.216.124
Location: USA
```
![Screenshot2](https://gyazo.com/5a36cdb7606e492645bc1847eacd448e.png)

```
IP: 128.199.180.131
Location: Singapore
```
![Screenshot3](https://gyazo.com/f336814a849e51cddc23cf47a9e5b811.png)


2. **The distance between the server and our request-source**

We will test from 3 different locations.

Location 1 : The school located in CPH-business, Lyngby, Denmark
Location 2 : Home located in Vanloese, Copenhagen, Denmark
Location 3 : A digital droplet located in ??

```
IP: 5.179.80.204
Location: (Copenhagen)
```
![Screenshot4](https://gyazo.com/5005a7a43bba13087b2dae0e2391b852.png)

Distance between locations using a distance calculator 
https://www.distancecalculator.net/

**Location 1**
- Lyngby -> Germany (Frankfurt am main) 679 km.
- Lyngby -> USA (North Bergen) 6179.90 km.
- Lyngby -> Germany (Singapore) 9977.28 km.

**Location 2**
- Copenhagen -> Germany (Frankfurt am main) 671 km.
- Copenhagen -> USA (North Bergen) 6188.02 km.
- Copenhagen -> Germany (Singapore) 9972.99 km.

**Location 3**
- ?? -> Germany (Frankfurt am main) 671 km.
- ?? -> USA (North Bergen) 6188.02 km.
- ?? -> Germany (Singapore) 9972.99 km.


3. **The response time for the server**

We have to measure the response time from the server, and collect the data. So i need to setup an experiment that will provide me data about latency between my location and the server.

**To do that, i would do something like that:**
1. Coding a bash script that pings the server and measure response time
2. Store the result in a txt file
3. Visualize the result


So i spend some few moment to make a bash script that pings the server and save the result into a txt file.

**pingBot.sh**
```sh

echo "Pinging Germany"
ping 139.59.132.185 -n 10 -l 32 >> ping_germany.txt
echo "Pinging USA"
ping 192.81.216.124 -n 10 -l 32 >> ping_USA.txt
echo "Pinging Singapore"
ping 128.199.180.131 -n 10 -l 32 >> ping_singapore.txt
echo "Finish & exiting"
```




### 3. Execute
---
*Execute the experiment, which measures response times of these three servers.*

Do following steps to start the `pingBot.sh`

1. Create a new file, and call it `pingBot.sh`
it should contains following code: 
```
echo "Pinging Germany"
ping 139.59.132.185 -n 10 -l 32 >> ping_germany.txt
echo "Pinging USA"
ping 192.81.216.124 -n 10 -l 32 >> ping_USA.txt
echo "Pinging Singapore"
ping 128.199.180.131 -n 10 -l 32 >> ping_singapore.txt
echo "Finish & exiting"
```
2. Open a cmd terminal and execute the program by calling `sh pingBot.sh`
3. You should now see 3 new files in same directory you have `pingBot.sh`, these 3 files contains result from pinging.
4. Use the result to whatever you want (Analyze, visualization, discussion)
5. Profit




### 4. Evaluate
---

*Evaluate your experiment and interpret the measurements and results.*


**Results**

> Germany
```txt

Pinging 139.59.132.185 with 32 bytes of data:
Reply from 139.59.132.185: bytes=32 time=16ms TTL=52
Reply from 139.59.132.185: bytes=32 time=16ms TTL=52
Reply from 139.59.132.185: bytes=32 time=16ms TTL=52
Reply from 139.59.132.185: bytes=32 time=15ms TTL=52
Reply from 139.59.132.185: bytes=32 time=16ms TTL=52
Reply from 139.59.132.185: bytes=32 time=15ms TTL=52
Reply from 139.59.132.185: bytes=32 time=16ms TTL=52
Reply from 139.59.132.185: bytes=32 time=16ms TTL=52
Reply from 139.59.132.185: bytes=32 time=16ms TTL=52
Reply from 139.59.132.185: bytes=32 time=16ms TTL=52

Ping statistics for 139.59.132.185:
    Packets: Sent = 10, Received = 10, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 15ms, Maximum = 16ms, Average = 15ms

```

> Usa
```

Pinging 192.81.216.124 with 32 bytes of data:
Reply from 192.81.216.124: bytes=32 time=88ms TTL=54
Reply from 192.81.216.124: bytes=32 time=88ms TTL=54
Reply from 192.81.216.124: bytes=32 time=88ms TTL=54
Reply from 192.81.216.124: bytes=32 time=87ms TTL=54
Reply from 192.81.216.124: bytes=32 time=87ms TTL=54
Reply from 192.81.216.124: bytes=32 time=92ms TTL=54
Reply from 192.81.216.124: bytes=32 time=87ms TTL=54
Reply from 192.81.216.124: bytes=32 time=88ms TTL=54
Reply from 192.81.216.124: bytes=32 time=87ms TTL=54
Reply from 192.81.216.124: bytes=32 time=93ms TTL=54

Ping statistics for 192.81.216.124:
    Packets: Sent = 10, Received = 10, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 87ms, Maximum = 93ms, Average = 88ms

```

> Singapore
```

Pinging 128.199.180.131 with 32 bytes of data:
Reply from 128.199.180.131: bytes=32 time=198ms TTL=51
Reply from 128.199.180.131: bytes=32 time=198ms TTL=51
Reply from 128.199.180.131: bytes=32 time=197ms TTL=51
Reply from 128.199.180.131: bytes=32 time=200ms TTL=51
Reply from 128.199.180.131: bytes=32 time=198ms TTL=51
Reply from 128.199.180.131: bytes=32 time=197ms TTL=51
Reply from 128.199.180.131: bytes=32 time=197ms TTL=51
Reply from 128.199.180.131: bytes=32 time=198ms TTL=51
Reply from 128.199.180.131: bytes=32 time=198ms TTL=51
Reply from 128.199.180.131: bytes=32 time=198ms TTL=51

Ping statistics for 128.199.180.131:
    Packets: Sent = 10, Received = 10, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 197ms, Maximum = 200ms, Average = 197ms

```

