.class public interface abstract Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;
.super Ljava/lang/Object;
.source "IPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract playMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Landroid/content/res/AssetFileDescriptor;)V
.end method

.method public abstract playMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Ljava/lang/String;)V
.end method

.method public abstract stopPlay()V
.end method
