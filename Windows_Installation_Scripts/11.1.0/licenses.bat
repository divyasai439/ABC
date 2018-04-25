@ECHO OFF
set licensesfolder=C:\Users\divya\Desktop\licenses
set FioranoHome=C:\Fiorano\11.1.0
set jarsfolder=D:\Adapters Team_\jars\installerjars
cd %licensesfolder%
svn update
copy *11.lic %FioranoHome%\licenses
mkdir %FioranoHome%\extlib\jars
D:
cd %jarsfolder%
copy *.* %FioranoHome%\extlib\jars