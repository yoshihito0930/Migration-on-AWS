resource "aws_instance" "sct_on_windows" {
  ami           = "ami-0229252f7173d9c82"
  instance_type = "t3.micro"
  subnet_id     = var.public_subnet_id
  
  user_data     = <<-EOF
                    <powershell>
                    # Download and install AWS SCT
                    $sctInstallerUrl = "https://d2dr3qub7dtqzi.cloudfront.net/latest/Windows/AWSSchemaConversionTool.msi"
                    $sctInstallerPath = "C:\\Temp\\AWSSchemaConversionTool.msi"
                    Invoke-WebRequest -Uri $sctInstallerUrl -OutFile $sctInstallerPath
                    Start-Process msiexec.exe -ArgumentList "/i $sctInstallerPath /quiet /norestart" -Wait
                    </powershell>
EOF

  /*
  root_block_device {
    volume_size = 8
    volume_type = "gp3"
    #　EC2終了時に削除
    delete_on_termination = true
    #　EBSのNameタグ
    tags = {
      Name = "inomaso-dev-ec2-xvda"
    }
  }
  */
  
  tags = {
    Name = "SCT on Windows"
  }
}