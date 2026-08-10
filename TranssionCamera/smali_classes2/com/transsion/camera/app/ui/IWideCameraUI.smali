.class public interface abstract Lcom/transsion/camera/app/ui/IWideCameraUI;
.super Ljava/lang/Object;
.source "IWideCameraUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# virtual methods
.method public abstract couldShow(Z)V
.end method

.method public abstract hide()V
.end method

.method public abstract hideWideCamera()V
.end method

.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract notifyCameraOperateActionToUI(I)V
.end method

.method public abstract onOrientationChanged(IZ)V
.end method

.method public abstract pause()V
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract setOffsetPadding(I)V
.end method

.method public abstract setSecondDefaultZoomValue(I)V
.end method

.method public abstract setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
.end method

.method public abstract setSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract show(Z)V
.end method

.method public abstract showWideCamera()V
.end method

.method public abstract translateWideCamera(IZ)V
.end method

.method public abstract translateWideCamera(Z)V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateItemValue()V
.end method

.method public abstract updatePreviewRect(Landroid/graphics/Rect;)V
.end method

.method public abstract updateWideCameraAlpha(FZ)V
.end method

.method public abstract updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
.end method
