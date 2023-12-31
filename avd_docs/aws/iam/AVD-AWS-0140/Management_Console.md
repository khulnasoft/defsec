1. Log into the AWS Management Console.
2. Select the "Services" option and search for IAM. </br><img src="/resources/aws/iam/root-account-in-use/step2.png"/>
3. Scroll down the left navigation panel and choose "Credential report". Click on the "Download Report" button to download a report that lists all your account's users and the status of their various credentials. </br><img src="/resources/aws/iam/root-account-in-use/step3.png"/>
4. Open the downloaded credentials report and check the "password_last_used_date" column for the root account. If the timestamp value is recorded within the last 7 days the above credentials have been used to access the AWS account.</br>
5. Repeat steps number 2 - 4 for other AWS account.</br>
6. Scroll down the left navigation panel and choose "Users". </br><img src="/resources/aws/iam/root-account-in-use/step6.png"/>
7. Click on the "Add User" button to add new user.</br><img src="/resources/aws/iam/root-account-in-use/step7.png"/>
8. On the "Add User" page provide the "User name" for new IAM user. Under the "Select AWS access Type" select both/either "Programmatic access" and "AWS Management Console access" and choose whether to use an "Autogenerated password" or "Custom Password".<img src="/resources/aws/iam/root-account-in-use/step8.png"/>
9. Scroll down the "Add User" page and click on the "Require password reset" so that new IAM user can reset the password at next sign-in.</br><img src="/resources/aws/iam/root-account-in-use/step9.png"/>
10. Click on the "Next: Permissions" button to continue the new IAM user configuration.</br><img src="/resources/aws/iam/root-account-in-use/step10.png"/>
11. On the "Set Permissions" page select the "Administrator Access" policies group to provide the full "AWS Management Console" access to the new IAM user. If such a group doesn't exist click on the "Create Group" button to create a new group with "AdministratorAccess" policies.</br><img src="/resources/aws/iam/root-account-in-use/step11.png"/>
12. Click on the "Next: Tags" button to continue the new IAM user configuration.</br><img src="/resources/aws/iam/root-account-in-use/step12.png"/>
13. Provide the "Key" and "Value" in the "Add tags (optional)" page. Tags can be used to organize, track, or control access for the user. Click on the "Next: Review" button to verify the new IAM user configuration details.</br><img src="/resources/aws/iam/root-account-in-use/step13.png"/>
14. On the "Review" page click on the "Create user" button to create the new user.</br><img src="/resources/aws/iam/root-account-in-use/step14.png"/>
15. To assign MFA to new IAM user click on the "User name" column under the "Users" page.</br><img src="/resources/aws/iam/root-account-in-use/step15.png"/>
16. Click on the "Security Credentials" tab at the menu and check the option for "Assigned MFA device".</br><img src="/resources/aws/iam/root-account-in-use/step16.png"/>
17. Click on the "Manage" option to assign the "MFA device" of the choice. Click on the "Virtual MFA device" and click on "Continue". </br><img src="/resources/aws/iam/root-account-in-use/step17.png"/>
18. Now install the AWS MFA compatible application on mobile device or computer. Once the application is installed click on the "Show QR code" and scan the code with pre-installed application.</br><img src="/resources/aws/iam/root-account-in-use/step18.png"/>
19. Enter two consecutive MFA codes generated from application in "MFA code 1" and "MFA code 2" and click on the "Assign MFA" button.</br><img src="/resources/aws/iam/root-account-in-use/step19.png"/>
20. On successful setup will get the following message "You have successfully assigned virtual MFA". </br><img src="/resources/aws/iam/root-account-in-use/step20.png"/>

