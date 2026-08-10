.class public Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterModeEntry;
.super Lcom/transsion/camera/feature/mode/supernight/SuperNightModeEntry;
.source "SuperNightFilterModeEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightModeEntry;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 4

    .line 20
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightModeEntry;->setSettingUIEntries(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    .line 22
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/supernightfilter/R$array;->supernightfilter_mode_top_bar_setting_ui_entries:I

    .line 23
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/supernightfilter/R$array;->super_night_filter_mode_interactive_setting_ui_entries:I

    .line 25
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeInteractiveSettingUIEntries([Ljava/lang/String;)V

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-object v0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightModeEntry;->createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 37
    const-class p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 32
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method
