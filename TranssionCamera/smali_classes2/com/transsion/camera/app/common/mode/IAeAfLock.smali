.class public interface abstract Lcom/transsion/camera/app/common/mode/IAeAfLock;
.super Ljava/lang/Object;
.source "IAeAfLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    }
.end annotation


# virtual methods
.method public abstract currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
.end method

.method public abstract performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V
.end method

.method public abstract supportedLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
.end method
