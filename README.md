# vibrato-tech-task
This project implements some use cases of different combination of tools to demonstrate an automation capability on installing, configuring and deploying a sample web application able to retrieve data from a backend database system.

* Security disclaimer:
Once this is a practical exercise, security hardening and concerns about sensitivy information such as all credential related data were not considered. Best practices on identity and access management such as less permission provision, IAM roles (instead of API credentials/service accounts) as well as other infrastrcuture hardening as encryption at rest (disk/block encryption) and in transit (SSL), properties/config file with encryption (e.g eyaml) should always be part of a real world production environment, with the proper certified security proffesionals (ISC/CCSP, for example).

To verify the functionality of the proposed scenario, 2 options were considered:

1 - Run an local ubuntu VM. This implies that the network configurations can vary depending on the available number of network interfaces. There are 2 Vagrant files using both DHCP and static address options to address this.
    Requirements: Vagrant installed in the local machine

    Instructions to run:

    git clone https://github.com/jralmaraz/vibrato-tech-task .

    cd vagrant/

    vagrant up

    Retrieve data from DB will be accessible from: http://$VM-IP/users.php
    
    Insert data into DB will be accessible from: http://$VM-IP/insert.php
    
    Example:
    
        ==> default: To access the applications, use the following URLs (PLEASE NOTE THAT THE RETRIEVED IP ADDRESS NEEDS PUBLIC ACCESS):
        ==> default:   Insert new record: http://192.168.1.5/insert.php
        ==> default:   Retrieve records: http://192.168.1.5/users.php


2 - Proviosioning an instance on Google Cloud Engine. This option is not fully functional, but it has the purpose to demonstrate the integration capability with a custom cloud provider:
    
    Requirements: 
    
      - Vagrant installed in the local machine;
      - Google Cloud Engine account;
      - JSON file with API service account credentials;
      - Google Vagrant plugin;
      
      Instructions to run:


        vagrant plugin install vagrant-google

        git clone https://github.com/jralmaraz/vibrato-tech-task .

        cd vagrant/GCE-sample

        Get the correct JSON file for the API 

        vagrant up
        
        Adjust firewall Rules
        
        Reference: Hashicorp's Mitchel Hashimoto: https://github.com/mitchellh/vagrant-google
