set PATHTOPROJECT=\XDocs_Out
set OUTPUTPATH=\XDocs_Out2
set FILENAME=Flash_Interface_Messages.ditamap
set DITAMAPNAME=Flash_Interface_Messages.ditamap

cd ..\

set WORKINGDIR=%CD%

cd %WORKINGDIR%\batchfiles

rd /s /q %WORKINGDIR%\out\

mkdir %WORKINGDIR%\out\

rd /s /q %WORKINGDIR%\in\

mkdir %WORKINGDIR%\in\

#xcopy %WORKINGDIR%\%PATHTOPROJECT% %WORKINGDIR%\out\ /S /Y

java -cp %WORKINGDIR%/depend/tools/saxon9/saxon9he.jar;%WORKINGDIR%\depend\tools\Saxon9\xml-commons-resolver-1.2\resolver.jar ^
-Dxml.catalog.files=..\depend\tools\Saxon9\catalog.xml ^
net.sf.saxon.Transform ^
-r:org.apache.xml.resolver.tools.CatalogResolver ^
-x:org.apache.xml.resolver.tools.ResolvingXMLReader ^
-y:org.apache.xml.resolver.tools.ResolvingXMLReader ^
-o:%WORKINGDIR%\in\test.xml ^
-s:%WORKINGDIR%\%PATHTOPROJECT%\%FILENAME% ^
-xsl:%WORKINGDIR%\depend\custom\traverse_ditamaps.xsl ^
STARTING-DIR="%WORKINGDIR%%PATHTOPROJECT%/" OUTPUT-DIR="%WORKINGDIR%%OUTPUTPATH%/" FILENAME="%FILENAME%" 

java -cp %WORKINGDIR%/depend/tools/saxon9/saxon9he.jar;%WORKINGDIR%\depend\tools\Saxon9\xml-commons-resolver-1.2\resolver.jar ^
-Dxml.catalog.files=..\depend\tools\Saxon9\catalog.xml ^
net.sf.saxon.Transform ^
-r:org.apache.xml.resolver.tools.CatalogResolver ^
-x:org.apache.xml.resolver.tools.ResolvingXMLReader ^
-y:org.apache.xml.resolver.tools.ResolvingXMLReader ^
-o:%WORKINGDIR%\in\test.xml ^
-s:%WORKINGDIR%\%PATHTOPROJECT%\%FILENAME% ^
-xsl:%WORKINGDIR%\depend\custom\generate_frmwrComponent.xsl ^
STARTING-DIR="%WORKINGDIR%%PATHTOPROJECT%/" OUTPUT-DIR="%WORKINGDIR%%OUTPUTPATH%/" FILENAME="%FILENAME%" 

java -cp %WORKINGDIR%/depend/tools/saxon9/saxon9he.jar;%WORKINGDIR%\depend\tools\Saxon9\xml-commons-resolver-1.2\resolver.jar ^
-Dxml.catalog.files=..\depend\tools\Saxon9\catalog.xml ^
net.sf.saxon.Transform ^
-r:org.apache.xml.resolver.tools.CatalogResolver ^
-x:org.apache.xml.resolver.tools.ResolvingXMLReader ^
-y:org.apache.xml.resolver.tools.ResolvingXMLReader ^
-o:%WORKINGDIR%\in\test.xml ^
-s:%WORKINGDIR%\%PATHTOPROJECT%\%FILENAME% ^
-xsl:%WORKINGDIR%\depend\custom\generate_frmwrStruct.xsl ^
STARTING-DIR="%WORKINGDIR%%PATHTOPROJECT%/" OUTPUT-DIR="%WORKINGDIR%%OUTPUTPATH%/" FILENAME="%FILENAME%" 

cd %WORKINGDIR%\batchfiles