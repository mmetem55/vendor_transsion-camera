.class public Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "FrontWideCameraEntry.java"


# instance fields
.field private volatile mWideCamera:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraEntry;->mWideCamera:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraEntry;->mWideCamera:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraEntry;->mWideCamera:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 31
    const-class p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 26
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
