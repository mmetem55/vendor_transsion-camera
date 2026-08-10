.class Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;
.super Ljava/lang/Object;
.source "CommonPhotoImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

.field final synthetic val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

.field final synthetic val$listener:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;

.field final synthetic val$results:Lcom/transsion/camera/adapter/CameraResults;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;->val$results:Lcom/transsion/camera/adapter/CameraResults;

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;->val$listener:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;->val$results:Lcom/transsion/camera/adapter/CameraResults;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->access$200(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->access$300(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    .line 326
    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->access$400(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    invoke-static {v5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->access$500(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    invoke-static {v6}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->access$600(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)I

    move-result v6

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    invoke-static {v7}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->access$700(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)Z

    move-result v7

    .line 325
    invoke-static/range {v0 .. v7}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->access$800(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;->val$listener:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;

    if-eqz p0, :cond_0

    .line 328
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;->onExecuted()V

    :cond_0
    return-void
.end method
