.class Lcom/transsion/camera/app/common/mode/ImageProcessor$1;
.super Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;
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

.field final synthetic val$finalProcessMediaItem:Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

.field final synthetic val$isBGImage:Z

.field final synthetic val$jpeg:[B


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;Lcom/transsion/camera/app/common/provider/ProcessMediaItem;Z[B)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$finalProcessMediaItem:Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    iput-boolean p3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$isBGImage:Z

    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$jpeg:[B

    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;I)V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] isBGImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$isBGImage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$isBGImage:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getBGImageSavedListener()Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[onFileSaved] BGImageSavedListener is null"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$jpeg:[B

    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->doOnBGImageSaved(Landroid/net/Uri;[B)V

    .line 166
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFileSaved] mPictureCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v3, v3, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_2

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    const/4 p2, 0x1

    invoke-interface {p0, p1, v0, p2}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    .line 170
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->captureDone()V

    return-void
.end method

.method public removeProcessingMedia()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;->val$finalProcessMediaItem:Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onProcessedMediaUriSaved(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V

    return-void
.end method
