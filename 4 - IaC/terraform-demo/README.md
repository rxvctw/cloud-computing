##Do you know Pokemon?

If you know, do you know what an evolution is?

If not, this is the gist.

[Pokemon evolves when it reaches a certain stage](https://bulbapedia.bulbagarden.net/wiki/Evolution)

In this repo, we have [Charmander evolving to Charizard](https://www.pokemon.com/us/pokedex/charmander)

Get into the evolution directory for your practice session.
###Pre req:
1. Install terraform cli recent version
2. Execute the following command to create your own SSH key pair in local.
```shell
ssh-keygen #When prompted for a folder give a folder that you would not commit to git. Do not override the existing SSH keys that you have. 
```
3. Update the name and location of this new key in the vars.tf
4. Using aws configure command, add your access key and secret key to your machine. You do not have to configure it in your code. Terraform can automatically take it if you've executed aws configure


###The following will be created in this repo
1. Auto scaling group with the Amazon Linux 2 AMI and a working Nginx app
2. Load balancer that is connected to this ASG
3. AWS key pair created from your SSH keys in local
4. Security groups for load balancer
5. VPC, Subnets, Route table, Internet gateway


Search for "EMPC_CHECK" in the question folder and fix the text within angular braces to evolve yourself.

After fixing them run the following commands to create the stack. Make sure to change the names in the tags of the respective resources so that you do not get confused over each other's stack as they will all look identical. 

```terraform
terraform validate
terraform plan
terraform apply
```

There is an Easter Egg hidden in the output of this setup. Find it and give answers to the trainer. 

Once the stack is launched, find the DNS of the Load balancer and try to connect to it from your browser


##Important Note
> 1. Once you are done delete the stack using terraform destroy
> 2. Do not commit any sensitive information to your repos like the SSH keys, AWS access and secret keys
> 3. Be careful in opening the ports. Open it to your IP only
> 4. Make sure that you do not commit your terraform state files to your git repos