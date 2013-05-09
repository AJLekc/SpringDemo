SpringDemo
==========

Simple Spring project with REST services and Spring Data.

To run the project you will need:  
 - Maven 3 (may run with 2 also)  
 - Eclipse (I used Juno version)  
 - Maven's plugin for Eclipse (m2eclipse) installed in Eclipse  
 - MySQL 5 database setup  
 - Apache Tomcat 7  
  
  
___
DB preparation.  
___
After you've installed your MySQL 5 DB execute the SQL scripts placed in the 'scripts' folder of the project in the following order:  
 - database_creation.sql  
 - user_creation.sql  
 - tables_creation.sql  
 - population.sql  
  
After that your database is ready to be used by the application.
This may help if you have troubles to setup your DB - http://ma1stora.wordpress.com/2013/05/09/how-to-%D1%81%D1%82%D0%B0%D1%80%D1%82-%D1%81-mysql/
  
  
___
Project preparation
___

Nice to have: Add Tomcat 7 to your Eclipse's servers so you can easily start/stop it. (Skip if you have configured your Tomcat 7 in Eclipse.)  
 - Go to servers tab. If you don't see this tab go to Window -> Show view -> Servers.  
 - Now in the servers tab Right click -> New -> Server.  
 - Choose Tomcat 7 -> Next -> On the next screen Browse to your servers directory.
 - Hit Finish.  
 - Now in the Servers tab double click on the server you've just created. In the "Server Locations" select "Use tomcat installation".  
 - Save  
  
Configure server's user to match the application:  
  
 - Change your "Tomcat_7_home_dir/conf/tomcat-users.xml" with the docs/tomcat-users.xml from this project. This will allow you to use the "Manager" tool in your Tomcat 7 web condtrol panel (http://localhost:8080/Manager)with:  
  
  user: root  
  pass: toor  
  
 also it will help us deploy on Tomcat with:  
   
  user: tomcat-eclipse  
  pass: tomcat-eclipse  
  
 For some reason these changes are flushed from time to time and if you are not able to login with root/toor into the "Manager" tool this means that you have to repeat this step.
  
 - Run your server - Right click the server -> Run.  
  
Import the project into your workspace:  File -> Import -> Existing project into workspace -> `select archive or project folder`.  
  
Make sure the m2eclipse plugin is installed and Tomcat 7 is running before continuing.  
 - right click on the project -> Run As -> Maven Build -> `in the "Goals:" field enter "tomcat7:deploy"`  
If everithing is OK up to here that's cool :)) Now the easiest way to find your project is by going to your browser -> http://localhost:8080/ -> Select "Manager" -> Enter user/pass (root/toor) and you must see the deployed project (ex. /SpringDemo-1.0.0-SNAPSHOT/).