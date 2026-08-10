.class public interface abstract Lcom/transsion/camera/feature/common/IDataStream$IDataListener;
.super Ljava/lang/Object;
.source "IDataStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/IDataStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDataListener"
.end annotation


# virtual methods
.method public abstract onDataAvailable(Landroid/util/Pair;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "[B>;III)V"
        }
    .end annotation
.end method
