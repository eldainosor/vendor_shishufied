## Overlay makefile for building styles, themes and dreams
#
# First, let's add the general changes for all devices
#
# Adding extras to our needs related to ThemePicker
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/shishufied/overlays/common

# Build the theme stub
PRODUCT_PACKAGES += \
    ShishufiedStub

# Overlays for Shishufied devices
ifeq ($(BOOTLEGGERS_BUILD_TYPE),Shishufied)
    PRODUCT_PACKAGE_OVERLAYS += \
        vendor/shishufied/overlays/shishufied
endif

# Wallpaper overlay selection for larger (18:9) devices
#
# Enabled by default because most phones uses a 18:9 resolution, but can be disabled
BOOTLEGGERS_IS_LARGE_DEVICE ?= true
ifeq ($(BOOTLEGGERS_IS_LARGE_DEVICE),true)
    PRODUCT_PACKAGE_OVERLAYS += \
        vendor/shishufied/overlays/wallpaper/largelads
else
    PRODUCT_PACKAGE_OVERLAYS += \
        vendor/shishufied/overlays/wallpaper/common
endif


# Control whether we want customization or not
BOOTLEGGERS_BUILD_FONT_PACKAGES ?= true
BOOTLEGGERS_USE_FONT_ENGINE ?= true
BOOTLEGGERS_BUILD_ICON_SHAPE_OVERLAYS ?= true
BOOTLEGGERS_BUILD_ICON_PACK_OVERLAYS ?= true
BOOTLEGGERS_BUILD_NAVBAR_OVERLAYS ?= true
BOOTLEGGERS_BUILD_UI_STYLE_OVERLAYS ?= true
BOOTLEGGERS_BUILD_LOCK_CLOCK_FONT_OVERLAYS ?= true

# This is just a check to avoid building redundant packages.
# If we enable the custom Font Engine, we shouldn't use AOSP Font Engine
# regardless of the value
ifeq ($(BOOTLEGGERS_USE_FONT_ENGINE),true)
    BOOTLEGGERS_BUILD_FONT_PACKAGES := false
endif

# Files needed for system default clock
PRODUCT_COPY_FILES += \
    vendor/shishufied/fonts/prebuilt/gobold/Gobold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Gobold.ttf \
    vendor/shishufied/fonts/prebuilt/gobold/Gobold-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Gobold-Italic.ttf \
    vendor/shishufied/fonts/prebuilt/gobold/GoboldBold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoboldBold.ttf \
    vendor/shishufied/fonts/prebuilt/gobold/GoboldBold-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoboldBold-Italic.ttf \
    vendor/shishufied/fonts/prebuilt/gobold/GoboldThinLight.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoboldThinLight.ttf \
    vendor/shishufied/fonts/prebuilt/gobold/GoboldThinLight-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoboldThinLight-Italic.ttf

# Icon Shapes
ifeq ($(BOOTLEGGERS_BUILD_ICON_SHAPE_OVERLAYS),true) 
    PRODUCT_PACKAGES += \
        IconShapeCloudyOverlay \
        IconShapeCylinderOverlay \
        IconShapeFlowerOverlay \
        IconShapeHeartOverlay \
        IconShapeHexagonOverlay \
        IconShapeLeafOverlay \
        IconShapePebbleOverlay \
        IconShapeRiceBallsOverlay \
        IconShapeRoundedHexagonOverlay \
        IconShapeRoundedRectOverlay \
        IconShapeSquareOverlay \
        IconShapeSquircleOverlay \
        IconShapeStretchedOverlay \
        IconShapeTaperedRectOverlay \
        IconShapeTeardropOverlay \
        IconShapeVesselOverlay
endif

# Icon Packs
ifeq ($(BOOTLEGGERS_BUILD_ICON_PACK_OVERLAYS),true) 
    PRODUCT_PACKAGES += \
        IconPackCircularAndroidOverlay \
        IconPackCircularLauncherOverlay \
        IconPackCircularSettingsOverlay \
        IconPackCircularSystemUIOverlay \
        IconPackCircularThemePickerOverlay \
        IconPackVictorAndroidOverlay \
        IconPackVictorLauncherOverlay \
        IconPackVictorSettingsOverlay \
        IconPackVictorSystemUIOverlay \
        IconPackVictorThemePickerOverlay \
        IconPackSamAndroidOverlay \
        IconPackSamLauncherOverlay \
        IconPackSamSettingsOverlay \
        IconPackSamSystemUIOverlay \
        IconPackSamThemePickerOverlay \
        IconPackKaiAndroidOverlay \
        IconPackKaiLauncherOverlay \
        IconPackKaiSettingsOverlay \
        IconPackKaiSystemUIOverlay \
        IconPackKaiThemePickerOverlay \
        IconPackFilledAndroidOverlay \
        IconPackFilledLauncherOverlay \
        IconPackFilledSettingsOverlay \
        IconPackFilledSystemUIOverlay \
        IconPackFilledThemePickerOverlay \
        IconPackOutlineAndroidOverlay \
        IconPackOutlineSettingsOverlay \
        IconPackOutlineSystemUIOverlay \
        IconPackPUIAndroidOverlay \
        IconPackPUILauncherOverlay \
        IconPackPUISettingsOverlay \
        IconPackPUISystemUIOverlay \
        IconPackPUIThemePickerOverlay \
        IconPackRoundedAndroidOverlay \
        IconPackRoundedLauncherOverlay \
        IconPackRoundedSettingsOverlay \
        IconPackRoundedSystemUIOverlay \
        IconPackRoundedThemePickerOverlay \
        IconPackOOSAndroidOverlay \
        IconPackOOSLauncherOverlay \
        IconPackOOSSettingsOverlay \
        IconPackOOSSystemUIOverlay \
        IconPackOOSThemePickerOverlay \
        IconPackAcherusAndroidOverlay \
        IconPackAcherusSystemUIOverlay
endif

# Navbar
ifeq ($(BOOTLEGGERS_BUILD_NAVBAR_OVERLAYS),true) 
    PRODUCT_PACKAGES += \
        NavbarAndroidOverlay \
        NavbarAsusOverlay \
        NavbarMotoOverlay \
        NavbarNexusOverlay \
        NavbarOldOverlay \
        NavbarOnePlusOverlay \
        NavbarOneUiOverlay \
        NavbarSammyOverlay \
        NavbarTecnoCamonOverlay
endif

# Theme-Required overlays packages
ifeq ($(BOOTLEGGERS_BUILD_UI_STYLE_OVERLAYS),true) 
    PRODUCT_PACKAGES += \
        UnmonetThemeAndroidOverlay \
        UnmonetThemeSettingsOverlay \
        UnmonetThemeSystemUIOverlay \
        BlackThemeAndroidOverlay \
        BlackThemeSettingsOverlay \
        BlackThemeSystemUIOverlay \
        NexodusThemeAndroidOverlay \
        NexodusThemeSettingsOverlay \
        NexodusThemeSystemUIOverlay \
        ProjectOptronicThemeAndroidOverlay \
        ProjectOptronicThemeSettingsOverlay \
        ProjectOptronicThemeSystemUIOverlay \
        PacleggersThemeAndroidOverlay \
        PacleggersThemeSettingsOverlay \
        PacleggersThemeSystemUIOverlay \
        SolarizedThemeAndroidOverlay \
        SolarizedThemeSettingsOverlay \
        SolarizedThemeSystemUIOverlay \
        ShishuIllusionsThemeAndroidOverlay \
        ShishuIllusionsThemeSettingsOverlay \
        ShishuIllusionsThemeSystemUIOverlay \
        ShishuImmensityThemeAndroidOverlay \
        ShishuImmensityThemeSettingsOverlay \
        ShishuImmensityThemeSystemUIOverlay \
        ShishuThemeAndroidOverlay \
        ShishuThemeSettingsOverlay \
        ShishuThemeSystemUIOverlay \
        ShishuNightsThemeAndroidOverlay \
        ShishuNightsThemeSettingsOverlay \
        ShishuNightsThemeSystemUIOverlay \
        ShishuAmalgamationThemeAndroidOverlay \
        ShishuAmalgamationThemeSettingsOverlay \
        ShishuAmalgamationThemeSystemUIOverlay
endif

# Font customization file
ifeq ($(BOOTLEGGERS_BUILD_FONT_PACKAGES),true)
    ifeq ($(BOOTLEGGERS_BUILD_LOCK_CLOCK_FONT_OVERLAYS),true)
        # Prebuilt files to copy
        PRODUCT_COPY_FILES += \
            vendor/shishufied/fonts/prebuilt/fonts_shishufied_full.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml
    else
        # Prebuilt files to copy
        PRODUCT_COPY_FILES += \
            vendor/shishufied/fonts/prebuilt/fonts_shishufied_sysfonts.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml
    endif
else
    ifeq ($(BOOTLEGGERS_BUILD_LOCK_CLOCK_FONT_OVERLAYS),true)
        # Prebuilt files to copy
        PRODUCT_COPY_FILES += \
            vendor/shishufied/fonts/prebuilt/fonts_shishufied_lockfonts.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml
    else
        # Prebuilt files to copy
        PRODUCT_COPY_FILES += \
            vendor/shishufied/fonts/prebuilt/fonts_shishufied_core.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml
    endif
endif

# Font-related packages and prebuilt files

ifeq ($(BOOTLEGGERS_USE_FONT_ENGINE),true) 
    # Font Engine package
    PRODUCT_PACKAGES += \
        ShishufiedFonts
else
    ifeq ($(BOOTLEGGERS_BUILD_FONT_PACKAGES),true)
            # Prebuilt system font files
            PRODUCT_COPY_FILES += \
                vendor/shishufied/fonts/prebuilt/googlesans/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/googlesans/GoogleSans-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Medium.ttf \
                vendor/shishufied/fonts/prebuilt/fontage/AlienLeague-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AlienLeague-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontage/BigNoodleTilting-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/BigNoodleTilting-Italic.ttf \
                vendor/shishufied/fonts/prebuilt/fontage/BigNoodleTilting-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/BigNoodleTilting-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontage/Biko-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Biko-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev2/din1451alt.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/din1451alt.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev2/Hanken-Light.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Hanken-Light.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev2/ReemKufi-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ReemKufi-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/AuthenticSans-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AuthenticSans-Medium.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/AuthenticSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AuthenticSans-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/ComicNeue-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ComicNeue-Bold.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/ComicNeue-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ComicNeue-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Decalotype-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Decalotype-Medium.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Decalotype-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Decalotype-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Exo2-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Exo2-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Exo2-SemiBold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Exo2-SemiBold.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/FantasqueMono-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/FantasqueMono-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Fleuron-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Fleuron-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Finlandica-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Finlandica-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Gothamono-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Gothamono-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Gravity-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Gravity-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/IgnazioText-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/IgnazioText-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Inter-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Inter-MediumItalic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-MediumItalic.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/JakartaPlus-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/JakartaPlus-Medium.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/JakartaPlus-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/JakartaPlus-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/LeagueMono-RegularNarrow.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/LeagueMono-RegularNarrow.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/LeagueMono-MediumNarrow.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/LeagueMono-MediumNarrow.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/LeagueMono-BoldNarrow.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/LeagueMono-BoldNarrow.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/LeagueMono-SemiBoldNarrow.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/LeagueMono-SemiBoldNarrow.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/LeonSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/LeonSans-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Lumie-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Lumie-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/mescla_regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/mescla_regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Millimetre-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Millimetre-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Now-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Now-Medium.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Now-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Now-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/OpenSauceSans-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/OpenSauceSans-Medium.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/OpenSauceSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/OpenSauceSans-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Panamericana-Display.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Panamericana-Display.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/PTSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/PTSans-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/PTMono-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/PTMono-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/QTVagaRound-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/QTVagaRound-Bold.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/QTVagaRound-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/QTVagaRound-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/routed-gothic-narrow.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/routed-gothic-narrow.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/routed-gothic-narrow-half-italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/routed-gothic-narrow-half-italic.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Scientifica-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Scientifica-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/SofiaSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/SofiaSans-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/SofiaSans-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/SofiaSans-Medium.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Universalis-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Universalis-Bold.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Universalis-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Universalis-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev3/Vladisvostok-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Vladisvostok-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/Blazma-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Blazma-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/Cardelina.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Cardelina.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/CookieRun-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/CookieRun-Bold.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/CookieRun-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/CookieRun-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/Gemsbuck01-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Gemsbuck01-Bold.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/GiganticFS.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GiganticFS.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/Hezaedrus-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Hezaedrus-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/HyperwaveDisplay.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HyperwaveDisplay.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/Jicaleta-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Jicaleta-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/JUSTSansExBold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/JUSTSansExBold.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/JUSTSansRegular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/JUSTSansRegular.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/punk-mono-extendedmedium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/punk-mono-extendedmedium.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/punk-mono-medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/punk-mono-medium.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/punk-mono-oblique.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/punk-mono-oblique.ttf \
                vendor/shishufied/fonts/prebuilt/fontagev4/punk-mono-regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/punk-mono-regular.ttf \
                vendor/shishufied/fonts/prebuilt/circularp404/Circular-Std-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Circular-Std-Bold.ttf \
                vendor/shishufied/fonts/prebuilt/circularp404/Circular-Std-BoldItalic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Circular-Std-BoldItalic.ttf \
                vendor/shishufied/fonts/prebuilt/circularp404/Circular-Std-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Circular-Std-Italic.ttf \
                vendor/shishufied/fonts/prebuilt/circularp404/Circular-Std-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Circular-Std-Medium.ttf \
                vendor/shishufied/fonts/prebuilt/circularp404/Circular-Std-MediumItalic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Circular-Std-MediumItalic.ttf \
                vendor/shishufied/fonts/prebuilt/circularp404/Circular-Std-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Circular-Std-Regular.ttf \
                vendor/shishufied/fonts/prebuilt/atkinson/AtkinsonHyperlegible-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AtkinsonHyperlegible-Bold.ttf \
                vendor/shishufied/fonts/prebuilt/atkinson/AtkinsonHyperlegible-BoldItalic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AtkinsonHyperlegible-BoldItalic.ttf \
                vendor/shishufied/fonts/prebuilt/atkinson/AtkinsonHyperlegible-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AtkinsonHyperlegible-Italic.ttf \
                vendor/shishufied/fonts/prebuilt/atkinson/AtkinsonHyperlegible-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AtkinsonHyperlegible-Regular.ttf
    
    
            # Fonts required overlays packages
            PRODUCT_PACKAGES += \
                FontAtkinsonOverlay \
                FontAltAtkinsonOverlay \
                FontAuthenticSansOverlay \
                FontBigNoodleOverlay \
                FontBikoHankenOverlay \
                FontComicNeueOverlay \
                FontDecalotypeOverlay \
                FontExo2Overlay \
                FontFantasqueSansMonoOverlay \
                FontFleuronOverlay \
                FontFinlandicaOverlay \
                FontGoogleSansOverlay \
                FontGothamonoOverlay \
                FontGravityOverlay \
                FontIgnazioTextOverlay \
                FontInterOverlay \
                FontJakartaPlusOverlay \
                FontLeagueMonoNarrowOverlay \
                FontLeonSansOverlay \
                FontLumieOverlay \
                FontMesclaOverlay \
                FontMilimetreOverlay \
                FontMittelschriftOverlay \
                FontNowOverlay \
                FontOpenSauceOverlay \
                FontPanamericanaOverlay \
                FontPisselOverlay \
                FontPTSansMonoOverlay \
                FontQTVagaroundOverlay \
                FontReemKufiOverlay \
                FontRobotoOverlay \
                FontRouterGothicNarrowOverlay \
                FontScientificaOverlay \
                FontSofiaSansOverlay \
                FontUniversalisRegOverlay \
                FontVladivostokOverlay \
                FontCircularStdOverlay \
                FontBlazmaHyperwaveOverlay \
                FontCardelinaOverlay \
                FontCookieRunOverlay \
                FontGemsbuckPunkMonoObliqueOverlay \
                FontGiganticFSHezaedrusOverlay \
                FontJicaletaOverlay \
                FontJustSansOverlay \
                FontPunkMonoOverlay
        endif
endif


# Lockscreen clock fonts
ifeq ($(BOOTLEGGERS_BUILD_LOCK_CLOCK_FONT_PACKAGES),true) 
    # Prebuilt files to copy
    PRODUCT_COPY_FILES += \
        vendor/shishufied/fonts/prebuilt/roadrage/road_rage.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/RoadRage-Regular.ttf \
        vendor/shishufied/fonts/prebuilt/snowstorm/snowstorm.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Snowstorm-Regular.ttf \
        vendor/shishufied/fonts/prebuilt/googlesans/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Regular.ttf \
        vendor/shishufied/fonts/prebuilt/googlesans/GoogleSans-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Medium.ttf \
        vendor/shishufied/fonts/prebuilt/fontage/AlienLeague-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AlienLeague-Regular.ttf \
        vendor/shishufied/fonts/prebuilt/fontage/BigNoodleTilting-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/BigNoodleTilting-Italic.ttf \
        vendor/shishufied/fonts/prebuilt/fontage/Biko-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Biko-Regular.ttf \
        vendor/shishufied/fonts/prebuilt/fontage/GinoraSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GinoraSans-Regular.ttf \
        vendor/shishufied/fonts/prebuilt/fontage/Riviera-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Riviera-Regular.ttf \
        vendor/shishufied/fonts/prebuilt/fontage/Union-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Union-Regular.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev2/AdventPro-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AdventPro-Regular.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev2/CherrySwash-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/CherrySwash-Regular.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev2/Vibur.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Vibur.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev3/OdibeeSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/OdibeeSans-Regular.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev3/VG5000-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/VG5000-Regular.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/3DIsometric-Black.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/3DIsometric-Black.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/3DIsometric-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/3DIsometric-Bold.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/BalticBodden.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/BalticBodden.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/BalticCoast.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/BalticCoast.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/BalticDune.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/BalticDune.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/BalticStorm.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/BalticStorm.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/Cafe24Decoshadow.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Cafe24Decoshadow.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/Forta.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Forta.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/MuseoModerno.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/MuseoModerno.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/mx-wasgard.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/mx-wasgard.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/NeptunCAT.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/NeptunCAT.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/PermanentMarker.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/PermanentMarker.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/ProdeltCo.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ProdeltCo.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/Rubik-Glitch-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Rubik-Glitch-Regular.ttf \
        vendor/shishufied/fonts/prebuilt/fontagev4lock/Tourney-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Tourney-Medium.ttf \
        vendor/shishufied/fonts/prebuilt/atkinson/AtkinsonHyperlegible-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AtkinsonHyperlegible-Regular.ttf

    PRODUCT_PACKAGES += \
        ClockFontAdventProOverlay \
        ClockFontAtkinsonOverlay \
        ClockFontBigNoodleTiltingOverlay \
        ClockFontCherrySwashOverlay \
        ClockFontHeadlineOverlay \
        ClockFontRoadRageOverlay \
        ClockFontSnowstormOverlay \
        ClockFontViburOverlay \
        ClockFontAlienLeagueOverlay \
        ClockFontOdibeeSansOverlay \
        ClockFontBikoOverlay \
        ClockFontGinoraSansOverlay \
        ClockFontPermanentMarkerOverlay \
        ClockFontRivieraOverlay \
        ClockFontUnionOverlay \
        ClockFontVG5000Overlay \
        ClockFont3DIsometricBlackOverlay \
        ClockFont3DIsometricBoldOverlay \
        ClockFontBalticBoddenOverlay \
        ClockFontBalticCoastOverlay \
        ClockFontBalticDuneOverlay \
        ClockFontBalticStormOverlay \
        ClockFontCafe24DecoshadowOverlay \
        ClockFontFortaOverlay \
        ClockFontMuseoModernoOverlay \
        ClockFontMXWasgardOverlay \
        ClockFontNeptunCATOverlay \
        ClockFontProdeltCoOverlay \
        ClockFontRubikGlitchOverlay \
        ClockFontTourneyMediumOverlay
endif

# UDFPS Animations
ifeq ($(BOOTLEGGERS_UDFPS_ANIMATIONS),true)
PRODUCT_PACKAGES += \
    UdfpsResources
endif
