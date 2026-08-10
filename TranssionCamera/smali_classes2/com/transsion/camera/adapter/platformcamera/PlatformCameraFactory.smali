.class public Lcom/transsion/camera/adapter/platformcamera/PlatformCameraFactory;
.super Ljava/lang/Object;
.source "PlatformCameraFactory.java"


# direct methods
.method public static createPlatformCamera2()Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;
    .locals 1

    .line 14
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;

    invoke-direct {v0}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;-><init>()V

    return-object v0
.end method
