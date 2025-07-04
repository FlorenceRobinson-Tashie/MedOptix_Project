# 📚 Project Documentation Overview

Welcome to the documentation directory for the MedOptix project.

---

## 📂 Contents:

- **original_env_setup_guide.md**  
  A detailed, beginner-friendly guide to setting up your local development environment, including virtual environment creation, execution policies, and dependency installation.

- **final_readme_template.md**  
  The final clean, structured template for the project’s primary `README.md`, including project overview, features, tech stack, and project structure.

---

## 📜 📦 Scripts:

### `scripts/add_gitkeeps.ps1`

**Description:**  
A PowerShell script that automatically adds `.gitkeep` files to all empty directories within the project. This ensures Git tracks those folders, keeping the project structure intact even before actual data or files are added.

**Usage:**  
From your project root, run:

```powershell
.\scripts\add_gitkeeps.ps1
