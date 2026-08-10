.class public Lcom/transsion/camera/adapter/CameraProxy$DeferredData;
.super Ljava/lang/Object;
.source "CameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferredData"
.end annotation


# instance fields
.field public auxPreviewSize:Landroid/util/Size;

.field public backgroundPreviewSize:Landroid/util/Size;

.field public channel:Lcom/transsion/camera/adapter/CameraDataChannel;

.field public previewSize:Landroid/util/Size;

.field public previewSurfaceType:I

.field public supportAuxPreview:Z

.field public supportBackgroundPreview:Z


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;ZZILcom/transsion/camera/adapter/CameraDataChannel;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSize:Landroid/util/Size;

    .line 29
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->auxPreviewSize:Landroid/util/Size;

    .line 30
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->backgroundPreviewSize:Landroid/util/Size;

    .line 31
    iput-boolean p4, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportAuxPreview:Z

    .line 32
    iput-boolean p5, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportBackgroundPreview:Z

    .line 33
    iput p6, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSurfaceType:I

    .line 34
    iput-object p7, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->channel:Lcom/transsion/camera/adapter/CameraDataChannel;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeferredData{previewSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", auxPreviewSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->auxPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundPreviewSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->backgroundPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previewSurfaceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSurfaceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->channel:Lcom/transsion/camera/adapter/CameraDataChannel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
