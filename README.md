# Bypas-Login
                                    Bypass Login Using Selenium Ruby

Being as a Software Test Engineer, let us suppose clicking the button regularly, inserting 100s of data in the text field, checking all the functionality of the system manually makes the day unenergetic and decreases the workflow of a Test Engineer. So, the Automation comes into the picture which automates the whole process within a second and completes the task as per the time.

Let us suppose, if you want to test the home page functionality of the Facebook app which includes (post functionality, message functionality, reaction functionality and so on). For this we need to login to the Facebook account and only we can operate these activities. Every time we conduct this test than we need to login to the account which decreases the workflow. If you testing those functionalities for 100th time than the login process will be very first step which you need to perform.

Is there any solution for bypassing the login process?

Yes, there is……
The solution for this challenge is to take advantage of Remote Debugging mode which is available in Chrome.
Remote Debugging: Remote Debugging means when you work on your local computer and you want to start and debug a program on another computer which is the remote machine. When the automation script executes, the new chrome browser will execute which looks like a newly installed chrome browser. It doesn’t contain any account credentials which you had inserted on your local chrome browser. 

In this case, I had bypassed the login process using Remote Debugging. Remote debugging was helpful as once Chrome is opened in remote debugging mode; we could connect a new Selenium Chrome Driver to that existing Chrome Instance.

Requirements:

•	Chrome Browser Version 63 or higher. In my case it was version 84

•	Now, add a chrome browser installation directory to the path variable.

•	Make a chrome browser a default web browser because a Remote debugging mode supports only chrome browser.


Steps to bypass 

•	Once the above requirements are satisfied, we can connect a new selenium chrome driver instance to an existing chrome browser instance.

•	Firstly, we need to open a new chrome browser in remote debugging mode using terminal or command prompt and use the following commands
chrome.exe --remote-debugging-port={remote port number} --user-data-dir="{remote-directory}"

On the above commands replace {remote port number} with 4-digit port number which you hadn’t used for any other application which may be anything like 1234, 4533,3422 and replace {remote-directory} with a new directory to save the instance of the chrome driver. Make a directory in any of the available drive and give the path in {remote-directory}.

•	Execute the above command in cmd or terminal a new chrome browser will get displayed.
 
In my case 9291 is the remote debugging port and D:/TestChrome is the new directory.
When we execute the above command, the new chrome driver will be displayed 
 
As I have already signed up with my google account but after executing the command a new google chrome will appear and you need to login with google account or the account in which you are going to perform the test. Once you have completed logging to the desired account further you don’t need to login to the account each time.
Now let’s jump into the Ruby code………
 

Code Description:

Line1: The selenium web driver is imported to perform an automation.

Line2: The path of the selenium web driver is set using the above code 

Line 4: Here, options class is used which can be called as options.new and it is a new concept added in Selenium web driver and is used for customizing the chrome driver session. It can be used for various other things but in this case, the options class is used to customize or record the chrome browser session and is stored on a variable opt.

Line5: Now we can use add_option method of options class to add the debugging address which we had set on the earlier stage which is the 4-digit port number.

Line6: Therefore, we had stored a selenium web driver on a variable driver and had passed the variable opt to record or store the session of the chrome.


Line 7: driver.get(url), this code opens the url passed on the parameter. Here, Facebook is opened.

Line 9,10,11: After executing the above code the Facebook app will displayed and if the title is matched with the given title than it prints the above-mentioned message and if the title didn’t match with the given title than the it prints the above-mentioned message.

Note: Execute the above code, the login will be bypassed but keep in mind that for the very first time when you execute the cmd command as mentioned on Steps to bypass section than the new chrome browser will be displayed where you need to login to the application which you want to automate. And once you login to the application than you don’t need to login to the application and the login will be bypassed.

Thank You.




