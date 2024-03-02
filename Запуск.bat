

@echo off
chcp 65001 > nul
cls

echo            #################################################################################### 
echo            # Добро пожаловать в автоматический установщик программ для автомобилей Lixiang.   #
echo            # Перед началом установки убедитесь, что все необходимые драйвера установлены.     #
echo            # Автор программы не несет ответственности за выход из строя блока телематики.     #
echo            # Все действия выполняются на ваш страх и риск.                                    #
echo            # Программа создана при поддержке telegram-канала "Lixiang Russia" автор ToTSavas. #
echo            ####################################################################################
                                                                                    
echo        +@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+                     =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#
echo         +@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*                     =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#
echo          =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*                     =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%
echo           =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+                     =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%
echo            -@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+                     =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%
echo             -@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+                     =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo              -@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+                     =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo               -@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*                     =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo                -@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*                     =@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo                 -@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%.                    -@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.
echo                  -@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#.
echo                   -@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#::.
echo                    :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-
echo                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-
echo                       %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-
echo                        *@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@:    %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-
echo                         :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@:    %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-
echo                           +@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-    %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-
echo                             *@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-    %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-
echo                               +@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-    %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-
echo                                 .+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-    %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-
echo                                     :=#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-    %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@=

pause
cls
:start
echo Что вы хотите сделать?
echo 1. Установка приложений на 1 экран.
echo 2. Установка приложений на 2 экран.
echo 3. Установка приложений на задний экран.
echo 4. Права для магазинов приложений.
echo 5. Установка LiHUD.
echo 6. Выдача прав для Simple Control .
echo 7. Активация Shizuku.
echo 8. Проверка подключения.
echo 9. Удаление пакетов яндекс .
echo 10. Ручной ввод команд ADB.
echo 11. Поддержать автора,связь с автором.
echo 0. Выйти.

set /p choice=Выберите действие для запуска:

if "%choice%"=="1" (
cd /d C:\ADB\PF

for %%A in (C:\adb\Programs\*.apk) do (
echo Установка приложения: %%~nxA
    adb install --user 0 "%%A"
)

pause
cls
goto :start
)

if "%choice%"=="2" (
cd /d C:\ADB\PF

for %%A in (C:\adb\Programs\*.apk) do (
echo Установка приложения: %%~nxA
    adb install --user 21473 "%%A"
)

pause
cls
goto :start
)

if "%choice%"=="3" (
echo Вы выбрали Пункт 3
cd /d C:\ADB\PF

for %%G in (C:\adb\Programs\*.apk) do (
    echo Установка приложения: %%~nxG
    adb install "%%G"
)
pause
cls
goto :start
)

if "%choice%"=="4" (
echo Вы выбрали Пункт 4
cd C:\ADB\PF
adb shell appops set --user 0 ru.vk.store REQUEST_INSTALL_PACKAGES allow
adb shell appops set --user 0 xyz.genscode.provoltastore REQUEST_INSTALL_PACKAGES allow

adb shell appops set --user 21473 ru.vk.store REQUEST_INSTALL_PACKAGES allow
adb shell appops set --user 21473 xyz.genscode.provoltastore REQUEST_INSTALL_PACKAGES allow

    pause
    cls
    goto :start
)

if "%choice%"=="5" (
echo Вы выбрали Пункт 5
cd /d C:\ADB\PF

adb install -r -g --user 0 "C:\ADB\Programs\LixiangHud.apk"

pause
cls
goto :start
)

if "%choice%"=="6" (
echo Вы выбрали Пункт 6
cd /d C:\ADB\PF

adb shell settings list secure | findstr accessibility

adb shell settings put secure enabled_accessibility_services ace.jun.simplecontrol/ace.jun.simplecontrol.service.AccService

pause
cls
goto :start
)

if "%choice%"=="7" (
echo Вы выбрали Пункт 7
cd /d C:\ADB\PF

adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh

pause
cls
goto :start
)

if "%choice%"=="8" (
    cd /d C:\ADB\PF
    adb devices -l | find "device usb" > nul 2>&1
    if %errorlevel%==0 (
        echo Машина подключена
    ) else (
        echo Проверьте подключение к авто
    )
    
    pause
    cls
    goto :start
)


if "%choice%"=="9" (
   
    cd /d C:\ADB\PF

        adb uninstall ru.yandex.music
timeout 1
        adb uninstall ru.yandex.yandexnavi
timeout 1
        adb uninstall com.yandex.browser
timeout 1
        adb uninstall ru.yandex.yandexmaps
timeout 1
        adb shell pm uninstall --user 0 ru.yandex.music
timeout 1
        adb shell pm uninstall --user 0 ru.yandex.yandexnavi
timeout 1
        adb shell pm uninstall --user 0 com.yandex.browser
timeout 1
        adb shell pm uninstall --user 0 ru.yandex.yandexmaps
timeout 1
        adb shell pm uninstall --user 21473 ru.yandex.music
timeout 1
        adb shell pm uninstall --user 21473 ru.yandex.yandexnavi
timeout 1
        adb shell pm uninstall --user 21473 com.yandex.browser
timeout 1
        adb shell pm uninstall --user 21473 ru.yandex.yandexmaps

    pause
    cls
    goto :start
)

if "%choice%"=="10" (
    cd C:\ADB\PF
    cmd
)

if "%choice%"=="11" (
echo ВТБ: 2200 2404 4766 8316
echo Тинькофф: 4377 7278 1868 3174
echo Мой Telegram: https://t.me/totsavas /@totsavas
    pause
    cls
    goto :start
)

if "%choice%"=="0" (
    echo Выход из программы
    exit
)

echo Некорректный выбор. Попробуйте снова.
pause
cls
goto :start