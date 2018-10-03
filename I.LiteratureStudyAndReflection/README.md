# I. Literature Study & Reflection
### Question to be investigated:

> - _Investigate the quality of the queries in the .Net entoty framework. In particular, it is said the technology prevents client side joins._
> - _Find some examples of Linq queries and their translation into SQL which best show how client-side joins are avoided._
> - _What is a Linq query?_
> - _Keep track of how you solve the exercise._




### Exercise:
> _A list of all Google queries you made to solve it, and timestamps (just copy it from the browser history)_


TIME | GOOGLE QUERIES | Description
--- | --- | ---
19:30 | https://www.linqpad.net/CodeSnippetIDE.aspx  | Download & install linqpad
19:35 | https://forum.linqpad.net/discussion/1220/running-linqpad-on-ubuntu , https://stackoverflow.com/questions/3681950/is-it-possible-to-run-linqpad-with-mono-mac  | OS issue (only for Windows)
20:00 | http://www.tutorialsteacher.com/linq/what-is-linq | What is linq, learning basic understanding of linq
20:05 | https://www.linqpad.net/WhyLINQBeatsSQL.aspx | Linq vs sql
20.20 | http://www.tutorialsteacher.com/linq/linq-query-syntax | Making queries
20:23 | https://stackoverflow.com/questions/2767709/join-where-with-linq-and-lambda | try client side joins (How?)




> _A list of the 3 most biggest stumbling blocks you came across and your reflection on why they were problematic (did you misunderstand something, was some of the info you found wrong, did you miss a detail, …)_

1. **OS Support** 
    * Linqpad is focused on Microsoft .NET development so it means it doesn't support other OS than Windows.
2. **Limited guideline and help about linq**
    * The information and help about linq is very limited, you can clearly observe it in stackoverflow where there are 460.000 questions about SQL while there are only 70.000 questions about Linq.
3.  **Understanding linq syntax**
    * This is a learing process, everyone have to go though to understand the linq syntax.       



> _A brief “every 30 min” diary as explained in the slides (this is more frequent than one would normally do, and is just meant as part of the exercise)_


Timestamp | Problem | Notes | Idea | Expect to be Done
--- | --- | --- | --- | ---
19:00 | What is linq? | I have issue to understand what Linq is, which purpose does Linq have, is there any advantage linq does have over SQL ?  | Suggestion: I could google and hopefully find some nice article or blog that explains why people choose Linq and which advantage does Linq have over SQL. I guess stackoverflow will be a great place to start | 20:00
20:00 | How to avoid client side join? | This is a theorical question, and i dont understand what it means with "avoid client side join" does it mean how to avoid doing join on client, so we have to join tables in database? | Suggestion: I guess i will first investiage what there means with the question. Then i will do a research on stackoverflow for the best practice with avoiding client side join, and resolve this issue using Linq | 21:00



### Conclusion:
> _A brief summary of which aspect of the exercise was taking you the longest time to solve, which part of the exercise was side tracking you the most (which dead-ends did you persue), and what was the most helpful information you came across (it could be someone else helping you). How can you avoid those problems in the future, and how can the helpful ressources help you in the future?_

The assignment requires us to figure out how to avoid client side join using Linq as our query language, and we went thought a process from analyize the problem, figure out solutions and execute the solutions. The most challenge part of the assignment was actually get a basic understanding of Linq, since in order to work properly you have to get a good understanding of the language and the purpose. So it took a while to do research in internet to understand Linq. 
The most helpful source was Stackoverflow, there are many credible answers and explaination to our issue. In this case we couldn't really avoid the problem since it is part of the process to learn and understand Linq. 

You could elaborate the queries we did, and it took time for us to understand the syntax language of Linq. Next time we could save more time if we had a cheatsheet / linq command scheme so whichas we will monitor and use as guideline.

