.class public Lcom/transsion/camera/feature/mode/photo/PhotoModeEntry;
.super Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;
.source "PhotoModeEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 4

    .line 29
    new-instance v0, Lcom/transsion/camera/feature/mode/photo/PhotoMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/photo/PhotoModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/photo/PhotoMode;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0300a8

    .line 31
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSettingUIEntries([Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0300aa

    .line 33
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0300a7

    .line 35
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPreferenceSettingUIEntries([Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-object v0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 2

    .line 67
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/photo/PhotoModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f100260

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    return-object v0
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
    .locals 1

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f050078

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 62
    const-class p0, Lcom/transsion/camera/feature/mode/photo/PhotoModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 57
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method
