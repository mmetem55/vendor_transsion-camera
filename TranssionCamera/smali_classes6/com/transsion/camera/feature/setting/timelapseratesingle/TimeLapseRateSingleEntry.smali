.class public Lcom/transsion/camera/feature/setting/timelapseratesingle/TimeLapseRateSingleEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "TimeLapseRateSingleEntry.java"


# instance fields
.field private volatile mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/timelapseratesingle/TimeLapseRateSingleEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/transsion/camera/feature/setting/timelapseratesingle/TimeLapseRateSingle;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/timelapseratesingle/TimeLapseRateSingle;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/timelapseratesingle/TimeLapseRateSingleEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/timelapseratesingle/TimeLapseRateSingleEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 33
    const-class p0, Lcom/transsion/camera/feature/setting/timelapseratesingle/TimeLapseRateSingleEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 28
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public isSupport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
