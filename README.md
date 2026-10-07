# AcxiomCRM

A fully functional, role-based Customer Relationship Management (CRM) application built with ASP.NET Core MVC, Entity Framework Core, and SQLite.

## Features Included
* **Secure Authentication:** ASP.NET Core Identity with password hashing, account lockout policies, and strict role-based authorization.
* **Interactive Dashboard:** Live KPI cards and Chart.js visualizations (Lead Status and Opportunity Pipeline).
* **CRM Modules:** Full backend logic and models for Customers, Leads, Opportunities, Follow-Ups, and Activities.
* **REST API:** Secured API endpoints for external integrations.
* **Validation:** Robust client-side and server-side validation ensuring data integrity (e.g., unique emails, positive opportunity amounts).

## How to Run the Project
1. Ensure you have the [.NET 8 SDK](https://dotnet.microsoft.com/download) installed.
2. Open a terminal/command prompt in the `AcxiomCRM` folder.
3. Run the following command:
   ```bash
   dotnet run
   ```
4. Open your web browser and navigate to the `localhost` URL provided in the terminal (usually `http://localhost:5110`).
5. *Note: The SQLite database will automatically generate and seed itself on startup.*

## Demo Credentials
The database automatically seeds itself with demo data. Use the following credentials to log in and test the role-based views:

**Admin Account (Full Access)**
* **Email:** `admin@acxiom.com`
* **Password:** `Admin@123`

**Manager Account**
* **Email:** `manager@acxiom.com`
* **Password:** `Manager@123`

**Sales Executive Account**
* **Email:** `sales1@acxiom.com`
* **Password:** `Sales@123`
