.class public interface abstract Lcom/transsion/camera/app/ui/IPreviewUI;
.super Ljava/lang/Object;
.source "IPreviewUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ICameraOperateActionListener;


# virtual methods
.method public abstract currentDisplayStyle()I
.end method

.method public abstract getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
.end method

.method public abstract getPreviewLayoutRatio()D
.end method

.method public abstract getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
.end method

.method public abstract getPreviewSurfaceType()I
.end method

.method public abstract hideCustomPreviewCover()V
.end method

.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end method

.method public abstract needBuildBlurCoverView(Z)V
.end method

.method public abstract needRectChangedAnimation(Z)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDoubleTap()Z
.end method

.method public abstract onEnterAnimationComplete()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onScreenFormChanged(I)V
.end method

.method public abstract onSwitchMode(Ljava/lang/String;)V
.end method

.method public abstract registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
.end method

.method public abstract resetRootParentLayout()V
.end method

.method public abstract setAuxPreviewLensSupport(ZLjava/lang/String;)V
.end method

.method public abstract setAuxPreviewModeSupport(ZLjava/lang/String;)V
.end method

.method public abstract setAuxPreviewSize(II)V
.end method

.method public abstract setBackgroundPreviewModeSupport(Z)V
.end method

.method public abstract setBackgroundPreviewSize(II)V
.end method

.method public abstract setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.end method

.method public abstract setPreviewSize(II)V
.end method

.method public abstract setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
.end method

.method public abstract setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
.end method

.method public abstract setupViews()V
.end method

.method public abstract showCustomPreviewCover(Landroid/graphics/Bitmap;)V
.end method

.method public abstract unInit()V
.end method

.method public abstract unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
.end method

.method public abstract updateCurrentCamera(Ljava/lang/String;)V
.end method

.method public abstract updatePreviewLayout(ZZD)V
.end method

.method public abstract updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V
.end method
