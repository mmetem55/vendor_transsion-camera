.class Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;
.super Ljava/lang/Object;
.source "CommonVideoMode.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoScannerConnectionClinet"
.end annotation


# instance fields
.field mModeRefence:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/common/mode/CommonVideoMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V
    .locals 1

    .line 1470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1471
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;->mModeRefence:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 2

    .line 1475
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;->mModeRefence:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    if-eqz p0, :cond_0

    .line 1477
    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->access$100(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Ljava/lang/String;

    move-result-object v0

    .line 1478
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    if-eqz v0, :cond_0

    .line 1480
    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->access$200(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Landroid/media/MediaScannerConnection;

    move-result-object p0

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1487
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;->mModeRefence:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    if-eqz p0, :cond_0

    .line 1489
    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->access$200(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Landroid/media/MediaScannerConnection;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaScannerConnection;->disconnect()V

    :cond_0
    return-void
.end method
