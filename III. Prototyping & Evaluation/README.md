# III. Prototyping & Evaluation, Documentation

---
- **Title**: Prototyping & Evaluation, Documentation
- **Author**: Andreas Styltsvig (cph-as283),Cherry Rose Semeña(cph-cs241)
- **Date**: 11/10/2018


> ## Exercise 1 

There are digital ocean droplets running in different parts of the world. The are all set up to respond to ping. Their addresses are the following:

- http://139.59.132.185:8080
- http://192.81.216.124:8080
- http://128.199.180.131:8080

### 1. Plan

*Formulate a hypothesis/problem statement about behavior of response times of these three servers.* 

The servers is located in different places in the world and we assumes that the distance from the request-source to the location of the server will determine the response latency very visible.

Thence our hypothesis is : 

> "The distance to the location of the server will determine the response latency in MiliSeconds(MS), so we assumes that the further distance is, the latency will increase"



### 2. Setup

*Plan an experiment, which measures response times of these three servers.*

We have to gain 3 given facts about the servers:

	1. The location of the ip
	2. The distance between the server and our request-source
	3. The response time for the server

> 1. The locations

There are many places where we can get information about the location of the ip. As start we will be using a iplocation lookup provider (https://www.iplocation.net/).



``` 
http://139.59.132.185:8080
(Germany)
``` 
![](https://i.gyazo.com/f4e2615c4960c316b86c17722058de6a.png =250x250)

```
http://192.81.216.124:8080
(USA)
```
!(https://gyazo.com/5a36cdb7606e492645bc1847eacd448e.png)

```
http://128.199.180.131:8080
(Singapore)
```
![GitHub Logo](https://gyazo.com/f336814a849e51cddc23cf47a9e5b811.png)



### 3. Execute
*Execute the experiment, which measures response times of these three servers.*

### 4. Evaluate
*Evaluate your experiment and interpret the measurements and results.*
