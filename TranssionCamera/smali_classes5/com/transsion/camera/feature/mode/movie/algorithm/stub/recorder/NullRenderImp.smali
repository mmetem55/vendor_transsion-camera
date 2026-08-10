.class Lcom/transsion/camera/feature/mode/movie/algorithm/stub/recorder/NullRenderImp;
.super Ljava/lang/Object;
.source "NullRenderImp.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEffect(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public createEffect(IILjava/lang/String;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public drawTexture(IIIII)V
    .locals 0

    return-void
.end method

.method public installEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public renderEffect(Ljava/lang/Object;IIIIJ)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public renderOesTextureTo2DTexture(IIIIIZ)V
    .locals 0

    return-void
.end method

.method public requestTexturePair(II)[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    return-object p0
.end method

.method public updateVideoEncodeTexture(I)V
    .locals 0

    return-void
.end method
