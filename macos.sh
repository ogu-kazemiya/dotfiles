#!/usr/bin/env bash

# Avoid conflicts with System Preferences and System Settings
osascript -e 'tell application "System Preferences" to quit'
osascript -e 'tell application "System Settings" to quit'

# Appearance
defaults write NSGlobalDomain AppleAccentColor -int 1
defaults write NSGlobalDomain AppleAquaColorVariant -int 1
defaults write NSGlobalDomain AppleHighlightColor -string "1.000000 0.874510 0.701961 Orange"
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"
defaults write NSGlobalDomain AppleMenuBarVisibleInFullscreen -bool false

# Input
defaults write NSGlobalDomain InitialKeyRepeat -int 30
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain com.apple.mouse.scaling -float 0.6875
defaults write NSGlobalDomain com.apple.mouse.doubleClickThreshold -float 0.5
defaults write NSGlobalDomain com.apple.trackpad.scaling -float 1
defaults write NSGlobalDomain com.apple.trackpad.forceClick -bool true
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 0
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 0

# Other
defaults write NSGlobalDomain com.apple.sound.beep.sound -string "/System/Library/Sounds/Blow.aiff"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write NSGlobalDomain AppleWindowTabbingMode -string "always"

# Finder
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true

# Kill affected applications
for app in "Finder" "Dock" "SystemUIServer"; do
  killall "$app" &> /dev/null
done
