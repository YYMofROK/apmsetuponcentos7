# APM install on Centos7 Script

## What this script installs \( 설치내역 \)

* Apache2.x
* PHP7.2.x
* MariaDB
* vsftpd

## STEP1.DownLoad File

{% file src=".gitbook/assets/apmsetup.sh" caption="apmsetup.sh" %}

## STEP2. Move the apmsetup.sh File

Move the apmsetup.sh file to the /root location of your Linux system.

shell&gt; mv ./apmsetup.sh /root

## STEP3.Grants execute permission to the downloaded file.

shell&gt; chmod 701 /root/apmsetup.sh

## STEP4.Execute the file.

shell&gt; /root/apmsetup.sh

## Tip\_1. STEP1 + STEP2

shell&gt; yum install -y wget  
  
shell&gt; wget -O apmsetup.sh -P /root/apmsetup.sh [https://firebasestorage.googlapis.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-MA0rupUj-DSwt1vddQm%2F-MA1SQMbDn\_G1pMI2DuM%2F-MA1UeXRvNtvCSMrvEEU%2Fapmsetup.sh?alt=media&token=26a2ca63-121d-4c5e-957e-f8a3a51dba3c](https://firebasestorage.googleapis.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-MA0rupUj-DSwt1vddQm%2F-MA1SQMbDn_G1pMI2DuM%2F-MA1UeXRvNtvCSMrvEEU%2Fapmsetup.sh?alt=media&token=26a2ca63-121d-4c5e-957e-f8a3a51dba3c)

