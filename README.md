# 🚀 Terraform AWS EC2 Project (Infrastructure as Code)

This project demonstrates how to provision and configure an AWS EC2 instance using **Terraform** following Infrastructure as Code (IaC) principles.

The setup includes automated server provisioning, security configuration, and application deployment using `user_data`.

---

## 🏗️ Architecture
        ┌─────────────────────────────┐
        │        Terraform CLI        │
        │ (Infrastructure as Code)    │
        └────────────┬────────────────┘
                     │
                     ▼
        ┌─────────────────────────────┐
        │        AWS Cloud            │
        └─────────────────────────────┘
                     │
    ┌────────────────┴────────────────┐
    │                                 │
    ▼                                 ▼
    ┌──────────────────┐ ┌────────────────────┐
    │ Security Group   │ │ Key Pair           │
    │  (SSH + HTTP)    │ │ (SSH Access)       │
    └────────┬─────────┘ └────────┬───────────┘
             │                    │
             ────┬────────────────┘
            ┌────────────────────┐
            │ EC2 Instance       │
            │ (Ubuntu Linux)     │
            └────────┬───────────┘
            ┌─────────────────────┐
            │ user_data script │  │
            └─────────────────────┘
---

## ⚙️ Features

- Provision EC2 instance using Terraform  
- Configure Security Group (SSH + HTTP access)  
- Use SSH Key Pair for secure login  
- Automate server setup using `user_data`  
- Install and run Nginx web server  
- Output public IP after deployment  
- Remote state management using **S3 backend**  

---

## 🛠️ Tech Stack

- Terraform  
- AWS (EC2, Security Groups, S3)  
- Linux (Ubuntu)  
- Shell scripting  

---

##  Project Structure


terraform-aws/
│── main.tf
│── variables.tf
│── outputs.tf
│── terraform.tfvars
│── setup.sh
│── README.md


---

##  Steps to Run

### 1. Clone the repository

```bash
git clone https://github.com/shashank-naik123/terraform-aws.git
cd terraform-aws

2. Configure AWS CLI
aws configure

Provide:

Access Key
Secret Key
Region

3. Initialize Terraform
terraform init

4. Preview the infrastructure
terraform plan

5. Create resources
terraform apply

Type yes when prompted.

6. Access the application

After deployment, Terraform will output the public IP:

http://<public-ip>

You should see:

Terraform Provisioned Server
📤 Outputs
EC2 Public IP
🔐 Security
SSH access configured via Security Group
Authentication using private key (.pem)
S3 backend used for remote state management
💡 Challenges Faced
🔴 SSH Authentication Failure

Initially faced this error:

SSH authentication failed
✅ Solution:
Switched from password-based authentication ❌
Used private key (.pem) for SSH authentication ✅

👉 Learned how Terraform establishes remote connections and importance of secure authentication.

📈 Key Learnings
Basics of Infrastructure as Code (IaC)
Terraform resource creation and dependency management
Importance of remote state (S3 backend)
Debugging real-world provisioning issues
Using user_data instead of provisioners
🚀 Future Improvements
Integrate Jenkins for CI/CD pipeline
Use Terraform modules for scalability
Create custom VPC and networking setup
Implement state locking using DynamoDB
🤝 Contributing

Feel free to fork this repo and improve it!

⭐ Acknowledgement

This project is part of my learning journey towards becoming a DevOps / Cloud Engineer.