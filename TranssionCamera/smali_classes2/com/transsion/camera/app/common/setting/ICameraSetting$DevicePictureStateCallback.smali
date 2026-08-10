.class public interface abstract Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
.super Ljava/lang/Object;
.source "ICameraSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/setting/ICameraSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DevicePictureStateCallback"
.end annotation


# virtual methods
.method public onCaptureEnd()V
    .locals 0

    return-void
.end method

.method public abstract onCaptureStart()V
.end method

.method public abstract takePictureEnd(Z)V
.end method

.method public abstract takePictureStart()V
.end method
