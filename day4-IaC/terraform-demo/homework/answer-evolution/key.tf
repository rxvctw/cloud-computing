resource "aws_key_pair" "mykeypair" {
  key_name   = "mykeypair"
  public_key = file(var.path_to_public_key)
  lifecycle {
    ignore_changes = [public_key]
  }
}

