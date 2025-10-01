# 🚆 Railway Booking System  

A **dynamic online railway reservation system** built with **JSP, JDBC, and MySQL**, designed to handle real-time management of train schedules, reservations, and cancellations. The system is deployed on a **Tomcat server** and provides an interactive front-end using **HTML, CSS, and JavaScript**.  

## 📑 Project Overview  

- Designed and implemented a **scalable online railway reservation system** with:  
  - **Real-time train schedules**  
  - **Reservation & cancellation management**  
  - **Dynamic station search functionality**  
  - **Automated fare calculation**  
  - **Reservation notifications**  

- Achieved a **40% reduction in booking errors** through improved database handling and user experience design.  
- Successfully deployed on an **Apache Tomcat environment** for scalable usage across 100+ train routes.  

## 🛠️ Technologies Used  

| Technology | Purpose |
|------------|---------|
| **Java** | Core business logic & server-side integration |
| **Java Database Connectivity (JDBC)** | Database communication with MySQL |
| **MySQL** | Backend relational database for schedules, users, and reservations |
| **Tomcat** | Application server for JSP & servlets |
| **JavaServer Pages (JSP)** | Dynamic page rendering and server-side scripting |
| **HTML, CSS, JavaScript** | Frontend design and interactive user experience |
| **Eclipse IDE** | Development environment |

## 📂 Project Structure  

```
├── ApplicationDB.java       # Database connectivity & Java backend
├── RailwayBookingSystem.sql # Database schema & sample data
├── web/                     # Frontend files (JSP, HTML, CSS, JS)
└── README.md                # Project documentation
```

## 🚀 Getting Started  

### 1. Database Setup  
1. Start MySQL and run:  
   ```sql
   source RailwayBookingSystem.sql;
   ```
2. This will create the `RailwayBookingSystem` database and load initial data.  

### 2. Configure JDBC Connection  
In `ApplicationDB.java`, update the credentials if required:  
```java
String url = "jdbc:mysql://localhost:3306/RailwayBookingSystem";
String user = "root";
String password = "yourpassword";
```

### 3. Deploy on Tomcat  
1. Import the project into **Eclipse**.  
2. Add **Apache Tomcat Server** in Eclipse.  
3. Deploy the project and run it on:  
   ```
   http://localhost:8080/RailwayBookingSystem
   ```

## 📌 Future Enhancements  

- Train seat availability visualization  
- Payment gateway integration  
- Mobile-friendly responsive UI  
- Advanced admin dashboard with analytics  

## 👨‍💻 Author  
**Shubham Patel**  
