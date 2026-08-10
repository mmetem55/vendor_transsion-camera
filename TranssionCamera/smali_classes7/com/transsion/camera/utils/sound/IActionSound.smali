.class public interface abstract Lcom/transsion/camera/utils/sound/IActionSound;
.super Ljava/lang/Object;
.source "IActionSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;,
        Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;,
        Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;
    }
.end annotation


# virtual methods
.method public abstract load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V
.end method

.method public abstract load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;)V
.end method

.method public abstract load([Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V
.end method

.method public abstract play(I)V
.end method

.method public abstract play(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
.end method

.method public abstract play(IZ)V
.end method

.method public abstract stop(I)V
.end method

.method public abstract unload(I)V
.end method
