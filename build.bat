@echo off
setlocal

echo ================================
echo 🔧 Creating virtual environment...
echo ================================
python -m venv venv

echo ================================
echo 🧠 Activating virtual environment...
echo ================================
call venv\Scripts\activate

echo ================================
echo 📦 Installing Nuitka in venv...
echo ================================
pip install --upgrade pip
pip install nuitka

echo ================================
echo 🏗️  Building with Nuitka...
echo ================================
nuitka --standalone --onefile --windows-disable-console brainworkshop.py

echo.
echo ✅ Done! Find your EXE in the "dist" folder: dist\brainworkshop.exe
pause
