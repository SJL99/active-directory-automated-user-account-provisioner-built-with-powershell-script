# <b>Active Directory Automated User Account Provisioner built with PowerShell</b>

<b>Overview</b>
This repository contains a PowerShell automation script designed to mass-provision user accounts in Active Directory. By automating the account creation process, this solution eliminates manual data entry errors, enforces strict naming conventions, and ensures standardized Organizational Unit (OU) placement.

<b>Features</b>
- <b>CSV-Driven Processing:</b> Bulk ingestion of user data (First Name, Last Name, Department, Job Title) from a formatted CSV file.
- <b>Dynamic Naming:</b> Automatically generates <i>SamAccountName</i> using the "First Initial + Last Name" standard (e.g., sconnor).
- <b>Error Handling:</b> Includes validation to prevent duplicate accounts and handle null-value inputs.
- <b>Standardized Metadata:</b> Automatically maps departments and job titles to Active Directory attributes.

<b>Demonstration</b>
The following screenshots demonstrate the environment before and after script execution.

<b>Before Execution:</b>
<img width="2548" height="1323" alt="before" src="https://github.com/user-attachments/assets/f5705ae6-5d62-43ff-b304-9a067ae04e0a" />

<b>After Execution (Successful Provisioning):</b>
<img width="2520" height="1114" alt="after" src="https://github.com/user-attachments/assets/f6001db9-26b0-48aa-83a1-43d2f76db619" />

<b>Usage</b>
1. Ensure your <b>new_hires.csv</b> file is formatted with columns: <i>FirstName, LastName, Department, JobTitle</i>.
2. Open PowerShell as an <b>Administrator</b>.
3. Navigate to the directory containing the script.
4. Execute the script:
   <code>.\gen.ps1</code>


