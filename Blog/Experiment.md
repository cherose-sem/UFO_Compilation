# Monitoring a System Crash Experiment with Digital Ocean, Grafana, Prompethueus and bashscript
___


Here i will make an experiment that will give you some of excellent examples of how a **System Performance Monitoring(SPM)** can help you preventing system breakdowns, or at least give you some curicial informations on which part of the system have got a performance issues. There are some setup setups you have to conduct in order to get stuff's up and running.

![](https://camo.githubusercontent.com/d010ea19c70677a0bfd8a64fc01d2b0948e1ffc1/687474703a2f2f646f63732e67726166616e612e6f72672f6173736574732f696d672f66656174757265732f64617368626f6172645f6578312e706e67)

## Prerequisite for the experiment
* Access to a computer
* Access to internet
* Basic understanding of software/programming/coding

## Cost
The experiment wont cost you anything, its completely **free**. Except of the expenses for the electricic usage and the bills you might be paying for gaining your fancy computer.

## Purpose of the experiment
The experiment will give you a idea of why a **system performance monitoring(SPM)** can be useful for any software project. The experiment will also mention some nice tools for monitoring and a guide how to setup and use these tools.

## Explaination of the experiment
The experiment will perform a stressful **hardware operations** on the system, that will eventually crash the system down. You will be using **Grafana dashboard** for visualize the performance of your system, and in our case we will visualize the performance of harddisk I/O, cpu usage percent, and uptime of the system. You will be aswell using the inbuilt **alert system** in Grafana to notify yourself when your system experiences some performance issues that excees any predescribed limit.

#### Tools/equipments/services for the experiment:
* **Cloud server container service**:  
  * `Digital Ocean droplet`
* **System Performance Monitoring(SPM) tools**: 
  * `Prompetheus` and `node_exporter`
* **Performance visualization**: 
  * `Grafana dashboard`

## 1. Setup a digital ocean droplet

### 1.1 Create an account 
Let’s first get started by creating an DO(Digital Ocean) account. Of course you can skip this if you already have one.
- Create a account:
  - Head over to https://cloud.digitalocean.com/registrations/new and click the sign up and follow the steps to create your account.

### 1.2 Create and install the droplet
- Create a droplet
  - Click the green "Create" button, and choose "Droplet"
![](https://i.gyazo.com/0afe05f2000ffc93007ac62fa27e2db8.png)
  - Choose **Ubuntu** and the **cheapeste size**. (*Dont worry you wont be charged, since size of the demo will be minor, and wont cost you anything*). 
  - Choose the server **location** to be nearest possible to your current location. 
![](https://i.gyazo.com/851bae785a8062b9788c056dc8c0f399.png)
  - Give your server **a name**, something like "demoserver", and finalize the creation of your droplet.
![](https://i.gyazo.com/c84ee66589842dc18438d367d0e34c2f.png)

### 1.3 Access the droplet
You now have finalized the creation of your droplet. and you shall 
- Get access to the console of droplet
  - Click on your server, you should get overview of the droplet, something like this.
![](https://i.gyazo.com/3a269db81d8f4b714ee377f912534d80.png)
  - Now you need to **access** to the server to **install** `prompetheus` and `node_exporter`. 
  - Click on "**Lanuch console**" or "**Console**" and login with username and password. *you should get a email on creation of the droplet with access username and password. Use them to get access*. If you havent gotten anything, you can click **Access**, and choose **reset the password** .
![](https://i.gyazo.com/7e4a6cadb6c8d7151fcf628827d4cf18.png)

### 1.4 Install prompetheus and node_exporter on your digital ocean droplet

  - Follow and complete this **installation guide**:
https://www.digitalocean.com/community/tutorials/how-to-install-prometheus-on-ubuntu-16-04
*Notice it might take time(15 minuttes) to setup everything up, and dont forget to complete the prerequestions*

## 2. Setup Grafana

Now you should have installed `prompetheus` and `node_exporter` on your digital ocean Ubuntu server. Now its time to connect Grafana with prompetheus, and **visualize the performance** of your system. 

### 2.1 Create Grafana Cloud account
- Visit https://grafana.com/get
    - Choose hosted cloud grafana
    - Follow the steps to create your account

### 2.2 Databinding with prompetheus (Datasource)

- Databinding with prompetheus
  - Enter your grafana dashboard using your cloud account www.youraccount.grafana.net
  - Configuration -> Datasources -> Add data source -> Prompetheus
Fill with following info
- Url: `YourDigitalOceanIp:9090`

Click **Save and Test**
### 2.3 Import dashboarh
- Click plus icon(Create) and choose import 2705
https://grafana.com/dashboards/2705
- profit
### 2.4 Setup alert system
- pls
- its easy
## 3. Install linux stress
- Go your digital ocean terminal
- Run `$ sudo apt install stress`

### 3.1 Run the system-crash script
- Run ´

### 4. Conclusion

