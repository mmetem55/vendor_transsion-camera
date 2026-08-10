.class public interface abstract Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;
.super Ljava/lang/Object;
.source "CommonPhotoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotControl;
.implements Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "IContinuousShot"
.end annotation


# virtual methods
.method public abstract isShotting()Z
.end method

.method public abstract onPreviewStarted()V
.end method

.method public abstract release()V
.end method

.method public abstract terminateContinuousShot()V
.end method
