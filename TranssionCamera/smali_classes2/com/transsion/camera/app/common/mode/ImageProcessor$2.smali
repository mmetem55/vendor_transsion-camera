.class Lcom/transsion/camera/app/common/mode/ImageProcessor$2;
.super Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

.field final synthetic val$isBGImage:Z

.field final synthetic val$jpeg:[B


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z[B)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$isBGImage:Z

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$jpeg:[B

    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;I)V
    .locals 3

    .line 179
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$isBGImage:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$jpeg:[B

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->doOnBGImageSaved(Landroid/net/Uri;[B)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] mPictureCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 184
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object p2, p2, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->val$isBGImage:Z

    invoke-interface {p2, p1, v1, v0}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->access$002(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)Z

    .line 187
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->access$100(Lcom/transsion/camera/app/common/mode/ImageProcessor;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    new-instance p2, Lcom/transsion/camera/app/common/mode/NullPictureCallback;

    invoke-direct {p2}, Lcom/transsion/camera/app/common/mode/NullPictureCallback;-><init>()V

    iput-object p2, p1, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->access$102(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)Z

    .line 191
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->captureDone()V

    return-void
.end method
