#!/bin/bash
# User data script for EC2 instances

# Update system
yum update -y

# Install web server
yum install -y httpd
systemctl start httpd
systemctl enable httpd

# Create index.html
cat > /var/www/html/index.html <<EOF
<html>
<head>
    <title>ASG Application</title>
</head>
<body>
    <h1>Hello from Auto Scaling Group!</h1>
    <p>Instance ID: $(curl -s http://169.254.169.254/latest/meta-data/instance-id)</p>
    <p>Availability Zone: $(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)</p>
</body>
</html>
EOF

# Install CloudWatch Agent (optional)
yum install -y amazon-cloudwatch-agent