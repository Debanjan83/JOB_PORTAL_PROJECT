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
