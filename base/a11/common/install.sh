#!/sbin/sh
# Shell Script EDIFY Replacement

if [ $(initialize_app_set "Core") = "1" ]; then
  install_the_package "Core" "ExtraFiles"
  set_progress 0.02
  install_the_package "Core" "GooglePlayStore"
  set_progress 0.04
  install_the_package "Core" "GoogleServicesFramework"
  set_progress 0.06
  install_the_package "Core" "GoogleContactsSyncAdapter"
  set_progress 0.08
  install_the_package "Core" "GoogleCalendarSyncAdapter"
  set_progress 0.1
  install_the_package "Core" "GmsCore"
  set_progress 0.12
else
  ui_print "x Skipping Core"
fi
  install_the_package "DigitalWellbeing" "DigitalWellbeing"
  set_progress 0.14
  install_the_package "VancedManager" "VancedManager"
  set_progress 0.16
  install_the_package "GoogleMessages" "GoogleMessages"
  set_progress 0.18
  install_the_package "GoogleDialer" "GoogleDialer"
  set_progress 0.2
  install_the_package "GoogleContacts" "GoogleContacts"
  set_progress 0.22
  install_the_package "CarrierServices" "CarrierServices"
  set_progress 0.24
  install_the_package "GoogleClock" "GoogleClock"
  set_progress 0.26
if [ $(initialize_app_set "PixelSetupWizard") = "1" ]; then
  install_the_package "PixelSetupWizard" "SetupWizard"
  set_progress 0.28
  install_the_package "PixelSetupWizard" "GoogleRestore"
  set_progress 0.3
  install_the_package "PixelSetupWizard" "GoogleOneTimeInitializer"
  set_progress 0.32
  install_the_package "PixelSetupWizard" "PixelSetupWizard"
  set_progress 0.34
  install_the_package "PixelSetupWizard" "AndroidMigratePrebuilt"
  set_progress 0.36
else
  ui_print "x Skipping PixelSetupWizard"
fi
  install_the_package "GoogleCalculator" "GoogleCalculator"
  set_progress 0.38
  install_the_package "Drive" "Drive"
  set_progress 0.4
  install_the_package "GoogleMaps" "GoogleMaps"
  set_progress 0.42
  install_the_package "GoogleLocationHistory" "GoogleLocationHistory"
  set_progress 0.44
  install_the_package "Gmail" "Gmail"
  set_progress 0.46
  install_the_package "GooglePhotos" "GooglePhotos"
  set_progress 0.48
  install_the_package "DeviceHealthServices" "DeviceHealthServices"
  set_progress 0.5
  install_the_package "Velvet" "Velvet"
  set_progress 0.52
  install_the_package "GBoard" "GBoard"
  set_progress 0.54
if [ $(initialize_app_set "PixelLauncher") = "1" ]; then
  install_the_package "PixelLauncher" "PixelLauncher"
  set_progress 0.56
  install_the_package "PixelLauncher" "DevicePersonalizationServices"
  set_progress 0.58
  install_the_package "PixelLauncher" "QuickAccessWallet"
  set_progress 0.6
else
  ui_print "x Skipping PixelLauncher"
fi
if [ $(initialize_app_set "GoogleFiles") = "1" ]; then
  install_the_package "GoogleFiles" "GoogleFiles"
  set_progress 0.62
  install_the_package "GoogleFiles" "StorageManager"
  set_progress 0.64
  install_the_package "GoogleFiles" "DocumentsUIGoogle"
  set_progress 0.66
else
  ui_print "x Skipping GoogleFiles"
fi
  install_the_package "GoogleRecorder" "GoogleRecorder"
  set_progress 0.68
  install_the_package "GoogleCalendar" "GoogleCalendar"
  set_progress 0.7
  install_the_package "MarkupGoogle" "MarkupGoogle"
  set_progress 0.72
  install_the_package "GoogleWallpaper" "GoogleWallpaper"
  set_progress 0.74
  install_the_package "GoogleFeedback" "GoogleFeedback"
  set_progress 0.76
  install_the_package "GooglePartnerSetup" "GooglePartnerSetup"
  set_progress 0.78
  install_the_package "GoogleSounds" "GoogleSounds"
  set_progress 0.8
  install_the_package "AndroidDevicePolicy" "AndroidDevicePolicy"
  set_progress 0.82
  install_the_package "GoogleKeep" "GoogleKeep"
  set_progress 0.84
  install_the_package "Books" "Books"
  set_progress 0.86
  install_the_package "Assistant" "Assistant"
  set_progress 0.88
  install_the_package "YouTubeMusic" "YouTubeMusic"
  set_progress 0.9
  install_the_package "PlayGames" "PlayGames"
  set_progress 0.92
  install_the_package "DeviceSetup" "DeviceSetup"
  set_progress 0.94
  install_the_package "AndroidAuto" "AndroidAuto"
  set_progress 0.96
if [ $(initialize_app_set "GoogleChrome") = "1" ]; then
  install_the_package "GoogleChrome" "GoogleChrome"
  set_progress 0.98
  install_the_package "GoogleChrome" "WebViewGoogle"
  set_progress 1.0
  install_the_package "GoogleChrome" "TrichromeLibrary"
  set_progress 1.0
else
  ui_print "x Skipping GoogleChrome"
fi

set_progress 1.00

exit_install

