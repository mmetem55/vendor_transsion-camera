.class public abstract Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "ModeFeatureEntryBase.java"


# instance fields
.field protected mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field protected mConfigTeleCam:Z

.field protected mConfigWideCam:Z

.field protected mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mConfigWideCam:Z

    .line 15
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mConfigTeleCam:Z

    .line 18
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 19
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->createCurrentModeUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    .line 20
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->createSecondDefaultValue()V

    .line 21
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->createZoomSpec()V

    return-void
.end method

.method private createCurrentModeUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;
    .locals 1

    .line 67
    new-instance v0, Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->getFeatureName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected createSecondDefaultValue()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$integer;->second_item_zoom_value:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSecondDefautZoomValue(I)V

    return-void
.end method

.method protected createZoomSpec()V
    .locals 5

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->currentModeSupportWideCamera()Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mConfigWideCam:Z

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 33
    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportWideCamera(Z)V

    .line 35
    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    .line 36
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->currentModeSupportTeleCamera()Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mConfigTeleCam:Z

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    .line 38
    :goto_3
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportTeleCamera(Z)V

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/app/common/R$array;->common_mode_wide_tele_zoom_ui_entries:I

    .line 42
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/app/common/R$array;->common_mode_wide_zoom_ui_entries:I

    .line 46
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/app/common/R$array;->common_mode_tele_zoom_ui_entries:I

    .line 49
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    goto :goto_4

    .line 51
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/app/common/R$array;->common_mode_default_zoom_ui_entries:I

    .line 52
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    .line 57
    :goto_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->currentModeSupportFrontWideCamera()Z

    move-result v0

    .line 58
    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_5

    :cond_7
    move v3, v2

    :goto_5
    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    move v1, v2

    .line 60
    :goto_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportFrontWideCamera(Z)V

    if-eqz v1, :cond_9

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$array;->common_front_wide_switch_setting_ui_entries:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setFrontWideCameraSettingUIEntries([Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected currentModeSupportFrontWideCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected currentModeSupportTeleCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected currentModeSupportWideCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected pocketScreen(Lcom/transsion/camera/app/common/provider/FeatureParameters;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x5

    .line 71
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->screenFormType()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
