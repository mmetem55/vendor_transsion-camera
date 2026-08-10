.class public interface abstract Lcom/transsion/camera/feature/mode/movie/ui/IMovieUI;
.super Ljava/lang/Object;
.source "IMovieUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/ui/IMovieUI$ISubUI;,
        Lcom/transsion/camera/feature/mode/movie/ui/IMovieUI$State;
    }
.end annotation


# static fields
.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0xb4

.field public static final ORIENTATION_270:I = 0x10e

.field public static final ORIENTATION_90:I = 0x5a

.field public static final RECORDER:I = 0x1

.field public static final TEMPLATE:I


# virtual methods
.method public abstract init(II)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract synthetic onScreenFormChanged(IZ)V
.end method

.method public abstract onShutterClick()Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateBatteryStatus(II)V
.end method

.method public abstract updateCurrentState(I)V
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/movie/ui/IMovieUI$State;
        .end annotation
    .end param
.end method

.method public abstract updateOrientation(I)V
.end method
