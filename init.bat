# simple power shell script to be sourced
echo "powershell script to execute"
echo "curl -skLq <url-to-this-file> | powershell.exe"
echo "curl -skLq https://raw.githubusercontent.com/xbalajipge/pub/main/init.bat | cmd.exe"

set AWS_DEFAULT_PROFILE=appstream_machine_role
set HOME=C:\Users\ImageBuilderAdmin
set USR_DNLD=%HOME%\Downloads
set ARCGIS_DNLD=%HOME%\ArcGIS_Download

# download 7zip
curl -skLq https://www.7-zip.org/a/7z1900-x64.exe -o %HOME%\7zip.exe
start /wait %HOME%\7zip.exe /S

#echo "list directory"
#aws s3 ls s3://geomartcloud-installer/esri/arcgis_pro_2_8/
#echo "list executable"
#aws s3 ls s3://geomartcloud-installer/esri/arcgis_pro_2_8/ArcGISPro_28_177688.exe
#echo "list patch"
#aws s3 ls s3://geomartcloud-installer/esri/arcgis_pro_2_8/patches/ArcGIS_Pro_281_177644.msp


# create a directory
mkdir %ARCGIS_DNLD_DIR%
echo "copying from s3 bucket"
#aws s3 cp s3://geomartcloud-installer/esri/arcgis_pro_2_8/ArcGISPro_28_177688.exe .
#aws s3 cp s3://geomartcloud-installer/esri/arcgis_pro_2_8/patches/ArcGIS_Pro_281_177644.msp .

aws s3 cp s3://geomartcloud-installer/esri/arcgis_pro_2_8/ArcGISPro_28_177688.exe %ARCGIS_DNLD_DIR%
aws s3 cp s3://geomartcloud-installer/esri/arcgis_pro_2_8/patches/ArcGIS_Pro_281_177644.msp %ARCGIS_DNLD_DIR%

ls %ARCGIS_DNLD_DIR%
