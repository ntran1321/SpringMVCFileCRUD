## Concert Events SPRING MVC C.R.U.D Project

This is my week 7 project for Skill Distillery. I have created a Spring MVC C.R.U.D web application so that users can create a list and edit a list of concerts that they are looking to attend. The application first reads in a CSV file that I had created by listing upcoming concerts in Denver. Then, the user interface allows users to look up events by artists, view events that they have added or all of the upcoming events, and delete events from their list. My web application also automatically persists the array list of concerts and writes it to a separate CSV file in the Web-inf folder. 

The technologies used in the creation of this project were: Java, Spring, Gradle, and HTML/CSS.

Future features that I would like to add to my program are the ability to edit the details of a concert and sort the list of concerts by date. 

The stumbling points I encountered were setting parameters to session scopes and incorporating validation. I attempted to set the complete list of concerts to session scope so that the list would be loaded when the user clicks on a link to show all concerts but the page would not load. Secondly, I attempted to add a validation method for when a user attempts to add a duplicate event but I could not get this part of the program functioning.
