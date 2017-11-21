# OSX
echo '-----------------------';
echo '__Starting OSX Build__';
electron-packager . --overwrite --platform=darwin --arch=x64 --icon=assets/icons/mac/icon.icns --prune=true --out=OSX-Builds
echo '__OSX Build COMPLETE__';
echo '-----------------------';

echo '-----------------------';
echo '__Starting Windows Build__';
# Windows
electron-packager . electron-tutorial-app --overwrite --asar=true --platform=win32 --arch=ia32 --icon=assets/icons/win/icon.ico --prune=true --out=Windows-Builds --version-string.CompanyName=CE --version-string.FileDescription=CE --version-string.ProductName="Instagram Desktop"
echo '__Windows Build COMPLETE__';
echo '-----------------------';

echo '-----------------------';
echo '__Starting Linux Build__';
# Linux
electron-packager . electron-tutorial-app --overwrite --asar=true --platform=linux --arch=x64 --icon=assets/icons/png/1024x1024.png --prune=true --out=Linux-Builds
echo '__Linux Build COMPLETE__';