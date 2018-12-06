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
Sign yourself up 
https://cloud.digitalocean.com/registrations/new

### 1.2 Create and install the droplet
Choose the cheapest and ubuntu //TODO FIX

### 1.3 Run the droplet
### 1.4 Access the droplet
### 1.5 Download the system-crash script
## 2. Setup Grafana
### 2.1 Create Grafana dashboard
### 2.2 Databinding with prompetheus
### 2.3 Visualize compontents
### 2.4 Setup alert system
## 3. Lets crash the system!
### 3.1 Run the system-crash script
### 4. Expectation

