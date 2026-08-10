.class public interface abstract Lcom/transsion/camera/feature/mode/movie/ui/IMovieUI$ISubUI;
.super Ljava/lang/Object;
.source "IMovieUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/IMovieUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISubUI"
.end annotation


# virtual methods
.method public abstract init(II)V
.end method

.method public abstract synthetic onScreenFormChanged(IZ)V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateOrientation(I)V
.end method

.method public abstract updateVisibility(ZZ)V
.end method
