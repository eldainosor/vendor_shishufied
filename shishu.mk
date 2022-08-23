 ## Overlay makefile for building styles, themes and dreams

# Adding extras to our needs related to ThemePicker
PRODUCT_PACKAGE_OVERLAYS += \
    packages/overlays/Shishufied/Overlays

PRODUCT_PACKAGES += \
	Shishufied \
    SimIcons

# Theme-Required overlays packages
# PRODUCT_PACKAGES += \
#     AOSPThemeAndroidOverlay \
#     AOSPThemeSettingsOverlay \
#     AOSPThemeSystemUIOverlay \
#     BlackThemeAndroidOverlay \
#     BlackThemeSettingsOverlay \
#     BlackThemeSystemUIOverlay \
#     LayanDarkenedThemeAndroidOverlay \
#     LayanDarkenedThemeSettingsOverlay \
#     LayanDarkenedThemeSystemUIOverlay \
#     NexodusThemeAndroidOverlay \
#     NexodusThemeSettingsOverlay \
#     NexodusThemeSystemUIOverlay \
#     OneMonoThemeAndroidOverlay \
#     OneMonoThemeSettingsOverlay \
#     OneMonoThemeSystemUIOverlay \
#     PacleggersThemeAndroidOverlay \
#     PacleggersThemeSettingsOverlay \
#     PacleggersThemeSystemUIOverlay \
#     PisselThemeAndroidOverlay \
#     PisselThemeSettingsOverlay \
#     PisselThemeSystemUIOverlay \
#     SolarizedThemeAndroidOverlay \
#     SolarizedThemeSettingsOverlay \
#     SolarizedThemeSystemUIOverlay \
#     ShishuIllusionsThemeAndroidOverlay \
#     ShishuIllusionsThemeGMSOverlay \
#     ShishuIllusionsThemeSettingsOverlay \
#     ShishuIllusionsThemeSystemUIOverlay \
#     ShishuIllusionsThemeWellbeingUIOverlay \
#     ShishuImmensityThemeAndroidOverlay \
#     ShishuImmensityThemeGMSOverlay \
#     ShishuImmensityThemeSettingsOverlay \
#     ShishuImmensityThemeSystemUIOverlay \
#     ShishuImmensityThemeWellbeingOverlay \
#     ShishuThemeAndroidOverlay \
#     ShishuThemeSettingsOverlay \
#     ShishuThemeSystemUIOverlay \
#     ShishuNightsThemeAndroidOverlay \
#     ShishuNightsThemeSettingsOverlay \
#     ShishuNightsThemeSystemUIOverlay \
#     ShishuAmalgamationThemeAndroidOverlay \
#     ShishuAmalgamationThemeSettingsOverlay \
#     ShishuAmalgamationThemeSystemUIOverlay

# Overlays for Shishufied devices
ifeq ($(BOOTLEGGERS_BUILD_TYPE),Shishufied)
    PRODUCT_PACKAGE_OVERLAYS += \
    packages/overlays/Shishufied/ShishufiedOverlays
endif
