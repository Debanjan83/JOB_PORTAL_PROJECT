# 🧑‍💼 Job Portal Project

A full-stack web application developed using **Java (Servlet, JSP)** and **MySQL**, designed to simplify job searching and recruitment for **clients** and **admin users**. The portal allows companies to post job listings, and users to search, view, and apply for jobs.

## 🌐 Live Features

- **Role-Based Login System**
  - Admin
  - Company
  - Client (Job Seeker)

- **Admin Capabilities**
  - Manage companies
  - Manage job postings

- **Client Capabilities**
  - Register/Login
  - Search for jobs
  - Apply for jobs
  - View applied jobs

- **Company Capabilities**
  - Register/Login
  - Post new jobs
  - View job applications

---

## 🏗️ Tech Stack

| Layer         | Technology Used                    |
|--------------|-------------------------------------|
| Frontend     | HTML, CSS, Bootstrap, JSP           |
| Backend      | Java Servlet, JSP                   |
| Database     | MySQL                               |
| Architecture | MVC (Model-View-Controller)         |

---

## 📁 Project Structure

JOB_PORTAL_PROJECT/
│
├── src/
│ ├── com.dao/ # DAO classes for DB operations
│ ├── com.db/ # Database connection utility
│ ├── com.entity/ # DTOs / Entity classes
│
├── WebContent/
│ ├── admin/ # Admin dashboard and actions
│ ├── company/ # Company dashboard and actions
│ ├── client/ # Client dashboard and actions
│ ├── all JSP pages # Login, Registration, Job Listing, etc.
│ ├── css/ # Custom CSS (if any)
│
├── database/
│ └── jobportal.sql # SQL schema & sample data
│
└── README.md


---

## 🧑‍💻 How to Run

### Prerequisites

- JDK 8 or higher
- Apache Tomcat 8.5+
- MySQL Server
- Eclipse / IntelliJ / NetBeans

### Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Debanjan83/JOB_PORTAL_PROJECT.git

---

## 🧑‍💻 How to Run

### Prerequisites

- JDK 8 or higher
- Apache Tomcat 8.5+
- MySQL Server
- Eclipse / IntelliJ / NetBeans

### Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Debanjan83/JOB_PORTAL_PROJECT.git

2. Import into Eclipse

Go to File > Import > Dynamic Web Project

Select the cloned folder

3. Setup Database

Create a database named jobportal

Import the jobportal.sql file (found inside the project) into MySQL

4. Configure DB Connection

Open DBConnect.java (in com.db)

Update username/password as per your MySQL setup

5. Deploy the Project

Run on Apache Tomcat Server

🧾 Database Tables
register – Stores client and company login data with role

company – Company profile and data

job – Job listings

application – Job applications submitted by clients

📌 Key Highlights
Secure login with session tracking

Job application tracking per user

Role-based JSP navigation

Modular DAO and DTO structure

Clean MVC-based code organization

📸 Screenshots
<details> <summary>🔓 Login Page</summary> <img src="https://via.placeholder.com/700x400?text=Login+Page+Screenshot" alt="Login Page"> </details> <details> <summary>🏢 Admin Dashboard</summary> <img src="https://via.placeholder.com/700x400?text=Admin+Dashboard+Screenshot" alt="Admin Dashboard"> </details> <details> <summary>📄 Job Listings</summary> <img src="https://via.placeholder.com/700x400?text=Job+Listings+Screenshot" alt="Job Listings"> </details>
You can upload your own screenshots in the assets/ folder and link them above.

🤝 Contributing
Contributions are welcome! Feel free to fork this repo and submit pull requests.

📃 License
This project is licensed under the MIT License - see the LICENSE file for details.

🙋‍♂️ Author
Debanjan Pal
📧 debanjanpal79611@gmail.com
🌐 GitHub Profile
