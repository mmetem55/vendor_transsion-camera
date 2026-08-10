.class public abstract Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.super Ljava/lang/Object;
.source "FeatureEntryBase.java"

# interfaces
.implements Lcom/transsion/camera/app/common/provider/IFeatureEntry;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mContext:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createFeature(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->createFeature()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFeature(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->createFeature(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public initResource()V
    .locals 0

    return-void
.end method

.method public isSupport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public unInitResource()V
    .locals 0

    return-void
.end method

.method public updateFeature(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
