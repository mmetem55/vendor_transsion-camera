.class public Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSettingEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "StreamFlipSettingEntry.java"


# instance fields
.field private volatile mSetting:Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSettingEntry;->mSetting:Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSetting;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSetting;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSetting;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSettingEntry;->mSetting:Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSetting;

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSettingEntry;->mSetting:Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSetting;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 43
    const-class p0, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSettingEntry;

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

    .line 38
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
