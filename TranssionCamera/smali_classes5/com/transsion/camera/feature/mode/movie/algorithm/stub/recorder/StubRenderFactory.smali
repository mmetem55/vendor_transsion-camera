.class public Lcom/transsion/camera/feature/mode/movie/algorithm/stub/recorder/StubRenderFactory;
.super Ljava/lang/Object;
.source "StubRenderFactory.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/algorithm/IRenderFactory;


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/stub/recorder/StubRenderFactory;->mType:I

    return-void
.end method


# virtual methods
.method public createRender()Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 17
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/stub/recorder/StubRenderFactory;->mType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 18
    new-instance p0, Lcom/transsion/camera/feature/mode/movie/algorithm/stub/recorder/NullRenderImp;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/stub/recorder/NullRenderImp;-><init>()V

    return-object p0

    .line 20
    :cond_0
    new-instance p0, Lcom/transsion/camera/feature/mode/movie/algorithm/stub/recorder/StubRenderImp;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/stub/recorder/StubRenderImp;-><init>()V

    return-object p0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method
