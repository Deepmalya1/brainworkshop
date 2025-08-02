echo "🧠 Building BrainWorkshop with Nuitka..."

# Install Nuitka if not installed
pip install --upgrade nuitka

# Build the .exe with Nuitka (one line)
nuitka --standalone --onefile --windows-disable-console brainworkshop.py