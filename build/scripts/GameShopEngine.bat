@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  GameShopEngine startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and GAME_SHOP_ENGINE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\GameShopEngine-1.0.jar;%APP_HOME%\lib\jme3-vr-3.6.1-stable.jar;%APP_HOME%\lib\ShaderBlowEx--SNAPSHOT.jar;%APP_HOME%\lib\jme3-desktop-3.6.1-stable.jar;%APP_HOME%\lib\jme3-awt-dialogs-3.6.1-stable.jar;%APP_HOME%\lib\jme3-lwjgl3-3.6.1-stable.jar;%APP_HOME%\lib\jme3-jogg-3.6.1-stable.jar;%APP_HOME%\lib\jme3-plugins-3.6.1-stable.jar;%APP_HOME%\lib\sio2-1.8.0.jar;%APP_HOME%\lib\lemur-1.16.0.jar;%APP_HOME%\lib\Minie-8.2.0.jar;%APP_HOME%\lib\particlemonkey-1.1.0.jar;%APP_HOME%\lib\jme3-effects-3.6.1-stable.jar;%APP_HOME%\lib\jme3-terrain-3.6.1-stable.jar;%APP_HOME%\lib\Heart-9.1.0.jar;%APP_HOME%\lib\sim-ethereal-1.8.0.jar;%APP_HOME%\lib\sim-math-1.6.0.jar;%APP_HOME%\lib\zay-es-net-1.5.2.jar;%APP_HOME%\lib\jme3-networking-3.3.0-stable.jar;%APP_HOME%\lib\jme3-core-3.6.1-stable.jar;%APP_HOME%\lib\jme3-testdata-3.6.1-stable.jar;%APP_HOME%\lib\zay-es-1.5.0.jar;%APP_HOME%\lib\assets.jar;%APP_HOME%\lib\lwjgl-glfw-3.3.2.jar;%APP_HOME%\lib\lwjgl-glfw-3.3.2-natives-windows.jar;%APP_HOME%\lib\lwjgl-glfw-3.3.2-natives-windows-x86.jar;%APP_HOME%\lib\lwjgl-glfw-3.3.2-natives-linux.jar;%APP_HOME%\lib\lwjgl-glfw-3.3.2-natives-linux-arm32.jar;%APP_HOME%\lib\lwjgl-glfw-3.3.2-natives-linux-arm64.jar;%APP_HOME%\lib\lwjgl-glfw-3.3.2-natives-macos.jar;%APP_HOME%\lib\lwjgl-glfw-3.3.2-natives-macos-arm64.jar;%APP_HOME%\lib\lwjgl-jemalloc-3.3.2.jar;%APP_HOME%\lib\lwjgl-jemalloc-3.3.2-natives-windows.jar;%APP_HOME%\lib\lwjgl-jemalloc-3.3.2-natives-windows-x86.jar;%APP_HOME%\lib\lwjgl-jemalloc-3.3.2-natives-linux.jar;%APP_HOME%\lib\lwjgl-jemalloc-3.3.2-natives-linux-arm32.jar;%APP_HOME%\lib\lwjgl-jemalloc-3.3.2-natives-linux-arm64.jar;%APP_HOME%\lib\lwjgl-jemalloc-3.3.2-natives-macos.jar;%APP_HOME%\lib\lwjgl-jemalloc-3.3.2-natives-macos-arm64.jar;%APP_HOME%\lib\lwjgl-openal-3.3.2.jar;%APP_HOME%\lib\lwjgl-openal-3.3.2-natives-windows.jar;%APP_HOME%\lib\lwjgl-openal-3.3.2-natives-windows-x86.jar;%APP_HOME%\lib\lwjgl-openal-3.3.2-natives-linux.jar;%APP_HOME%\lib\lwjgl-openal-3.3.2-natives-linux-arm32.jar;%APP_HOME%\lib\lwjgl-openal-3.3.2-natives-linux-arm64.jar;%APP_HOME%\lib\lwjgl-openal-3.3.2-natives-macos.jar;%APP_HOME%\lib\lwjgl-openal-3.3.2-natives-macos-arm64.jar;%APP_HOME%\lib\lwjgl-opencl-3.3.2.jar;%APP_HOME%\lib\lwjgl-opengl-3.3.2.jar;%APP_HOME%\lib\lwjgl-opengl-3.3.2-natives-windows.jar;%APP_HOME%\lib\lwjgl-opengl-3.3.2-natives-windows-x86.jar;%APP_HOME%\lib\lwjgl-opengl-3.3.2-natives-linux.jar;%APP_HOME%\lib\lwjgl-opengl-3.3.2-natives-linux-arm32.jar;%APP_HOME%\lib\lwjgl-opengl-3.3.2-natives-linux-arm64.jar;%APP_HOME%\lib\lwjgl-opengl-3.3.2-natives-macos.jar;%APP_HOME%\lib\lwjgl-opengl-3.3.2-natives-macos-arm64.jar;%APP_HOME%\lib\lwjgl-openvr-3.3.2-natives-linux.jar;%APP_HOME%\lib\lwjgl-openvr-3.3.2-natives-macos.jar;%APP_HOME%\lib\lwjgl-openvr-3.3.2.jar;%APP_HOME%\lib\lwjgl-openvr-3.3.2-natives-windows.jar;%APP_HOME%\lib\lwjgl-ovr-3.3.2.jar;%APP_HOME%\lib\lwjgl-ovr-3.3.2-natives-windows.jar;%APP_HOME%\lib\lwjgl-3.3.2.jar;%APP_HOME%\lib\lwjgl-3.3.2-natives-windows.jar;%APP_HOME%\lib\lwjgl-3.3.2-natives-windows-x86.jar;%APP_HOME%\lib\lwjgl-3.3.2-natives-linux.jar;%APP_HOME%\lib\lwjgl-3.3.2-natives-linux-arm32.jar;%APP_HOME%\lib\lwjgl-3.3.2-natives-linux-arm64.jar;%APP_HOME%\lib\lwjgl-3.3.2-natives-macos.jar;%APP_HOME%\lib\lwjgl-3.3.2-natives-macos-arm64.jar;%APP_HOME%\lib\j-ogg-vorbis-1.0.3.jar;%APP_HOME%\lib\gson-2.9.1.jar;%APP_HOME%\lib\guava-19.0.jar;%APP_HOME%\lib\slf4j-api-1.7.32.jar;%APP_HOME%\lib\jnaerator-runtime-0.12.jar;%APP_HOME%\lib\jna-5.10.0.jar;%APP_HOME%\lib\groovy-all-2.4.5.jar;%APP_HOME%\lib\log4j-core-2.15.0.jar;%APP_HOME%\lib\log4j-api-2.15.0.jar;%APP_HOME%\lib\ochafik-util-0.12.jar


@rem Execute GameShopEngine
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GAME_SHOP_ENGINE_OPTS%  -classpath "%CLASSPATH%"  %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable GAME_SHOP_ENGINE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%GAME_SHOP_ENGINE_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega