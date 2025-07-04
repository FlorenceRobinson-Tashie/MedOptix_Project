# ⚙️ VS Code Environment Configuration Guide — MedOptix Project

A simple guide to ensure all team members correctly configure VS Code to use the `med_env` virtual environment for running Python scripts and Jupyter notebooks.

---

## 📦 Setting VS Code Python Interpreter to med_env

1️⃣ In VS Code, press `Ctrl + Shift + P` (or `F1`)

2️⃣ Type: `Python: Select Interpreter`

3️⃣ From the list, choose:


.\med_env\Scripts\python.exe


> ✅ If not listed:
- Click **Enter interpreter path**
- Browse to:

C:\Florence Personal\Documents\Data Science Projects\Amdari Accelerate Internship Projects Folder\MedOptix_Project_Folder\med_env\Scripts\python.exe

- Select it.

---

## 📓 Configure Jupyter Kernel for med_env

To make Jupyter Notebooks inside VS Code run using the same `med_env` environment:

1️⃣ Open your VS Code terminal (while `med_env` is active)

2️⃣ Run:
```bash
python -m ipykernel install --user --name=med_env --display-name "Python (med_env)"

3️⃣ In your Jupyter Notebook:

Click the top-right Kernel selection

Choose Python (med_env)

✅ All notebook cells now run inside your med_env environment.

