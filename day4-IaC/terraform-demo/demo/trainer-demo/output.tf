output "ip" {
  value = tomap({
    for k, ip in aws_instance.demo : k => ip.public_ip
  })
}

output "s3_bucket" {
  value = module.s3_bucket.s3_bucket_arn
}