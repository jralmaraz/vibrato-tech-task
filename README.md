# vibrato-tech-task
This project implements some use cases of different combination of tools to demonstrate an automation capability on installing, configuring and deploying a sample web application able to retrieve data from a backend database system.

* Security disclaimer:
Once this is a practical exercise, security hardening and concerns about sensitivy information such as all credential related data were not considered. Best practices on identity and access management such as less permission provision, IAM roles (instead of API credentials/service accounts) as well as other infrastrcuture hardening as encryption at rest (disk/block encryption) and in transit (SSL), properties/config file with encryption (e.g eyaml) should always be part of a real world production environment, with the proper certified security proffesionals (ISC/CCSP, for example).

To verify the functionality of the proposed scenario, 2 options were considered:

1 - Run an local ubuntu VM. This implies that the network configurations can vary depending on the available number of network interfaces. There are 2 Vagrant files using both DHCP and static address options to address this.
    Requirements: Vagrant installed in the local machine

    Instructions to run:

    sudo git clone https://github.com/jralmaraz/vibrato-tech-task .

    cd vibrato-tech-task/

    vagrant up


2 - Proviosioning an instance on Google Cloud Engine. This option
    
    Requirements: 
    
      - Vagrant installed in the local machine;
      - Google Cloud Engine account;
      - JSON file with API service account credentials;
      
