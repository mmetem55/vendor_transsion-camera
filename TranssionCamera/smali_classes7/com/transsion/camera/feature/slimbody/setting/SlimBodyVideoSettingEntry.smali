.class public Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSettingEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SlimBodyVideoSettingEntry.java"


# instance fields
.field private volatile mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 15
    sget-object p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "SlimBodyVideoSettingEntry"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSettingEntry;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    invoke-direct {v0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSettingEntry;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    .line 23
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFeature mSlimBodySetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSettingEntry;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSettingEntry;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 34
    const-class p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSettingEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 29
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
