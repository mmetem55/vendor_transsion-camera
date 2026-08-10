.class Lcom/transsion/camera/utils/VideoSurfaceUtil$1;
.super Ljava/lang/Object;
.source "VideoSurfaceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/utils/VideoSurfaceUtil;->createVideoSurface(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/VideoSurfaceUtil;

.field final synthetic val$cameraId:Ljava/lang/String;

.field final synthetic val$quality:I

.field final synthetic val$tempFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/transsion/camera/utils/VideoSurfaceUtil;ILjava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->this$0:Lcom/transsion/camera/utils/VideoSurfaceUtil;

    iput p2, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$quality:I

    iput-object p3, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$tempFile:Ljava/io/File;

    iput-object p4, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$cameraId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->this$0:Lcom/transsion/camera/utils/VideoSurfaceUtil;

    iget v1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$quality:I

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->access$002(Lcom/transsion/camera/utils/VideoSurfaceUtil;I)I

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->this$0:Lcom/transsion/camera/utils/VideoSurfaceUtil;

    iget v1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$quality:I

    iget-object v2, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$tempFile:Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$cameraId:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->access$100(Lcom/transsion/camera/utils/VideoSurfaceUtil;ILjava/io/File;Ljava/lang/String;)V

    return-void
.end method
