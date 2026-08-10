.class public Lcom/transsion/camera/feature/mode/video/VideoModeEntry;
.super Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;
.source "VideoModeEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method private createModeSettingUISpec(Ljava/lang/String;)Lcom/transsion/camera/app/common/ModeSettingUISpec;
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f030121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const-string v1, "com.transsion.camera.ui.setting.facebeauty.ItelVideoFaceBeautySettingUIEntry"

    .line 70
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSettingUIEntries([Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f030122

    .line 77
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f030120

    .line 79
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPreferenceSettingUIEntries([Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const v1, 0x7f030113

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSettingGuideLayoutsArrayId(I)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f03011f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setOptionSettingUIEntries([Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "0"

    .line 85
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "1"

    .line 87
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f03011e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 86
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f03011d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const-string p1, "com.transsion.camera.feature.mode.litefacebeauty.ui.VideoFaceBeautySettingUIEntry"

    .line 91
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeInteractiveSettingUIEntries([Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0500c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportMacroCamera(Z)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0500c5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportSat(Z)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setAeAfLockSupport(Z)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0500c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportVideoCamera(Z)V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    return-object p0
.end method


# virtual methods
.method public createFeature(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/transsion/camera/feature/mode/video/VideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;->createModeSettingUISpec(Ljava/lang/String;)Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-object v0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 2

    .line 60
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f10036c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    const p0, 0x7f080912

    .line 63
    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    return-object v0
.end method

.method protected currentModeSupportFrontWideCamera()Z
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0500c3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method protected currentModeSupportTeleCamera()Z
    .locals 1

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0500c6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method protected currentModeSupportWideCamera()Z
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0500c8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 55
    const-class p0, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 50
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method public updateFeature(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    check-cast p1, Lcom/transsion/camera/app/common/mode/CameraMode;

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;->createModeSettingUISpec(Ljava/lang/String;)Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-void
.end method
