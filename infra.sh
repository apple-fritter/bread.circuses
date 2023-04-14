#!/bin/bash

# Facebook packages
packages=(
  com.facebook.appmanager
  com.facebook.system
  com.facebook.services
  com.facebook.katana
  com.facebook.orca
  com.instagram.android
  com.facebook.pages.app
  com.facebook.gaming.services
)

# Remove Facebook packages
for package in "${packages[@]}"; do
  adb shell pm uninstall --user 0 "$package"
done

# System packages
packages=(
  com.facebook.services
  com.facebook.system
  com.facebook.appmanager
)

# Disable system packages
for package in "${packages[@]}"; do
  adb shell pm disable-user --user 0 "$package"
done
