> # BLOG IN PROGRESS

## INVESTIGATION AND REPORTING (UFO) Blog Entry

### _Abstract:_

##### _Kent Beck recipe:_
> _state the problem_ <br>
> _say why it is interesting_ <br>
> _say what your solution achieves_ <br>
> _say what follows from your solution_ <br>

**System Performance Monitoring**

- Application might experience occurrence of system crash due to performance issue.

- The effect of system crash might go unnoticed, and the cost will follow with the size of the system. The workload for tracing the reason to system crash will be a heavy work.

- The Service-Level Agreement(SLA) is achieved when monitoring the system by using Prometheus' custom metrics and Grafana's data visualization.

- A system monitoring will give operators an opportunity of monitoring performance of the system in real-time, and prevent additional system breakdown.

***

### _The Problem_
> _Mahnaz_

[EXPANDED FROM ABSTRACT]<br>
Application might experience occurrence of system crash due to performance issue, for example whatever reason, the website has been hacked or attacked, and the website pages have been swapped by hacking, when the server is downtime Whenever there is a problem with the server or website, it will take time for developers to notice the problem of the website or server, and this notification will be delayed too much. The server has many users who suffer greatly from the unavailability of the website and the termination of the server or website is damaging to their credibility, this causes users to be disturbed, that's way the availability of the site for users is important.

### _Problem Statement_
> _Andreas_

[EXPANDED FROM ABSTRACT]<br>
The effect of system crash might go unnoticed, and the cost will follow with the size of the system. The workload for tracing the reason to system crash will be a heavy work.


### _Evidence: Interviews/Analysis_
> _Cherry_

#### System Performance Monitoring Experience with Prometheus and Grafana
[EXPANDED FROM ABSTRACT]<br>
System Performance Monitoring(SPM) can be done by using tools such as Prometheus and Grafana. The Service-Level Agreement(SLA) was made between our group—developers, and the operators. The Hackernews project should comply to the agreement. It includes the uptime of 95%, data loss of 20%, and landing page load time of maximum 3 seconds. Prometheus has client libraries with custom metrics that can be implemented within the application. Grafana is used for data visualization in purpose of analytics and monitoring. It can process query results from Prometheus metrics, and transform to figures or graphs in a dashboard. Therefore, the combination of Prometheus and Grafana made it possible for us to monitor the system based on our needs.

[will add more here...]

#### Survey Questionnaire

We conducted a survey in relation to the subject. We chose to formulate qualitative questions to broaden our knowledge about SPM based on the responders experience. See the questionnaire [here](https://goo.gl/forms/Iq13rorAlEzi05Lr2).

Our main target responders are IT professionals who have experience in SPM regardless of what tools they are using. They are Software Developer and Lead Architect from CSIS Security group, an IT consultant in NetCompany and a Software Engineer Intern — who is also a former student on the same course. Their responses helped to enlighten our target group — next year's students on the same course — on how important SPM is.  

[will discuss interesting questions and answers here...]

See the complete responses [here](link to be fixed).


### Conclusion
> _ACM_


### Outlook Discussion
> _Andreas_

[EXPANDED FROM ABSTRACT]<br>
 A system monitoring will give operators an opportunity of monitoring performance of the system in real-time, and prevent additional system breakdown.


***
> **Authors:**
> - Andreas Sørbye Styltsvig
> - Cherry Rose Jimenez Semeña
> - Mahnaz Karimi
