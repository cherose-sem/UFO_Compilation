# Monitoring a System Crash Experiment with Digital Ocean, Grafana, Prompethueus and bashscript
___
Here i will setup a experiment that will provide you some of excellent examples of how a system monitoring can help you preventing system breakdowns, or at least give you some curicial informations on which part of system are having performance issues. There are some setup setups you have to conduct in order to get stuff's up and running.

## Prerequisite for the experiment
* Access to a computer
* Access to internet
* A IQ above 50 

## Explaination of the experiment
The experiment will run a bashscript that will perform a stressful I/O operations on the system, that will eventually crash the system down. You will be using Grafana dashboard for visualize the performance of your system, and in our case we will visualize the performance of harddisk I/O, cpu usage percent, and uptime of the system. You will be aswell using the inbuilt alert system in Grafana, so you will be alerted when your system experiences some performance issues that excees any predescribed limit.

**Tools for the experiment:**
* A Digital Ocean droplet 
* Prompetheus 
* Grafana dashboard
* Bashscript

## 1. Setup a digital ocean droplet

### 1.1 Create an account 
**Sign yourself up**
https://cloud.digitalocean.com/registrations/new

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
*Notice it might take litle time(15 minuttes) to setup everything up*

## 2. Setup Grafana

### 2.1 Create Grafana dashboard
### 2.2 Databinding with prompetheus
### 2.3 Visualize compontents
### 2.4 Setup alert system
## 3. Lets stress/crash the system!
### 3.1 Run the system-crash script
### 4. Expectation

