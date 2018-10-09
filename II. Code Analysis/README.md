# II. Code Analysis & Performance

> ### Exercise 1
> Run PMD on your chosen project.
> As there are 100s of different metrics (in the different subcategories), you have to argue for which 10 you pick. In particular what situation would make those you pick particular relevant. 

_We chose to use our own project from the previous semester, "Project Gutenberg", since we both have written parts in the code._

> - PMD report
You can find the PMD report here:  

> - A small report (I prefer a markdown in the same github) stating why you picked the 10 checks you did, and why those are important

There are a bunch of pmd rules that should be considered and definitely have to be in the team's coding standards. Here listed are just some of what we think is important practice for Java developers:
1. _Design: CyclomaticComplexity_ - Single Responsibility Principle(SRP) for every method, that will result to a maintainable and readable piece of code. 

2. _Design: AvoidDeeplyNestedIfStmts_ - This is where error often occurs and quite hard to identify why it fails.

3. _Design: CouplingBetweenObjects_ - maintaining low coupling wherein an object should be independent, and know less or nothing about another object as much as possible.

4. _Code Style: ClassNamingConventions_ - In Java, it is very common to use the PascalCase/UpperCamelCase in naming classes.

5. _Code Style: FieldDeclarationsShouldBeAtStartOfClass_ - Another common practice in most programming languages, this enables the readability and known purpose of each part of the code.

6. _Code Style: UnnecessaryConstructor/UnnecessaryLocalBeforeReturn_ - This makes the code readability worse, and confusions may occur.

7. _Performance: AvoidInstantiatingObjectsInLoops_ - objects are be reusable as well, so creating new objects within the loop is inefficient.

8. _Best Practices: UnusedImports_ - it will prevent unnecessary imports in order to extra dependencies which are not even used in the program.

9. _Best Practices: JUnitTestContainsTooManyAsserts_ - it makes the test more complex if it contains too many asserts wherein it may be difficult as well to verify when it fails, splitting to multiple test scenarios is advisable. 

10. _Best Practices: JUnitAssertionsShouldIncludeMessage_ - for more understandle test scenarios.

> _Notice: some checks will not find any issues with your code. You need to find some checks which actually finds issues in the code._

> ### Exercise 2
> You can again pick something from a project you have done yourself.
- [DataAccessMongoDB.java](https://github.com/cph-cs241/UFO_Compilation/blob/master/II.%20Code%20Analysis/ProjectGutenberg_G9/src/main/java/data/DataAccessMongoDB.java) _(Cherry)_
- [DataAccessMySQL.java](https://github.com/cph-cs241/UFO_Compilation/blob/master/II.%20Code%20Analysis/ProjectGutenberg_G9/src/main/java/data/DBConnectorMySQL.java) _(Andreas)_

> - Profile result:



> - Micro-benchmark:
