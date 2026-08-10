.class public interface abstract Lcom/transsion/camera/app/ui/IThumbnailUI;
.super Ljava/lang/Object;
.source "IThumbnailUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# virtual methods
.method public abstract getThumbnail()Landroid/graphics/Bitmap;
.end method

.method public abstract getThumbnailRootTop()I
.end method

.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract isUpdateThumbnail()Z
.end method

.method public abstract onOrientationChanged(IZ)V
.end method

.method public abstract setOnThumbnailClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setupViews()V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateThumbnail(Landroid/graphics/Bitmap;Z)V
.end method
