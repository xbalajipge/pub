# simple power shell script to be sourced
echo "powershell script to execute"
echo "curl -skLq <url-to-this-file> | powershell.exe"
echo "curl -skLq https://raw.githubusercontent.com/xbalajipge/pub/main/init.ps1 | powershell.exe"

$env:AWS_DEFAULT_PROFILE = 'appstream_machine_role'

echo "list directory"
aws s3 ls s3://geomartcloud-installer/esri/arcgis_pro_2_8/

echo "list executable"
aws s3 ls s3://geomartcloud-installer/esri/arcgis_pro_2_8/ArcGISPro_28_177688.exe

echo "list patch"
aws s3 ls s3://geomartcloud-installer/esri/arcgis_pro_2_8/patches/ArcGIS_Pro_281_177644.msp


echo "copying from s3 bucket"
aws s3 cp s3://geomartcloud-installer/esri/arcgis_pro_2_8/ArcGISPro_28_177688.exe .
aws s3 cp s3://geomartcloud-installer/esri/arcgis_pro_2_8/patches/ArcGIS_Pro_281_177644.msp .

ls
