.class public Lcom/transsion/camera/feature/mode/movie/player/command/SetAssetsDataSource;
.super Lcom/transsion/camera/feature/mode/movie/player/command/SetDataSource;
.source "SetAssetsDataSource.java"


# instance fields
.field private mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Landroid/content/res/AssetFileDescriptor;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/mode/movie/player/command/SetDataSource;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    .line 26
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/player/command/SetAssetsDataSource;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method


# virtual methods
.method protected performExecute(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;)V
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->setLoop(Z)V

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/command/SetAssetsDataSource;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method
