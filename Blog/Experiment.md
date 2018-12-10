# Monitoring a System Crash Experiment with Digital Ocean, Grafana, Prompethueus and stress test
___

Here, we made an experiment that will give you some examples of how a **System Performance Monitoring(SPM)** can help you preventing system breakdowns, or at least give you some crucial information on which part of the system have gotten performance issues. You need to setup the experiment in order to get stuff up and running, and do the actual experiment.

![](https://camo.githubusercontent.com/d010ea19c70677a0bfd8a64fc01d2b0948e1ffc1/687474703a2f2f646f63732e67726166616e612e6f72672f6173736574732f696d672f66656174757265732f64617368626f6172645f6578312e706e67)

## Prerequisite for the experiment
* Access to a computer
* Access to internet
* Basic understanding of software/programming/coding

## Cost
The experiment won't cost you anything, its completely **free**. Except of the expenses for the electric usage and the bills you might be paying for gaining your fancy computer.

## Purpose of the experiment
The experiment will give you a idea of why a **system performance monitoring(SPM)** can be useful for any software project. The experiment will also mention some nice tools for monitoring and a guide how to setup and use these tools.

## Explanation of the experiment
The experiment will perform a stressful **hardware operations** on the system, that will eventually crash the system down. You will be using **Grafana dashboard** for visualize the performance of your system, and in our case we will visualize the performance of harddisk I/O, CPU usage percent, and uptime of the system. You will be as well using the inbuilt **alert system** in Grafana to notify yourself when your system experiences some performance issues that exceeds any predescribed limit.

#### Tools/equipments/services for the experiment:
* **Cloud server container service**:  
  * `Digital Ocean droplet`
* **System Performance Monitoring(SPM) tools**:
  * `Prompetheus` and `node_exporter`
* **Performance visualization**:
  * `Grafana dashboard`

# Setup the experiment
## 1. Setup a digital ocean droplet

### 1.1 Create an account
Let’s first get started by creating an DO(Digital Ocean) account. Of course you can skip this if you already have one.
- Create a account:
  - Head over to https://cloud.digitalocean.com/registrations/new and click the sign up and follow the steps to create your account.

### 1.2 Create and install the droplet
- Create a droplet
  - Click the green "Create" button, and choose "Droplet"
![](https://i.gyazo.com/0afe05f2000ffc93007ac62fa27e2db8.png)
  - Choose **Ubuntu** and the **cheapeste size**. (*Don't worry you wont be charged, since size of the demo will be minor, and wont cost you anything*).
  - Choose the server **location** to be nearest possible to your current location.
![](https://i.gyazo.com/851bae785a8062b9788c056dc8c0f399.png)
  - Give your server **a name**, something like "demoserver", and finalize the creation of your droplet.
![](https://i.gyazo.com/c84ee66589842dc18438d367d0e34c2f.png)

### 1.3 Access the droplet
You now have finalized the creation of your droplet, and you shall
- Get access to the console of droplet
  - Click on your server, you should get overview of the droplet, something like this.
![](https://i.gyazo.com/3a269db81d8f4b714ee377f912534d80.png)
  - Now you need to **access** to the server to **install** `prometheus` and `node_exporter`.
  - Click on "**Launch console**" or "**Console**" and login with username and password. *you should get an email on creation of the droplet with access username and password. Use them to get access*. If you haven't gotten anything, you can click **Access**, and choose **reset the password** .
![](https://i.gyazo.com/7e4a6cadb6c8d7151fcf628827d4cf18.png)

### 1.4 Install Prometheus and node_exporter on your digital ocean droplet

  - Follow and complete this **installation guide**, but just skip step 8 *"Step 8 — Securing Prometheus"* for now, we don't need adding security for this demo  :
https://www.digitalocean.com/community/tutorials/how-to-install-prometheus-on-ubuntu-16-04
*Notice it might take time(15 minutes) to setup everything up, and don't forget to complete the prerequestions*

## 2. Setup Grafana

Now you should have installed `Prometheus` and `node_exporter` on your digital ocean Ubuntu server. It's time to connect Grafana with Prometheus, and **visualize the performance** of your system.

### 2.1 Create Grafana Cloud account
- Visit https://grafana.com/get
    - Choose hosted cloud Grafana
    - Follow the steps to create your account

### 2.2 Data-binding with Prometheus (Data Source)

- Data-binding with Prometheus
  - View your Grafana dashboard using your cloud account www.youraccount.grafana.net
  - Goto **data sources** from your Grafana dashboard **Configuration -> Data Sources**
 ![](https://i.gyazo.com/890d62414916a0c2b8461a806e7ea3aa.png)
  - Click **"add data source"**
    - Choose **Prometheus**
  - Fill with following info and let everything else be default
    - URL: `YourDigitalOceanIp:9090` *You can find your ip in server info on Digital Ocean dashboard*
    ![](https://i.gyazo.com/ac5f98369dfcbdae4ad85138dbdb34aa.png)
  - Click **"Save & Test"**

### 2.3 Import dashboard
- Import a dashboard
  - Clock Create (Plus Icon) and choose Import
![](https://i.gyazo.com/d6947d5a3cd2b1fc17ad0ba8c3123e1f.png)
  - Put the number:  `2705` on first field "Grafana.com Dashboard"
    - This is a custom made dashboard, that you have to import then all visualizations will show up in your dashboard *https://grafana.com/dashboards/2705*. For future reference, you should rather learn how to use node_exporter to show the metrics, but for now we will just introduce you the tools.
- Show the dashboard by clicking "Dashboards" icon and click "Home".
  - Choose the dashboard called "node-exporter-fangdd-com"
  - You should see a overview with lot of panels and metrics something like that
![](https://i.gyazo.com/fe94217957dbe60956fcfa4f716f3857.png)

### 2.4 Setup the alert notification system
Now, we would like to setup the alert system, so you will be notified if the performance exceeds a predescribed limit. Like if the usage percent of CPU workload exceeds 80% over a period of time (5 minutes).

- First hand we will setup the alert notification.
  - Click **Alert -> Notification channel**
    - Click  **"+ New channel"**
    - Setup the notification with your own email
    - Try Send Test to check if the notification actually works
    - Save

![](https://i.gyazo.com/98d3d98c54e6905a7b427f68136d5e68.png)

### 2.5 Setup the trigger(Alert rules)
Now we have to create some rules, that will send you an email if the rules break.
- Goto your dashboard
- Click the panel **"CPU Basic"**
  - Edit panel
  - Click Alert
  - Create alert
  - Set the "Is above" to 80%
  - Set "if no data" to "alerting"
  - Set "query(A,1m,now)"
  - Click Test Rule

![](https://i.gyazo.com/852626219479954304d08b1ccf9ce9bc.png)

Now the alert rule is set, you should now see a red line in the panel, that show the performance limit, before the alert will be triggered.

![](https://i.gyazo.com/350445423b77e5dbf7d4c581a0b6de78.png)

# The actual experiment
Now we will perform the actually experiment, it took a while to setup everything up but at least now you should know how to setup the
`Digital Ocean droplet`, `Prometheus`, `node_exporter` and `Grafana dashboard` for your future usage.

Anyway, now we will perform a CPU stress test, that will exceed your predescribed alert rule, so it should be triggered and send your a notification by email. And then, we will try to shut down the digital ocean droplet, and in that case you should receive a notification.

## 3. Install linux stress
- Go your digital ocean terminal
  - Run `$ sudo apt install stress`
  - Once the stress is installed, you run the stress with this command
    - `stress -c 2 -i 1 -m 1 --vm-bytes 128M -t 240s`
  - Now you should be able to see that the CPU percentage is high as 100% on Grafana dashboard
  - Wait 2 min and you should get a email notification.

## 3.1 Shut down the droplet
- Goto your digital ocean droplet and turn this off
- Wait 2 min, you should as well get a notification.

### 4. Conclusion

The experiment shows you how to use Grafana, Prometheus and node_exporter to monitor and visualize the performance of your system. You should now understand the advantage of using a monitoring tool, and being alerted in time.
