## INVESTIGATION AND REPORTING (UFO) Blog Entry


### _Abstract Proposals:_

##### _Kent Beck recipe:_
> _state the problem_ <br>
> _say why it is interesting_ <br>
> _say what your solution achieves_ <br>
> _say what follows from your solution_ <br>

**Monitoring**

- Some time the system is interrupted and out of reach or loses some data.
- Google and the search provider sites do not like websites that are not of high quality. These web site that are discontinued or lose information will lose their customers
- Server monitoring system, whenever an error occurs on one of your server services or your server is interrupted and out of reach, and ultimately affects hackers, You will be notified.
- `say what follows from your solution`
***
CHERRY's Suggestion for Monitoring
- System's functionalities may be interrupted anytime without the developers/operators' awareness.
- Users would end up unsatisfied with system's performance or usability.
- The combination of Prometheus' powerful metrics and Grafana's data visualization solve the problem.
- In line with the Service-Level Agreement(SLA), monitoring the system's performance is easier with Prometheus and Grafana, wherein metrics are customized and alerts are set based on our needs.

***

**Logging with logstash**

**

- Any software application will have a probablity of system breakdown or unexpected behaviour. 
- You can trace the errors by debugging the system manually, but the workload of debugging will follow with the size of system, and inevitiablity it will become an impossible task.
- Logstash will have all of the logs aggregated into one place so you can see the process flow and perform queries against the logs from all applications from one place.
- We implemented the ELK stack, whichas logstash is a part of. The logstash provides us a excellent and centralized option to trace the error or unexpected behaviour.

**Scaling**

- Software application can often experience break down or system crash due to huge amount of users' requests.
- Scaling is becoming cost-effective as the number of users increases, as well as when the system is growing and developed in time.
- Massive requests failure can be solved by enhancing the scalability of the system with the use of different strategies such as vertical/horizontal scaling, or services scaled with Docker Swarm.
- We chose to scale the Hackernews project using horizontal scaling and Docker swarm.

***
> **Authors:**
> - Andreas Sørbye Styltsvig
> - Cherry Rose Jimenez Semeña
> - Mahnaz Karimi
