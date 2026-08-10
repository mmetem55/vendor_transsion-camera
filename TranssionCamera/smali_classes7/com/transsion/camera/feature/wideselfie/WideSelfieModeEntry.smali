.class public Lcom/transsion/camera/feature/wideselfie/WideSelfieModeEntry;
.super Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;
.source "WideSelfieModeEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 4

    .line 30
    new-instance v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/panoramawideselfie/R$array;->wide_selfie_mode_setting_ui_entries:I

    .line 32
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSettingUIEntries([Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setAeAfLockSupport(Z)V

    .line 34
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportShare(Z)V

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-object v0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 3

    .line 56
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->wideselfie_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 59
    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->ic_wideselfie:I

    iput v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->wideselfie_mode_description:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    return-object v0
.end method

.method protected createZoomSpec()V
    .locals 0

    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 51
    const-class p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 46
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method
