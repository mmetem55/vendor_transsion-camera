.class Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;
.super Ljava/lang/Object;
.source "CommonPhotoImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmPostViewData([BIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

.field final synthetic val$imageFormat:I

.field final synthetic val$orientation:I

.field final synthetic val$postView:[B

.field final synthetic val$yuvHeight:I

.field final synthetic val$yuvWidth:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;[BIIII)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$postView:[B

    iput p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$imageFormat:I

    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$yuvWidth:I

    iput p5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$yuvHeight:I

    iput p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "algorithmPostViewData"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$postView:[B

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "algorithmPostViewData postView is null."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 610
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$postView:[B

    iget v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$imageFormat:I

    iget v5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$yuvWidth:I

    iget v6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$yuvHeight:I

    iget v7, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$orientation:I

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmProcessPostView([BIIII)[B

    move-result-object v9

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->access$1700(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 614
    :try_start_0
    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget v10, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$imageFormat:I

    iget v11, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$yuvWidth:I

    iget v12, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$yuvHeight:I

    iget v13, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$orientation:I

    .line 615
    invoke-static/range {v8 .. v13}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->access$1800(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;[BIIII)Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;

    move-result-object v1

    .line 616
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-static {v2, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->access$1900(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)V

    .line 617
    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->access$1600(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)[B

    move-result-object v1

    .line 618
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->onPostViewData([B)V

    return-void

    :catchall_0
    move-exception p0

    .line 618
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
