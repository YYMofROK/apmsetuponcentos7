# APM install on Centos7 Script

* Apache2.x
* PHP7.2.x
* MariaDB
* vsftpd

## STEP1.DownLoad File And Unzip

{% file src=".gitbook/assets/apmsetup.sh" caption="apmsetup.sh" %}

Download the file 

## STEP2. Move the apmsetup.sh File

Move the apmsetup.sh file to the /root location of your Linux system.

shell&gt; mv ./apmsetup.sh /root

## STEP2.Grants execute permission to the downloaded file.

shell&gt; chmod 701 /root/apmsetup.sh

## STEP3.Execute the file.

shell&gt; /root/apmsetup.sh

