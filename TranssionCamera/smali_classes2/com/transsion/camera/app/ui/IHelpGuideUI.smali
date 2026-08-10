.class public interface abstract Lcom/transsion/camera/app/ui/IHelpGuideUI;
.super Ljava/lang/Object;
.source "IHelpGuideUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# virtual methods
.method public abstract getEntryView()Landroid/view/View;
.end method

.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract onScreenFormChanged(IZ)V
.end method

.method public abstract onSetupViews()V
.end method

.method public abstract refreshIconState()V
.end method

.method public abstract setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateIcon(ZLandroid/view/View$OnClickListener;)V
.end method

.method public abstract updatePreviewRect(Landroid/graphics/Rect;)V
.end method

.method public abstract updateVisibility(Z)V
.end method
