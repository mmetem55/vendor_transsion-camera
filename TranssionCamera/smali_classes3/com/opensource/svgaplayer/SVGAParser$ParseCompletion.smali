.class public interface abstract Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
.super Ljava/lang/Object;
.source "SVGAParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/SVGAParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParseCompletion"
.end annotation


# virtual methods
.method public abstract onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onError()V
.end method
