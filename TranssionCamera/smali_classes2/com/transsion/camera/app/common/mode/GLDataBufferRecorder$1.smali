.class Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;
.super Ljava/lang/Object;
.source "GLDataBufferRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->startRecording(Landroid/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

.field final synthetic val$previewSize:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;Landroid/util/Size;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->val$previewSize:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1002(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;Z)Z

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1100(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1100(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1102(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;I)I

    .line 214
    invoke-static {}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lily... Start record, height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1100(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mIsMuteRecoder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1200(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1500(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    move-result-object v0

    new-instance v9, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    .line 216
    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1300(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v2

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->val$previewSize:Landroid/util/Size;

    .line 217
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v1, v5, v6}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1400(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;II)I

    move-result v5

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v6

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1100(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)I

    move-result v7

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1200(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Z

    move-result v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;-><init>(Lcom/transsion/camera/app/common/mode/VideoFileSpec;IIILandroid/opengl/EGLContext;IZ)V

    .line 215
    invoke-virtual {v0, v9}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->startRecording(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;)V

    return-void
.end method
