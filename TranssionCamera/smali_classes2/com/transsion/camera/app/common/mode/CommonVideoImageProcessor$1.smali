.class Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;
.super Ljava/lang/Object;
.source "CommonVideoImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

.field final synthetic val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

.field final synthetic val$listener:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;

.field final synthetic val$results:Lcom/transsion/camera/adapter/CameraResults;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;->val$results:Lcom/transsion/camera/adapter/CameraResults;

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;->val$listener:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;->val$results:Lcom/transsion/camera/adapter/CameraResults;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->access$000(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->access$100(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

    .line 112
    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->access$200(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

    invoke-static {v5}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->access$300(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

    invoke-static {v6}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->access$400(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)I

    move-result v6

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;->val$imageInfo:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

    invoke-static {v7}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->access$500(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)Z

    move-result v7

    .line 111
    invoke-static/range {v0 .. v7}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->access$600(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;->val$listener:Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;

    if-eqz p0, :cond_0

    .line 114
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;->onExecuted()V

    :cond_0
    return-void
.end method
