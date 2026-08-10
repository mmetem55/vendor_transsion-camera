.class public Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeEntry;
.super Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;
.source "ASDModeEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method private createFeatureInternal(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;
    .locals 4

    .line 28
    new-instance v0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)V

    .line 29
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f030016

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 30
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "com.transsion.camera.ui.setting.facebeauty.ItelFaceBeautySettingUIEntry"

    .line 31
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSettingUIEntries([Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030009

    .line 37
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setAodModeSettingUIEntries([Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030017

    .line 39
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030015

    .line 41
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPreferenceSettingUIEntries([Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030012

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeInteractiveSettingUIEntries([Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f05000c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportMacroCamera(Z)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->pocketScreen(Lcom/transsion/camera/app/common/provider/FeatureParameters;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f05000d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 49
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportSat(Z)V

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f05000a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 53
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportAuxPreview(Z)V

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f0a001c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-nez p1, :cond_2

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const p2, 0x7f030013

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeGuideLayoutsArrayId(I)V

    goto :goto_0

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const p2, 0x7f030014

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeGuideLayoutsArrayId(I)V

    .line 60
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const p2, 0x7f030018

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSettingGuideLayoutsArrayId(I)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setAeAfLockSupport(Z)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportShare(Z)V

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-object v0
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createFeature(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeEntry;->createFeatureInternal(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 2

    .line 102
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 103
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f100080

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    const p0, 0x7f08052f

    .line 105
    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    return-object v0
.end method

.method protected currentModeSupportFrontWideCamera()Z
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method protected currentModeSupportTeleCamera()Z
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method protected currentModeSupportWideCamera()Z
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 97
    const-class p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 92
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method
