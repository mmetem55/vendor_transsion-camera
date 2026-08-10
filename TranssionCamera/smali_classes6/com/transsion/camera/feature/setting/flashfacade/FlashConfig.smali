.class public final Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;
.super Ljava/lang/Object;
.source "FlashConfig.java"


# instance fields
.field public final mAutoBackLimitBV:I

.field public final mAutoFrontLimitBV:I

.field public final mAutoSupportedFeatures:[Ljava/lang/String;

.field public final mBackWideUnSupportSFL:Z

.field public final mDefaultFrontDualFlashColorTemp:I

.field public final mDefaultFrontDualFlashStrengthMode:I

.field public final mDefaultLuminanceValue:I

.field public final mFacingBackSupportedSFL:Z

.field public final mFacingFrontSupportedSFL:Z

.field public final mFlashDefaultValue:Ljava/lang/String;

.field public final mFlashStyleOneStage:Z

.field public final mFrontDualFlashSupport:Z

.field public final mLedFlashLowLight:Z

.field public final mLimitBV:I

.field public final mLowLightAutoSupportedFeatures:[Ljava/lang/String;

.field public final mOffSupportedFeatures:[Ljava/lang/String;

.field public final mOnSupportedFeatures:[Ljava/lang/String;

.field public final mRearCameraSuperFlashSupport:Z

.field public final mRingScreenLightSupport:Z

.field public final mRingScreenLightSupportedFeatures:[Ljava/lang/String;

.field public final mScreenFlashSupport:Z

.field public final mScreenFlashSupportedFeatures:[Ljava/lang/String;

.field public final mTorchSupportedFeatures:[Ljava/lang/String;

.field public final mUnSupportOneStageModes:[Ljava/lang/String;

.field public final mUseNewLuminanceInteraction:Z

.field public final mUsePlatformScreenFlash:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flash_facade_screen_flash_support"

    .line 58
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mScreenFlashSupport:Z

    const-string v1, "flash_facade_ring_screen_light_support"

    .line 60
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mRingScreenLightSupport:Z

    const-string v1, "rear_camera_super_flash_support"

    .line 63
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mRearCameraSuperFlashSupport:Z

    const-string v1, "led_flash_low_light"

    .line 66
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLedFlashLowLight:Z

    const-string v1, "led_flash_style_one_stage"

    .line 68
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFlashStyleOneStage:Z

    const-string v1, "flash_default_value"

    .line 71
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFlashDefaultValue:Ljava/lang/String;

    const-string v1, "flash_default_luminance_value"

    .line 73
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultLuminanceValue:I

    const-string v1, "front_dual_flash_color_temp"

    .line 76
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultFrontDualFlashColorTemp:I

    const-string v1, "front_dual_flash_strength_mode"

    .line 79
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultFrontDualFlashStrengthMode:I

    const-string v1, "flash_facade_limit_brightness_value"

    .line 82
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLimitBV:I

    const-string v1, "flash_facade_auto_back_limit_brightness_value"

    .line 84
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoBackLimitBV:I

    const-string v1, "flash_facade_auto_front_limit_brightness_value"

    .line 86
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoFrontLimitBV:I

    const-string v1, "unsupport_flash_style_one_stage_modes"

    .line 89
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUnSupportOneStageModes:[Ljava/lang/String;

    const-string v1, "flash_facade_off_supported_features"

    .line 92
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mOffSupportedFeatures:[Ljava/lang/String;

    const-string v1, "flash_facade_on_supported_features"

    .line 94
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mOnSupportedFeatures:[Ljava/lang/String;

    const-string v1, "flash_facade_auto_supported_features"

    .line 96
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoSupportedFeatures:[Ljava/lang/String;

    const-string v1, "flash_facade_auto_supported_features_led_flash_low_light"

    .line 98
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLowLightAutoSupportedFeatures:[Ljava/lang/String;

    const-string v1, "flash_facade_torch_supported_features"

    .line 100
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mTorchSupportedFeatures:[Ljava/lang/String;

    const-string v1, "flash_facade_ring_screen_light_supported_features"

    .line 102
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mRingScreenLightSupportedFeatures:[Ljava/lang/String;

    const-string v1, "flash_facade_screen_flash_supported_features"

    .line 104
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mScreenFlashSupportedFeatures:[Ljava/lang/String;

    const-string v1, "facing_back_supported_sfl"

    .line 108
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFacingBackSupportedSFL:Z

    const-string v1, "facing_front_supported_sfl"

    .line 110
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFacingFrontSupportedSFL:Z

    const-string v1, "use_new_luminance_interaction"

    .line 113
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUseNewLuminanceInteraction:Z

    const-string v1, "use_platform_screen_flash"

    .line 116
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUsePlatformScreenFlash:Z

    const-string v1, "wide_back_unsupported_sfl"

    .line 117
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mBackWideUnSupportSFL:Z

    const-string v1, "front_dual_flash_support"

    .line 120
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFrontDualFlashSupport:Z

    return-void
.end method
