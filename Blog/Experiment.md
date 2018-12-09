# Monitoring a System Crash Experiment with Digital Ocean, Grafana, Prompethueus and bashscript
___


Here i will make an experiment that will give you some of excellent examples of how a **System Performance Monitoring(SPM)** can help you preventing system breakdowns, or at least give you some curicial informations on which part of the system have got a performance issues. There are some setup setups you have to conduct in order to get stuff's up and running.

![](https://camo.githubusercontent.com/d010ea19c70677a0bfd8a64fc01d2b0948e1ffc1/687474703a2f2f646f63732e67726166616e612e6f72672f6173736574732f696d672f66656174757265732f64617368626f6172645f6578312e706e67)

## Prerequisite for the experiment
* Access to a computer
* Access to internet
* A IQ above 50
*
## Purpose of the experiment
The experiment will give you a idea of why a **system performance monitoring(SPM)** can be useful for any software project. The experiment will also share you some nice tools for monitoring and a guide how to setup and use these tools.

## Explaination of the experiment
The experiment will run a bashscript that will perform a stressful **hardware operations** on the system, that will eventually crash the system down. You will be using **Grafana dashboard** for visualize the performance of your system, and in our case we will visualize the performance of harddisk I/O, cpu usage percent, and uptime of the system. You will be aswell using the inbuilt **alert system** in Grafana to notify yourself when your system experiences some performance issues that excees any predescribed limit.

**Tools/equipments for the experiment:**
* A Digital Ocean droplet
* `Prompetheus` and `node_exporter`
* `Grafana dashboard`

## 1. Setup a digital ocean droplet
*Guide how to get a Digital Ocean droplet*

### 1.1 Create an account
Register your account here
* https://cloud.digitalocean.com/registrations/new

### 1.2 Create and install the droplet
Choose the cheapest and ubuntu

### 1.3 Access the droplet
- Reset the password
- Check your email
- Use the username and password provided in email
- Login on "Lanuch console" with username and password

### 1.4 Install prompetheus and node_exporter on your digital ocean droplet
**Follow this guide:**

https://www.digitalocean.com/community/tutorials/how-to-install-prometheus-on-ubuntu-16-04
*Notice it might take litle time(15 minuttes) to setup everything up, and dont forget to complete the prerequestions*

## 2. Setup Grafana

### 2.1 Create Grafana Cloud account
- Visit https://grafana.com/get
- Chose hosted cloud grafana
- Create your account


### 2.2 Databinding with prompetheus (Datasource)
Enter your grafana dashboard using your cloud account www.youraccount.grafana.net
Do following:
*Configuration -> Datasources -> Add data source -> Prompetheus*
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
