.class public interface abstract Lcom/transsion/camera/app/ui/IShutterUI;
.super Ljava/lang/Object;
.source "IShutterUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;
    }
.end annotation


# virtual methods
.method public abstract getShutterType()I
.end method

.method public abstract getShutterTypeSelftimerOff()I
.end method

.method public abstract getShutterTypeSelftimerOn()I
.end method

.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract isPressed()Z
.end method

.method public abstract isRecordingAndOrientation(ZI)V
.end method

.method public abstract loadAfterPreviewStarted()V
.end method

.method public abstract onOrientationChanged(IZ)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;)V
.end method

.method public abstract setShutterTypeSelftimerOff(I)V
.end method

.method public abstract setShutterTypeSelftimerOn(I)V
.end method

.method public abstract setupViews()V
.end method

.method public abstract transitionToIdle()V
.end method

.method public abstract transitionToProcessing()V
.end method

.method public abstract transitionToRegular()V
.end method

.method public abstract transitionToSmall()V
.end method

.method public abstract transitionToSmile()V
.end method

.method public abstract transitionToVoice()V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateShutterType(IZ)V
.end method
