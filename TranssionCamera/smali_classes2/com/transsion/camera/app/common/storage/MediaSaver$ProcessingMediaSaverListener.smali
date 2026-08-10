.class public abstract Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;
.super Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;
.source "MediaSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/MediaSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProcessingMediaSaverListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract removeProcessingMedia()V
.end method
