.class public Lcom/transsion/camera/feature/mode/movie/algorithm/ProducerFactory;
.super Ljava/lang/Object;
.source "ProducerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;)Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;
    .locals 1

    .line 10
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;)V

    return-object v0
.end method
