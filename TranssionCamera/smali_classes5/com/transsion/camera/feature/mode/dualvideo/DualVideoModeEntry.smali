.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeEntry;
.super Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;
.source "DualVideoModeEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createFeature(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 44
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$array;->dualvideo_mode_top_bar_setting_ui_entries:I

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$array;->dualvideo_mode_preference_setting_ui_entries:I

    .line 48
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPreferenceSettingUIEntries([Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-object v0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 3

    .line 65
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$string;->dual_video_mode_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$string;->dual_video_mode_description:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    .line 69
    sget p0, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_dual_video_icon:I

    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    return-object v0
.end method

.method protected createZoomSpec()V
    .locals 0

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

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 60
    const-class p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 55
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method
