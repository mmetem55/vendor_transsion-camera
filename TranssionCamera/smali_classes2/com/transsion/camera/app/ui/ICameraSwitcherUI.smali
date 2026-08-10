.class public interface abstract Lcom/transsion/camera/app/ui/ICameraSwitcherUI;
.super Ljava/lang/Object;
.source "ICameraSwitcherUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# virtual methods
.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract onOrientationChanged(IZ)V
.end method

.method public abstract setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V
.end method

.method public abstract setupViews()V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateLayoutParams(Z)V
.end method
