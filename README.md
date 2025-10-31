# 🚀 Terraform + AWS EC2 + S3 Static Website Hosting

This project deploys:
- A **static website** hosted on **S3**
- An **EC2 instance** with Apache web server
- A **Terraform remote backend** using S3 + DynamoDB

---

## 📂 Folder Structure

```
terraform-aws-static-website/
│
├── backend-setup/
│   ├── backend-setup.tf
│   └── provider.tf
│
├── main/
│   ├── backend.tf
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── s3/
│   │   ├── index.html
│   │   └── error.html
│   └── ec2/
│       └── userdata.sh
│
└── README.md
```

---

## 🧱 Step 1: Setup Terraform Backend

```bash
cd backend-setup
terraform init
terraform apply -auto-approve
```

---

## 🌍 Step 2: Deploy Main Infrastructure

```bash
cd ../main
terraform init
terraform plan
terraform apply -auto-approve
```

---

## 🧹 Step 3: Destroy

```bash
terraform destroy -auto-approve
```

---

## ✅ Outputs

```
s3_website_url = http://khushal-static-website-demo.s3-website-us-east-1.amazonaws.com
ec2_public_ip  = 3.95.14.22
```

Visit your S3 Website URL in the browser to see your live static site.

---

✅ **This project is now fully complete and production-ready.**
