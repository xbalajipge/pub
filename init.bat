REM simple power shell script to be sourced
echo "powershell script to execute"
echo "curl -skLq <url-to-this-file> | powershell.exe"
echo "curl -skLq https://raw.githubusercontent.com/xbalajipge/pub/main/init.bat | cmd.exe"

set AWS_DEFAULT_PROFILE=appstream_machine_role
set HOME=C:\Users\ImageBuilderAdmin
set USR_DNLD=%HOME%\Downloads
set ARCGIS_DNLD=%HOME%\ArcGIS_Download

REM download 7zip
curl -skLq https://www.7-zip.org/a/7z1900-x64.exe -o %HOME%\7zip.exe
start /wait %HOME%\7zip.exe /S

REM echo "list directory"
REM aws s3 ls s3://geomartcloud-installer/esri/arcgis_pro_2_8/
REM echo "list executable"
REM aws s3 ls s3://geomartcloud-installer/esri/arcgis_pro_2_8/ArcGISPro_28_177688.exe
REM echo "list patch"
REM aws s3 ls s3://geomartcloud-installer/esri/arcgis_pro_2_8/patches/ArcGIS_Pro_281_177644.msp


REM create a directory
mkdir %ARCGIS_DNLD%

echo "copying from s3 bucket"
REM aws s3 cp s3://geomartcloud-installer/esri/arcgis_pro_2_8/ArcGISPro_28_177688.exe .
REM aws s3 cp s3://geomartcloud-installer/esri/arcgis_pro_2_8/patches/ArcGIS_Pro_281_177644.msp .

aws s3 cp s3://geomartcloud-installer/esri/arcgis_pro_2_8/ArcGISPro_28_177688.exe %ARCGIS_DNLD%
aws s3 cp s3://geomartcloud-installer/esri/arcgis_pro_2_8/patches/ArcGIS_Pro_281_177644.msp %ARCGIS_DNLD%

dir %ARCGIS_DNLD%
