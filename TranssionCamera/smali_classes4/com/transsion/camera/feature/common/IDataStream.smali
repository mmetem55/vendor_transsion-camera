.class interface abstract Lcom/transsion/camera/feature/common/IDataStream;
.super Ljava/lang/Object;
.source "IDataStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/common/IDataStream$IDataListener;,
        Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;
    }
.end annotation


# virtual methods
.method public abstract createStream()V
.end method

.method public abstract destroyStream()V
.end method

.method public abstract setDataListener(Lcom/transsion/camera/feature/common/IDataStream$IDataListener;)V
.end method

.method public abstract setStreamListener(Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;)V
.end method

.method public abstract updateState(Z)V
.end method
