.class public interface abstract Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;
.super Ljava/lang/Object;
.source "ICaptureOperator.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/manager/ISoundPlayer;


# virtual methods
.method public abstract getLastUri()Landroid/net/Uri;
.end method

.method public abstract gotoGallery(Landroid/net/Uri;)V
.end method

.method public abstract snapShot(Landroid/content/Context;Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;)V
.end method

.method public abstract startVideoRecorder(Ljava/lang/String;)V
.end method

.method public abstract stopVideoRecorder(Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;)V
.end method

.method public abstract takePicture(Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;)V
.end method
