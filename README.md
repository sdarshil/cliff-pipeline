                                                                      step 1 :
Creating vpc in aws cloud with internet gateway and yes i can set-up an natGW too!
diffrence between this too is that an ig allows instances to go to public internet and vice versa while natGW allows a similiar capability but one way like instances can go to public internet for updates of yum or some other softwares but the public world is not allowed to access the privet subnet resources !
ACL RULES:
allows inbound and outbound traffic as one layer of firewall security in vpc .
SECURITY GROUPS:
we can create security groups to setup control inbound and outbound traffic and we can also give one security group name as all ips under on SecurityGroup is allowed in diffrent SecurityGroup .
                                                                       step 2:
Terraform:
provisioning aws cloud instances in created vpc with terraform (3 instance)
Ansible:
configuring two instances for single node k8s cluster .
configuring whole infrastructure with one click only with roles and dynamic inventory .

Terraform vs Ansible:
terraform used for provisioning any cloud while ansible used to configure with multi threading too !
ansible can provision too but terraform has idempotence feture in provisioning and it has larger number of options like creating SG group and attaching it or Ig creating and attachimg or storage device creating attachig .
                                                                  step 3:
JENKINS:
setting up jenkinsfile on aws ec2 instance and building one pipeline which will trigger on git commit and then it will build the docker image and then it will launched with deployment stretegy on running kubernetes server with rollout stretegy on production .
i have set up config file of .kube/config from master to jenkins instance in same location so jenkins can set image in k8s master which was easy for me now as demonstration else we can use dockerhub web hooks too!

