.class Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;
.super Landroid/os/Handler;
.source "GLMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncoderHandler"
.end annotation


# instance fields
.field private mWeakEncoder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;)V
    .locals 1

    .line 311
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 312
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;->mWeakEncoder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 317
    iget v0, p1, Landroid/os/Message;->what:I

    .line 318
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 320
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;->mWeakEncoder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    if-nez p0, :cond_0

    const-string p0, "GLMediaRecorder"

    const-string p1, "EncoderHandler.handleMessage: encoder is null"

    .line 322
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 353
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled msg what="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 350
    :pswitch_0
    invoke-static {p0}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->access$600(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;)V

    goto :goto_0

    .line 347
    :pswitch_1
    invoke-static {p0}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->access$500(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;)V

    goto :goto_0

    .line 344
    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    .line 341
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/opengl/EGLContext;

    invoke-static {p0, p1}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->access$400(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;Landroid/opengl/EGLContext;)V

    goto :goto_0

    .line 338
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->access$300(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;I)V

    goto :goto_0

    .line 334
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 335
    check-cast v1, [F

    invoke-static {p0, v1, p1}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->access$200(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;[FI)V

    goto :goto_0

    .line 331
    :pswitch_6
    invoke-static {p0}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->access$100(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;)V

    goto :goto_0

    .line 328
    :pswitch_7
    check-cast v1, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;

    invoke-static {p0, v1}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->access$000(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
