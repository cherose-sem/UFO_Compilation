## INVESTIGATION AND REPORTING (UFO) Blog Entry

### _Abstract:_

##### _Kent Beck recipe:_
> _state the problem_ <br>
> _say why it is interesting_ <br>
> _say what your solution achieves_ <br>
> _say what follows from your solution_ <br>

**System Performance Monitoring**

- Application might experience occurrence of system crash due to performance issue.

- The effect of system crash might go unnoticed, and the cost will increase with the size of the system. Tracing the reason to system crash might be a heavy work.

- The Service-Level Agreement(SLA) is achieved when monitoring the system by using Prometheus' custom metrics and Grafana's data visualization.

- A system monitoring will give operators an opportunity of monitoring performance of the system in real-time, and prevent additional system breakdown.

***

### I. _If you are blind as a bat — how are you supposed to be aware of any occurrence of system crash and performance issue?_
Bats aren't blind but their vision is so bad. This reflects to the problem that occurs when the system crash or any performance issue without the developers/operators awareness. When the application is not working intended, the reasons can be varied like from server overload, enormous number of requests, insufficient RAM, or out-dated libraries/packages. Regardless to whatever reason it could be, small issues may lead to bigger problems.

Whenever the functioning system has been interrupted with such issues and become unavailable, the business will suffer. The business' credibility might be at risk — losing their current and potential clients. The longer the issues are hiding behind the curtains, the higher the cost will reflect into the business. 

### II.  _Bats uses echolocation technique to avoid crashing into objects — like you should with your system_
######

Bats are one of the few mammals that can use sound to navigate, a trick called **echolocation**. More than half of 900 spieces rely on echolocation to detect obstacles in flight, find their way into roosts and forage for food. Bats adapt theirself into the nature of living, since bate are almost blind, so they developed echolocation technique as a tool for their survival.

In human IT world, it is in our interest, that the system is constantly up and running. The effect of system crash might go unnoticed, and in worst cases, the users are the first ones who will experience it and will cause a huge impact to the business. 

Bats have echolocation technique, and human have **System Performance Monitoring** tools, which will notify developers any occurence of performance issue a system might experience. 

### III. What is SPM, and how do we use that to monitor our system?

##### A. Survey Questionnaire

We conducted a survey in relation to the subject. We chose to formulate qualitative questions to broaden our knowledge about System Performance Monitoring(SPM) based on the responders experience. See the questionnaire [here](https://goo.gl/forms/Iq13rorAlEzi05Lr2).

Our main target responders are IT professionals who have experience in SPM regardless of what tools they are using. They are Software Developer and Lead Architect from CSIS Security group, an IT consultant in NetCompany and a Software Engineer Intern — who is also a former student on the same course. Their responses will help to enlighten our target group — next year's students on the same course — on how important SPM is.  

As a result, we found some interesting points — how they think SPM is important, when is the best time it has to be integrated with the system, shared experience with preventing or tracing performance issue, and other similar SPM tools as Prometheus and Grafana. It was given that not all companies support the idea of adding SPM tools to their system, though it also shows that as a developer/operator — believe that SPM is useful and has to be implemented as early as possible in the software development cycle.

<sup>_QUESTION: Are you using any System Performance Monitoring(SPM) tool in your current job? If yes, please explain which advantages the tool gives you as a DevOps/developer/operator._</sup><br>
![SPM tools](https://user-images.githubusercontent.com/16150075/49582390-2e5a3400-f955-11e8-9228-c443e6bededb.png)<br>

<sup>_QUESTION: When do you think the developer should implement a SPM tool in a software developing cycle? Please explain your answer._</sup><br>
![when to implement](https://user-images.githubusercontent.com/16150075/49582701-28188780-f956-11e8-91ee-76de933b5fe9.png)

The two responders from CSIS Security Group shared their experience when they actually encountered a performance issue and how SPM tools has been so useful to resolve the issue.

<sup>_QUESTION: Do you have any experience of preventing or trace performance issue using a SPM tool? If yes, please explain the experience and why/how the SPM tool have prevented or being a help to resolve the issue._</sup><br>
![issue experience](https://user-images.githubusercontent.com/16150075/49582965-f8b64a80-f956-11e8-9c26-496160029d19.png)

The main SPM tools that we covered for this blog are Prometheus for custom metrics and Grafana for data visualization. There are also some tools named in the survey that is equally relevant to the subject — Kibana for logs, InfluxDB for storing and analyzing time series data, and Icinga for system and network monitoring. Prometheus hasn't been so known by most of our responders.

See the response summary [here](https://github.com/cph-cs241/UFO_Compilation/blob/master/Blog/Responses%20Summary.pdf).

##### B. System Performance Monitoring Experience with Prometheus and Grafana

System Performance Monitoring(SPM) can be done by using tools such as Prometheus and Grafana. The Service-Level Agreement(SLA) was made between our group—developers, and the operators. The Hackernews project for Large Systems Development(LSD) should comply to the agreement. It includes the uptime of 95%, data loss of 20%, and landing page load time of maximum 3 seconds. Prometheus has client libraries with custom metrics that can be implemented within the application. Grafana is used for data visualization in purpose of analytics and monitoring. It can process query results from Prometheus metrics, and transform to figures or graphs in a dashboard. Therefore, the combination of Prometheus and Grafana made it possible for us to monitor the system based on our needs.

**_Prometheus Custom Metrics_**

Prometheus offers prometheus_client library wherein you can add custom metrics injected to your own system.

```javascript
const gauge = new Prometheus.Gauge({
  name: 'load_time',
  help: 'landing page loadtime',
  labelNames: ['method','path', 'statusCode']
});

router.get(['/newest', '/newest/:max'], async function(req, res) {
  const end = gauge.startTimer({ method: 'GET',  path: req.route.path });
  let max = parseInt(req.params.max)
  let result = await ctrl.getStories(max)
  if (result.statusCode == 200) {
    ...
    end({ statusCode: '200' });
  } else if (result.statusCode == 400) {
    ...
    end({ statusCode: '400' });
  } else {
    ...
    end({ statusCode: '400' });
  }
})
```

<sub>The sample code was taken from our LSD Hackernews project. It simply starts a timer for computing the response load time of a certain HTTP request based on the response's statusCode. The `load_time` metric will be executed and can be queried later on using Prometheus interface or in a Grafana panel.</sub>

**_Grafana Hackernews Dashboard_**

In connection with Prometheus, we created a dashboard for the project. It simply shows the Hackernews System's behaviour over time as it refreshes every 10s.

![image](https://user-images.githubusercontent.com/16150075/49698683-5e107280-fbc7-11e8-8a90-df7a846e4c7e.png)

![image](https://user-images.githubusercontent.com/16150075/49698689-6b2d6180-fbc7-11e8-8d5c-3748e10270f5.png)




##### C. Experimentation

We also conducted an experiment that will define how SPM works — [Monitoring a System Crash Experiment with Digital Ocean, Grafana, Promethueus and Stress Test](https://github.com/cph-cs241/UFO_Compilation/blob/master/Blog/Experiment.md).

### IV. Conclusion


There are no exceptions on unexpected system failure. We could always plan for flawless perfect system, but the assurance that nothing will go wrong over time is very naive. And the consequences of having the customers/users deal with a failing system from time to time is a big no, no for the business, the income will not flow if the system is down or slow! There are SPM tools which can provide the awareness for the developers/operators about the system's performance. It can be costly effective to spice up the system with SPM tools rather than even more expensive resolving performance issues and lost customers due to product's dissatisfaction.

But **when** should we implement SPM in a software development cycle? Some developers may think that it is not necessary when it comes to applications with short lifespan. It is the product owner's decision if they are willing to invest the time spent for adding up monitoring into the system, but at least way its important to raise the concern about it. There is no perfect system that will never be interrupted or break over time. The cost and risk should always be on top discussion for decision-making in every project management. From our survery its clear that a system monitoring will give operators an excellence opportunity of monitoring performance of the system in real-time, and prevent additional system breakdown. We can conclude from the survery that most of the IT professionals in the field thinks that it should be done as early as possible in the development cycle. 

Besides the survery, the experiment describes how you can use Grafana, Prometheus, Node_exporter to monitoring and visualize the performance of your system, by chance detecting any performance issue/overload if any and be alerted with a predescribed alert rule. The advantage of monitoring your system is to get awareness of the issue(s) in real-time, and probably fix the issue before it reachs the customers, so it wont have impact on your business. 
 
### V. Outlook Discussion

We implemented Grafana and Prompetheus for our LSD project, and it was a occurence of system breakdown, and we used the monitoring to trace the error. Here's a short brief and reflection on what we learned from the event.

##### _System Performance Issue Tracking Experience — our system hits the ground badly_

November 14, 2018 — we encountered a system breakdown. We were notified that our Hackernews system was either so slow in loading the summary page or just crashed totally after request. We started investigating the problem and came up with bunch of possible cause of the problem.

TIME | Possible Reason | Description | Remarks
--- | --- | --- | --- |
14:52 | sorting algorithm for nested stories/comments | the difficulty of retrieving the data and format as nested objects | no basis — solution: indexing and use `_id`
16:27 | many requests from the simulator | Helge started making requests to the frontend | no basis — we asked Helge to pause the requests to the landing page for the meantime
16:38 | Elk - logging setup | the last commit/changes added | the monitoring dashboard — the system downtime and lost post requests reported around 13:00


After adding the setup for logging with Kibana and logstash, the system kept on crashing. Due to so many request from the simulator and the demand of adding new services to the project, our server encountered out of memory issue. As we are tracking the problem, we had to stop processes and observe its behavior. The system went back to its working state, right before we add the Kibana again. Therefore, upgrading the server fixed the issue.

![down issue](https://user-images.githubusercontent.com/16150075/49698755-65844b80-fbc8-11e8-9924-9f9ed20a6827.png)

<sub>The image shows the crazy behavior of our Hackernews system. The Grafana dashboard shows when the system was struggling and have been down several times, the posts requests from the simulator started failing and became flat while lost posts grows enormously, and the so slow loading time to the landing page.</sub>

The report still gives us an open question of — can it be added later in the process, at least right before production? One responder from the survery — former student at the same course — thinks that it should be done later in the process, and the same as when we did it during this semester period.One responder — former student at the same course — thinks that it should be done later in the process, and the same as when we did it during this semester period.

### VI. References

* https://www.scientificamerican.com/article/how-do-bats-echolocate-an/
* https://www.cyberciti.biz/faq/stress-test-linux-unix-server-with-stress-ng/
* https://www.digitalocean.com/community/tutorials/how-to-install-prometheus-on-ubuntu-16-04
* http://docs.grafana.org/guides/getting_started/
* https://blog.pandorafms.org/why-you-need-a-monitoring-system/

***
> **Authors:**
> - Andreas Sørbye Styltsvig
> - Cherry Rose Jimenez Semeña
> - Mahnaz Karimi
