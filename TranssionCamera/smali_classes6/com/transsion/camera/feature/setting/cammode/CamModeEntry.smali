.class public Lcom/transsion/camera/feature/setting/cammode/CamModeEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "CamModeEntry.java"


# instance fields
.field private volatile mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamModeEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/transsion/camera/feature/setting/cammode/CamMode;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamModeEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamModeEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 32
    const-class p0, Lcom/transsion/camera/feature/setting/cammode/CamModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 27
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
