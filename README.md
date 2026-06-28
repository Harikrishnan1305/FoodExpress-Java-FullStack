# 🍔 FoodExpress - Full-Stack Java Food Delivery Application

![Java](https://img.shields.io/badge/Java-11%2B-ED8B00?style=for-the-badge&logo=java&logoColor=white)
![Servlets](https://img.shields.io/badge/Java_Servlets-Jakarta-EE2432?style=for-the-badge&logo=jakartaee&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Maven](https://img.shields.io/badge/Apache_Maven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white)
![HTML/CSS/JS](https://img.shields.io/badge/Frontend-HTML_CSS_JS-E34F26?style=for-the-badge)

**FoodExpress** is a robust, end-to-end online food ordering platform inspired by Zomato & Swiggy. Built entirely with core Java EE technologies, this project demonstrates a strong understanding of web architecture, MVC design patterns, session management, and secure database operations.

---

## 🌟 Key Features

*   **Modern User Interface:** A highly responsive, Zomato-inspired landing page built with custom CSS variables, flexbox/grid layouts, and glassmorphism UI elements.
*   **Secure Authentication:** User registration and login system with encrypted password handling and secure session management.
*   **Dynamic Catalog:** Browse 20+ restaurants, view detailed menus, and filter by cuisine (South Indian, Biryani, Chettinad, etc.).
*   **Smart Cart System:** Session-based shopping cart allowing users to add/remove items and calculate real-time totals.
*   **Checkout & Order History:** Complete order processing pipeline. Users can place orders and view their complete order history with timestamps and status tracking.
*   **Robust Backend:** Built with Java Servlets, JSP (JavaServer Pages), and HikariCP for high-performance database connection pooling.
*   **Security Built-in:** Implemented protections against XSS (Cross-Site Scripting) and SQL Injection using Prepared Statements.

## 🛠️ Tech Stack & Architecture

### Backend
*   **Language:** Java (JDK 11+)
*   **Framework:** Java Servlets & JSP (Jakarta EE)
*   **Build Tool:** Apache Maven
*   **Database:** MySQL 8.0
*   **Connection Pooling:** HikariCP
*   **Logging:** SLF4J with Logback

### Frontend
*   **Markup/Styling:** HTML5, CSS3 (Custom Variables, Grid/Flexbox)
*   **Scripting:** Vanilla JavaScript
*   **Templating:** JSTL (JSP Standard Tag Library) and EL (Expression Language)

### Architecture Pattern (MVC)
The application strictly follows the **Model-View-Controller (MVC)** design pattern:
1.  **Model:** Data Access Objects (DAO), POJO classes (Restaurant, Menu, User, Order).
2.  **View:** JSP files dynamically rendering data passed from controllers.
3.  **Controller:** Java Servlets handling HTTP requests, business logic, and routing.

---

## 🚀 Getting Started

Follow these steps to get the project running on your local machine.

### Prerequisites
*   Java Development Kit (JDK 11 or higher)
*   Apache Maven
*   MySQL Server (8.0+)
*   Apache Tomcat (9.0+)

### 1. Database Setup
1. Log into your MySQL server.
2. Execute the schema script provided in the `sql` directory:
   ```bash
   mysql -u root -p < sql/schema.sql
   ```
   *(This creates the `food_ordering_db` database and populates it with 20 restaurants and menu items).*

### 2. Configure Credentials
1. Navigate to `src/main/resources/`.
2. Copy `db.properties.example` to `db.properties`.
3. Open `db.properties` and add your MySQL root password:
   ```properties
   db.password=YOUR_MYSQL_PASSWORD_HERE
   ```
   *Note: `db.properties` is git-ignored to prevent credential leaks.*

### 3. Build & Run
The project uses the Cargo Maven plugin for embedded Tomcat execution.
Open your terminal in the project root and run:
```bash
mvn clean package cargo:run
```
*(If you are on Windows, you can also use the included `run.bat` script to cleanly kill old processes and restart).*

### 4. Access the Application
Open your browser and navigate to:
**[http://localhost:8080/FoodOrderingSystem/](http://localhost:8080/FoodOrderingSystem/)**

---

## 🔒 Security Measures Implemented
*   **Environment Variables:** Sensitive DB credentials loaded via `.properties` files and environment variable fallbacks, never hardcoded.
*   **SQL Injection Prevention:** 100% usage of `PreparedStatement` in DAO layers.
*   **XSS Protection:** Output encoding utilized in JSTL `<c:out>` tags across all Views.
*   **Resource Management:** Explicit closing of ResultSets and Statements in `finally` blocks, supplemented by HikariCP connection pooling to prevent leaks.

## 👨‍💻 Author
**Krishnan**
Full-Stack Java Developer passionate about building scalable, secure web applications.

---
*Feel free to star ⭐ this repository if you found it useful or inspiring!*
