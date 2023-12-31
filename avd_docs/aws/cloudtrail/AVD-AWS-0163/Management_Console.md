1. Log into the AWS Management Console.
2. Select the "Services" option and search for "CloudTrail".</br><img src="/resources/aws/cloudtrail/cloudtrail-bucket-access-logging/step2.png"/>
3. In the "Dashboard" panel click on "View trails" button.</br> <img src="/resources/aws/cloudtrail/cloudtrail-bucket-access-logging/step3.png"/>
4. Select the "trail" that needs to be verified under "Name" column.</br><img src="/resources/aws/cloudtrail/cloudtrail-bucket-access-logging/step4.png"/>
5. Scroll down and under the "Storage location" option check the S3 bucket used to store log data.</br><img src="/resources/aws/cloudtrail/cloudtrail-bucket-access-logging/step5.png"/>
6. Go to "Services" and search for "S3" to go into S3 buckets dashboard.</br><img src="/resources/aws/cloudtrail/cloudtrail-bucket-access-logging/step6.png"/>
7. Select the "S3 bucket" used to store data log in CloudTrail.</br><img src="/resources/aws/cloudtrail/cloudtrail-bucket-access-logging/step7.png"/>
8. Click the "Properties" tab from panel to get into Properties configuration options.</br><img src="/resources/aws/cloudtrail/cloudtrail-bucket-access-logging/step8.png"/>
9. From "Server Access Login" check if the "Enabled" checkbox is selected and if the "Disable Logging" checkbox is selected the logging feature is not enabled for the selected "CloudTrail" bucket.</br><img src="/resources/aws/cloudtrail/cloudtrail-bucket-access-logging/step9.png"/>
10. Click on "Enabled" checkbox and specify the "Target bucket" used to store data log files. Provide a "Prefix" that S3 can assign to all log object keys. Save the changes after review. </br> <img src="/resources/aws/cloudtrail/cloudtrail-bucket-access-logging/step10.png"/>
