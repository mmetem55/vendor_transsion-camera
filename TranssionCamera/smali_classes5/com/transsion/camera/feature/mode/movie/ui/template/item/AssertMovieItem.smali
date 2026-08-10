.class public Lcom/transsion/camera/feature/mode/movie/ui/template/item/AssertMovieItem;
.super Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;
.source "AssertMovieItem.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/template/item/AssertMovieItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/AssertMovieItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;)V

    .line 34
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 35
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getPreviewVideoPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/AssertMovieItem;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 37
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/ui/template/item/AssertMovieItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "openFd failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public playMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/AssertMovieItem;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-nez p0, :cond_0

    .line 44
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/AssertMovieItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playMovie mAssetFileDescriptor is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;->playMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method
