.class public interface abstract Lcom/transsion/camera/app/ui/IIntentReviewUI;
.super Ljava/lang/Object;
.source "IIntentReviewUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;
    }
.end annotation


# virtual methods
.method public abstract getReviewViewSize()Landroid/util/Size;
.end method

.method public abstract hideReviewView()Z
.end method

.method public abstract init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;)V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setNavigationBarHeight(I)V
.end method

.method public abstract showReviewView(Landroid/graphics/Bitmap;)V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateReviewViewState(Z)V
.end method
