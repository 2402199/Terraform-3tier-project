# Terraform-3tier-project
OBJECTIVE:

---> CREATE A VPC WITH 2 PUBLIC AND 2 PRIVATE SUBNETS AND 2 INSTANCES IN PUBLIC SUBNETS AND A RDS IN PRIVATE SUBNET & THE 
TRAFFIC MUST BE BALANCED BY AN APPLICATION LOAD BALANCER (ALB) DIRECTING THE TRAFFIC BETWEEN THE TWO INSTANCES

STEPS:

1. create a vpc 10.0.0.0/16 with 4 subnets (2public,2private)
2. attach internet gateway to the vpc
3. create 4 routing table (PUBLIC rt 1,PUBLIC rt 2,PRIVATE rt 1,PRIVATE rt 2)
4. attach the subnets and internet to route table routes
5. create 2 nat gateways and attach it to public subnets
6. create security group 1 for pub lic with all tcp access and other for private
   with source as pubsecuritygroup
7. create 2 instances in public subnets with pubsecurity group with user data provided in the file
   (user.tpl.sh) & (user1.tpl.sh)
8. create a ALB with the pubsecurity group and map the public subnets
9. create a target group with the vpc id created and port "80" and protocol "HTTP"
10. create a lisenter group with the target group credentials opening port "80" and protocol "HTTP"
11. create 2 target group attachment with the instance id of the 2 instances that we created
12. create a rds with the DB subnetof the earlier created private subnets give the security group as public
13. create and output to get the ALB link to check whether our architecture works
		
  output "lb_dns_name" {
    description = "DNS name of ALB"
    value = aws_lb.ALB.dns_name
  
}        

14. use terraform init,validate,plan & terraform apply -auto-approve to run this code 
15. infrastructure will be created and the ALB link will come as output copy that and hit it to check the architecture
