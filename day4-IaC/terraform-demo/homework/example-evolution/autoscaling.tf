resource "aws_launch_configuration" "example-launchconfig" {
  name_prefix     = "example-launchconfig"
  image_id        = var.amis[var.aws_region]
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.mykeypair.key_name
  ##########Level Charizard : EMPC_CHECK : Replace the security group ID here with the right value##########
  security_groups = [<What should be the value here?>]
  user_data       = "#!/bin/bash\namazon-linux-extras install nginx1 -y\nMYIP=`ifconfig | grep -E '(inet 10)|(addr:10)' | awk '{ print $2 }' | cut -d ':' -f2`\necho 'Hurray! Translate this morse code using google and ping it to me separately to show that you have completed it :  --. .-. . .- - / .--- --- -...' > /usr/share/nginx/html/index.html\nservice nginx restart"
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "example-autoscaling" {
  name                      = "example-autoscaling"
  vpc_zone_identifier       = [aws_subnet.main-public-1.id, aws_subnet.main-public-2.id]
  launch_configuration      = aws_launch_configuration.example-launchconfig.name
  min_size                  = 2
  max_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB"
  ##########Level Charizard : EMPC_CHECK : Replace the elb ID here with the right value##########
  load_balancers            = [<What should be here?>]
  force_delete              = true

  tag {
    key                 = "Name"
    value               = "InfraBootCampLaunch"
    propagate_at_launch = true
  }
}