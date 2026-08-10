.class public Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "VideoPortraitEntry.java"


# instance fields
.field private mVideoPortrait:Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitEntry;->mVideoPortrait:Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitEntry;->mVideoPortrait:Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitEntry;->mVideoPortrait:Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 34
    const-class p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitEntry;

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
