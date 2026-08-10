.class public interface abstract Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;
.super Ljava/lang/Object;
.source "MediaSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/MediaSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaSaverListener"
.end annotation


# virtual methods
.method public abstract onFileSaved(Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
