.class Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;
.super Ljava/lang/Object;
.source "GLDataBufferRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->stopRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;->this$0:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$1500(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2$1;-><init>(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;)V

    invoke-virtual {v0, v1}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->stopRecording(Ljava/lang/Runnable;)V

    return-void
.end method
