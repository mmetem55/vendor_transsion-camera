.class Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;
.super Landroid/os/Handler;
.source "VideoEncoderCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioHandler"
.end annotation


# instance fields
.field private encoderWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;)V
    .locals 1

    .line 491
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 492
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;->encoderWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 497
    iget p1, p1, Landroid/os/Message;->what:I

    .line 498
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;->encoderWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->handleAudioResume()V

    goto :goto_0

    .line 513
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->handleAudioPause()V

    goto :goto_0

    .line 519
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 510
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->handleAudioStep()V

    goto :goto_0

    .line 507
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->handleStopRecord()V

    goto :goto_0

    .line 504
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->handleStartRecord()V

    :goto_0
    return-void
.end method
