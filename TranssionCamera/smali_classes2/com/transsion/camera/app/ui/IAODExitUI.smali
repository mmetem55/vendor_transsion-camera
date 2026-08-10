.class public interface abstract Lcom/transsion/camera/app/ui/IAODExitUI;
.super Ljava/lang/Object;
.source "IAODExitUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# virtual methods
.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract onDown(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onSingleTapUp(FF)Z
.end method

.method public abstract onUp(Landroid/view/MotionEvent;)Z
.end method

.method public abstract pause()V
.end method

.method public abstract setExitListener(Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;)V
.end method

.method public abstract unInit()V
.end method
