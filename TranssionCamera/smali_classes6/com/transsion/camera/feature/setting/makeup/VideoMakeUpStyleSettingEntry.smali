.class public Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSettingEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "VideoMakeUpStyleSettingEntry.java"


# instance fields
.field private mVideoMakeUpStyleSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSettingEntry;->mVideoMakeUpStyleSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSettingEntry;->mVideoMakeUpStyleSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSettingEntry;->mVideoMakeUpStyleSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 42
    const-class p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSettingEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 37
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
