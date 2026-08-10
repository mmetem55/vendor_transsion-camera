.class public interface abstract Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;
.super Ljava/lang/Object;
.source "IAppUIControl.java"


# virtual methods
.method public abstract getShutterTypeSelftimerOff()I
.end method

.method public abstract getShutterTypeSelftimerOn()I
.end method

.method public abstract registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V
.end method

.method public abstract resetShutterToIdle()V
.end method

.method public abstract setShutterTypeSelftimerOff(I)V
.end method

.method public abstract setShutterTypeSelftimerOn(I)V
.end method

.method public abstract transitionShutterToRegular()V
.end method

.method public abstract transitionShutterToSmall()V
.end method

.method public abstract triggerShutterClick(I)V
.end method

.method public abstract unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V
.end method

.method public abstract updateShutterType(I)V
.end method

.method public abstract updateShutterType(IZ)V
.end method

.method public abstract updateTriggerSelfTimerPriority(I)V
.end method
