git clone -q --branch=master https://github.com/xqemu/xqemu-manager.git
cd xqemu-manager
python -c "import struct; print(struct.calcsize('P') * 8)"
python3 -m pip install --upgrade pip
pip install PyQt5 PyInstaller
../.local/bin/pyinstaller --onefile  --windowed --name xqemu-manager main.py
cp *.ui dist/
cd dist
./xqemu-manager
