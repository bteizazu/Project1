# Project1
Project 1 submission for UMN Cybersecurity Bootcamp


## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

https://drive.google.com/file/d/1M8ChhmFdo2-x-uOv9RsXk-0X1ZM5p54T/view?usp=sharing

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the __ansible playbooks__ file may be used to install only certain pieces of it, such as Filebeat.


This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly **secure**, in addition to restricting **access** to the network.
- TODO: What aspect of security do load balancers protect? **They monitor web traffic and ensures servers don't get overwhelmed**
-  What is the advantage of a jump box? **The jumpbox provides security by serving as a gateway between the internet and other machines not exposed to the internet**

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the **web activity** and **system logs**.


The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
|  Web-1    |    Web Server      |      10.0.0.5      |  Linux                |
| Web-2    |     Web Server     |      10.0.0.7      |  Linux                |
| Elk    |    Analytics      |       10.1.0.4     |                  | Linux

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the **jump box** machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- **load balancer IP, home computer IP address**

Machines within the network can only be accessed by **the Jump Box Virtual Machine, IP 40.122.232.77**.


A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes              | Personal Computer    |
|  Web 1        |          No           |     Jump Box IP: 40.122.232.77                |
|     Web 2     |            No         |      Jump Box IP: 40.122.232.77                | Web 3| | | |


### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because
**manual configuration would involve having to enter commands for each confugration task. Ansible helps with automating this process, making configuration less tedious and more repeatable across servers, by combining multiple tasks into a single script that can be executed with just one command.**

The playbook implements the following tasks:

**- Install Docker
- Install python3-pip and docker module
- Increase virtual memory
- Download and launch a docker elk container
- Enable service docker on boot**

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

**I don't have a screenshot because The Azure subscription ended, and I can't SSH into the Ansible container anymore. Otherwise, I would have done so and included a screenshot of the terminal after entering the command 'docker ps' to show that the Elk container is running.**


### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- **Web 1: 10.0.0.5 and Web 2: 10.0.0.7**

We have installed the following Beats on these machines:
- **Filebeats and MetricBeats**

These Beats allow us to collect the following information from each machine:

**Filebeat can be used to review log files and events, and send information to Elastisearch for further analysis.
Metricbeat can be used to watch servers and collects metrics, and send information to Logstash for further review**

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _**configuration**_ file to __**the Ansible container**__.
- Update the __**configuration file**__ file to include the **Elk VM IP address**
- Run the playbook, using the command **'ansible-playbook filebeat-playbook'** and navigate to _**kibana on the browser (http://elkiphere:5601/app/kibana)**_ to check that the installation worked as expected.



_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
