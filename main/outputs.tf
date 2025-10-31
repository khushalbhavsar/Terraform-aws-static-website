output "s3_website_url" {
  description = "URL of the hosted static website"
  value       = aws_s3_bucket.static_site.website_endpoint
}

output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.web_server.public_ip
}
