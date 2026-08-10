.class Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer$1;
.super Ljava/lang/Object;
.source "FaceEmojiRenderer.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 36
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object v2

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->access$000(Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;)Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->setFormatAndData(III[B)V

    .line 38
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method
