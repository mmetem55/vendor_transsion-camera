.class public interface abstract Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;
.super Ljava/lang/Object;
.source "IRecorderRender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clearEffect(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract createEffect(IILjava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract drawTexture(IIIII)V
.end method

.method public abstract installEffect(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract renderEffect(Ljava/lang/Object;IIIIJ)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIIJ)I"
        }
    .end annotation
.end method

.method public abstract renderOesTextureTo2DTexture(IIIIIZ)V
.end method

.method public abstract requestTexturePair(II)[I
.end method

.method public abstract updateVideoEncodeTexture(I)V
.end method
