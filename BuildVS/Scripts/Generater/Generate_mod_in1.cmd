@echo off

setlocal EnableDelayedExpansion

copy #Template_mod_.vcxproj mod_all_default.vcxproj

FOR /F "tokens=* delims=\ " %%A IN (
	List.txt
) DO (

echo %%~nA

echo    ^<ClCompile Include="$(root)\%%A" /^>>>mod_all_default.vcxproj
)
echo  ^</ItemGroup^>>>mod_all_default.vcxproj
echo.>>mod_all_default.vcxproj
echo  ^<Import Project="$(VCTargetsPath)\Microsoft.Cpp.targets" /^>>>mod_all_default.vcxproj
echo  ^<ImportGroup Label="ExtensionTargets"^>>>mod_all_default.vcxproj
echo  ^</ImportGroup^>>>mod_all_default.vcxproj
echo ^</Project^>>>mod_all_default.vcxproj


