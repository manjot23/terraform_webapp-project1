# terraform_webapp-project1
 This is basic webapp project for terraform learning 
 In this project you will get a chance to learn the deployment of  the static web page  on Linux aws instance 
**Requirements** : 
Need AWS free account 
GitHub account (optional )

**Steps for creation of aws infrastructure using terraform**  : 

Used a local backend but you can use AWS s3 +DynamoDB as remote backend or Terraform cloud .

Creating following  AWS resources with terraform : 
Custom defined VPC (including private and public clouds in multiple availability zones)
**Internet gateway**: used to communicate between the instances and internet through load balancer .
(In by default vpc –internet gateway is automatically created .)
**Security groups** – used to allow and block the inbound and outbound traffic.
**RDS instance** –Database instance created in private subnet to store web application files for future .
**EC2 instances**–Create two linux virtual machines and installed Apache server to run the static web page 
By default the inbound rules are not allowed and in order to allow traffic from internet we will configure inbound rules through security groups 
**Application load balancer** – works on layer 7 -- works on  protocols HTTPS/HTTPS (to access internet )
•	ALB Requirements : 1vpc and 2 availability zones and one subnet in each zone where ec2 machine run python server/app server to run application 
•	Have to select which ec2 traffic route towards internet with help of load balancer 
•	Add security groups(firewall rule on load balancer) to set traffic boundaries
•	Listener &routing -On load balancer – choose lister port like https/http 
•	Target -individual ec2 instance (traffic will go to target )
Target types : IP, INSTANCES,LAMBDA
In terms of IP target –you cannot make it public ip so when target IP you can only use following CIDR Block 
10.0.0.0/8
100.64.0.0/10
172.16.0.0/12
192.168.0.0/16
•	Target group -cluster of ec2 instances &so traffic can be distributed on selected ec2s
**Route53 configuration** : Instead of using by default domain generated by aws , we have created the custom domain and defined the route 53 dns record to use custom domain defined.
![image](https://github.com/manjot23/terraform_webapp-project1/assets/127676177/2419ba22-5880-43dd-8783-8b11b8e895df)




