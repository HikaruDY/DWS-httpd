@echo off

setlocal EnableDelayedExpansion

echo Microsoft Visual Studio Solution File, Format Version 11.00>Apache24_Modules.sln
echo # Visual Studio 2010>>Apache24_Modules.sln


FOR /F "tokens=* delims=\ " %%A IN (
	List.txt
) DO (

echo %%~nA

echo Project^("{00000000-0000-0000-0000-000000000000}"^) = "%%~nA", "Projects_Modules\%%~nA.vcxproj", "{00000000-0000-0000-0000-000000000000}">>Apache24_Modules.sln
echo EndProject>>Apache24_Modules.sln

copy #Template_mod_.vcxproj %%~nA.vcxproj
echo    ^<ClCompile Include="$(root)\%%A" /^>>>%%~nA.vcxproj
echo  ^</ItemGroup^>>>%%~nA.vcxproj
echo.>>%%~nA.vcxproj
echo  ^<ItemGroup^>>>%%~nA.vcxproj
set H=%%A
echo    ^<ClInclude Include="$(root)\!H:.c=.h!" /^>>>%%~nA.vcxproj
echo  ^</ItemGroup^>>>%%~nA.vcxproj
echo.>>%%~nA.vcxproj
echo  ^<Import Project="$(VCTargetsPath)\Microsoft.Cpp.targets" /^>>>%%~nA.vcxproj
echo  ^<ImportGroup Label="ExtensionTargets"^>>>%%~nA.vcxproj
echo  ^</ImportGroup^>>>%%~nA.vcxproj
echo ^</Project^>>>%%~nA.vcxproj

)
