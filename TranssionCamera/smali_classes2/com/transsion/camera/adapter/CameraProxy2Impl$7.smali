.class Lcom/transsion/camera/adapter/CameraProxy2Impl$7;
.super Ljava/lang/Object;
.source "CameraProxy2Impl.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .locals 0

    .line 2557
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6

    .line 2560
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2565
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2900(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2566
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2900(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    .line 2567
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v5

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;->onPreviewFrame(Landroid/media/Image;III)V

    goto :goto_0

    .line 2569
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2802(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z

    goto :goto_1

    .line 2571
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2802(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z

    .line 2574
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1400(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2575
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1400(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    move-result-object p0

    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;->onPreviewFrame(Landroid/media/Image;II)V

    .line 2577
    :cond_3
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void
.end method
