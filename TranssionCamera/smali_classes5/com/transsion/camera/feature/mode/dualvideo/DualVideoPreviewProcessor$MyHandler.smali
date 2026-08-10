.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyHandler;
.super Landroid/os/Handler;
.source "DualVideoPreviewProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field mPreviewProcessorRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .locals 1

    .line 1416
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1417
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyHandler;->mPreviewProcessorRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;)V
    .locals 0

    .line 1413
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyHandler;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1422
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1423
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyHandler;->mPreviewProcessorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-nez p0, :cond_0

    .line 1425
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "previewProcessor has been gc"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1428
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg.arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1429
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1435
    :pswitch_0
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    .line 1438
    :pswitch_1
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1439
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1431
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    goto :goto_2

    .line 1443
    :cond_2
    :goto_1
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
