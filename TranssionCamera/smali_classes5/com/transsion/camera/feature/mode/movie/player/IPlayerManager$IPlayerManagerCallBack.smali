.class public interface abstract Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;
.super Ljava/lang/Object;
.source "IPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPlayerManagerCallBack"
.end annotation


# virtual methods
.method public abstract getPlayerState()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
.end method

.method public abstract setMovieView(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;)V
.end method

.method public abstract setPlayerState(Lcom/transsion/camera/feature/mode/movie/player/PlayerState;)V
.end method
