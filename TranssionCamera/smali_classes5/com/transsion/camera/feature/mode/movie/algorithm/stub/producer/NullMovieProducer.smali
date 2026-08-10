.class public Lcom/transsion/camera/feature/mode/movie/algorithm/stub/producer/NullMovieProducer;
.super Ljava/lang/Object;
.source "NullMovieProducer.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

.method public produceMovie(Ljava/lang/String;Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;)V
    .locals 0

    .line 18
    invoke-interface {p2}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;->onExportFailed()V

    return-void
.end method

.method public setMovieHeight(I)V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
