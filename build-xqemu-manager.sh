git clone -q --branch=master https://github.com/xqemu/xqemu-manager.git
cd xqemu-manager
python -c "import struct; print(struct.calcsize('P') * 8)"
sudo apt install python3-pip
python3 -m pip install --upgrade pip
pip install PyQt5 PyInstaller
~/.local/bin/pyinstaller --onefile  --windowed --name xqemu-manager main.py
cp *.ui dist/
cd dist
sudo apt install libxcb-xinerama0
./xqemu-manager
