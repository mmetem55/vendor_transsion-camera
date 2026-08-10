.class public final Lcom/opensource/svgaplayer/SVGAImageView$createParseCompletion$1;
.super Ljava/lang/Object;
.source "SVGAImageView.kt"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAImageView;->createParseCompletion(Ljava/lang/ref/WeakReference;)Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/opensource/svgaplayer/SVGAImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/opensource/svgaplayer/SVGAImageView;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$createParseCompletion$1;->$ref:Ljava/lang/ref/WeakReference;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView$createParseCompletion$1;->$ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->access$startAnimation(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
