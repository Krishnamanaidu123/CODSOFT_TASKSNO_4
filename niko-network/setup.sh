
### `setup.sh`
```bash
#!/bin/bash
# NIKO One‑Click Setup – creates virtual environment and symlink

set -e

echo "========================================="
echo "🚀 NIKO NETWORK – Setup"
echo "========================================="

# Create virtual environment
echo "[1/3] Creating Python virtual environment..."
python3 -m venv ~/niko-venv
source ~/niko-venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
deactivate

# Make scripts executable
echo "[2/3] Making scripts executable..."
chmod +x niko niko-run.sh test_niko.sh aliases.sh

# Create reports directory
mkdir -p reports

# Create global symlink
echo "[3/3] Creating symlink in /usr/local/bin..."
sudo ln -sf "$(pwd)/niko-run.sh" /usr/local/bin/niko
sudo chmod +x /usr/local/bin/niko

echo ""
echo "✅ Setup complete!"
echo "You can now run NIKO with: sudo niko"
echo "Or use the quick launcher: ./niko-run.sh"
