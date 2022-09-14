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
        vendor/shishufied/overlay/wallpaper/largelads
else
    PRODUCT_PACKAGE_OVERLAYS += \
        vendor/shishufied/overlay/wallpaper/common
endif


# Control whether we want customization or not
BOOTLEGGERS_BUILD_FONT_OVERLAYS ?= true
BOOTLEGGERS_USE_FONT_ENGINE ?= false
BOOTLEGGERS_BUILD_ICON_SHAPE_OVERLAYS ?= true
BOOTLEGGERS_BUILD_ICON_PACK_OVERLAYS ?= true
BOOTLEGGERS_BUILD_NAVBAR_OVERLAYS ?= true
BOOTLEGGERS_BUILD_UI_STYLE_OVERLAYS ?= true

ifeq ($(BOOTLEGGERS_BUILD_FONT_OVERLAYS),true) 
    ifeq ($(BOOTLEGGERS_USE_FONT_ENGINE),true) 
        # Font Engine package
        #PRODUCT_PACKAGES += \
        #    ShishufiedFonts
    else
        # Prebuilt files to copy
        PRODUCT_COPY_FILES += \
            vendor/shishufied/fonts/prebuilt/fonts_shishufied.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml \
            vendor/shishufied/fonts/prebuilt/gobold/Gobold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Gobold.ttf \
            vendor/shishufied/fonts/prebuilt/gobold/Gobold-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Gobold-Italic.ttf \
            vendor/shishufied/fonts/prebuilt/gobold/GoboldBold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoboldBold.ttf \
            vendor/shishufied/fonts/prebuilt/gobold/GoboldBold-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoboldBold-Italic.ttf \
            vendor/shishufied/fonts/prebuilt/gobold/GoboldThinLight.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoboldThinLight.ttf \
            vendor/shishufied/fonts/prebuilt/gobold/GoboldThinLight-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoboldThinLight-Italic.ttf \
            vendor/shishufied/fonts/prebuilt/roadrage/road_rage.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/RoadRage-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/snowstorm/snowstorm.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Snowstorm-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/vcrosd/vcr_osd_mono.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ThemeableClock-vcrosd.ttf \
            vendor/shishufied/fonts/prebuilt/googlesans/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/googlesans/GoogleSans-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Medium.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/AdamCGPro-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AdamCGPro-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/AlexanaNeue-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AlexanaNeue-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/AlienLeague-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AlienLeague-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/Azedo-Light.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Azedo-Light.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/BigNoodleTilting-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/BigNoodleTilting-Italic.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/BigNoodleTilting-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/BigNoodleTilting-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/Biko-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Biko-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/Blern-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Blern-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/CoCoBiker-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/CoCoBiker-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/Fester-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Fester-Medium.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/GinoraSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GinoraSans-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/Inkferno-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inkferno-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/Instruction-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Instruction-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/JackLane-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/JackLane-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/Metropolis1920-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Metropolis1920-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/Monad-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Monad-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/Neoneon-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Neoneon-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/Noir-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Noir-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/North-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/North-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/OutrunFuture-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/OutrunFuture-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/Qontra-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Qontra-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/Riviera-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Riviera-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/FoxAndCat-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ThemeableDate-fc.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/FoxAndCat-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ThemeableOwner-fc.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/TheOutbox-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/TheOutbox-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontage/Union-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Union-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/Abel-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Abel-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/AdventPro-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AdventPro-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/ArchivoNarrow-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ArchivoNarrow-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/AutourOne-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AutourOne-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/Bariol-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Bariol-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/BadScript-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/BadScript-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/CherrySwash-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/CherrySwash-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/Codystar.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Codystar.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/din1451alt.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/din1451alt.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/Hanken-Light.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Hanken-Light.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/IBMPlexMono.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/IBMPlexMono.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/IBMPlexMono-Light.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/IBMPlexMono-Light.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/Jura-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Jura-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/KellySlab-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/KellySlab-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/Pompiere-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Pompiere-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/Raleway-Light.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Raleway-Light.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/ReemKufi-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ReemKufi-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/Satisfy-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Satisfy-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/SeaweedScript-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/SeaweedScript-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/SedgwickAveDisplay-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/SedgwickAveDisplay-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/Vibur.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Vibur.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev2/Voltaire.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Voltaire.ttf \
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
            vendor/shishufied/fonts/prebuilt/fontagev3/OdibeeSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/OdibeeSans-Regular.ttf \
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
            vendor/shishufied/fonts/prebuilt/fontagev3/SofiaSansSemiCond-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/SofiaSansSemiCond-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev3/SofiaSansSemiCond-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/SofiaSansSemiCond-Medium.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev3/Universalis-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Universalis-Bold.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev3/Universalis-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Universalis-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev3/UniversalisCond-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/UniversalisCond-Bold.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev3/UniversalisCond-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/UniversalisCond-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev3/VG5000-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/VG5000-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev3/Vladisvostok-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Vladisvostok-Regular.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev3/Volte-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Volte-Bold.ttf \
            vendor/shishufied/fonts/prebuilt/fontagev3/Volte-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Volte-Medium.ttf

        # Fonts required overlays packages
        PRODUCT_PACKAGES += \
            FontAuthenticSans \
            FontBigNoodle \
            FontBikoHanken \
            FontComicNeue \
            FontDecalotype \
            FontExo2 \
            FontFantasqueSansMono \
            FontFleuron \
            FontFinlandica \
            FontGoogleSans \
            FontGothamono \
            FontGravity \
            FontIgnazioText \
            FontInter \
            FontJakartaPlus \
            FontLeagueMonoNarrow \
            FontLeonSans \
            FontLumie \
            FontMescla \
            FontMilimetre \
            FontMittelschrift \
            FontNow \
            FontOdibee \
            FontOpenSauce \
            FontPanamericana \
            FontPissel \
            FontPTSansMono \
            FontQTVagaround \
            FontReemKufi \
            FontRoboto \
            FontRouterGothicNarrow \
            FontRoutedGothicRobotoCondensed \
            FontScientifica \
            FontSofiaSans \
            FontSofiaSansSemiCondensed \
            FontUniversalisCond \
            FontUniversalisReg \
            FontVG5000 \
            FontVladivostok \
            FontVolte
    endif
endif

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
        BlackThemeAndroidOverlay \
        NexodusThemeAndroidOverlay \
        NexodusThemeSettingsOverlay \
        NexodusThemeSystemUIOverlay \
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
