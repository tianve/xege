@echo off
call setenv

set COMPILER=


"%VC10PATH%\..\Common7\IDE\devenv.com" "graphicstest/graphicstest10.vcxproj" /Rebuild "Debug|Win32"
if %ErrorLevel% == 0 (
	rem SUCCESS
) else (
	set COMPILER=VC2010 debug
	goto end1
)
"%VC10PATH%\..\Common7\IDE\devenv.com" "graphicstest/graphicstest10.vcxproj" /Rebuild "Release|Win32"
if %ErrorLevel% == 0 (
	rem SUCCESS
) else (
	set COMPILER=VC2010 release
	goto end1
)
"%VC10PATH%\..\Common7\IDE\devenv.com" "graphicstest/graphicstest10.vcxproj" /Rebuild "Debug|x64"
if %ErrorLevel% == 0 (
	rem SUCCESS
) else (
	set COMPILER=VC2010 debug x64
	goto end1
)
"%VC10PATH%\..\Common7\IDE\devenv.com" "graphicstest/graphicstest10.vcxproj" /Rebuild "Release|x64"
if %ErrorLevel% == 0 (
	rem SUCCESS
) else (
	set COMPILER=VC2010 release x64
	goto end1
)

goto end2
:end1
echo "%COMPILER% ����ʧ��"
pause
:end2
