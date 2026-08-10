.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;
.super Landroid/os/Handler;
.source "TimeLapseVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_TIME_OUT:I = 0x1


# instance fields
.field private encoder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V
    .locals 1

    .line 420
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 421
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;->encoder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;->encoder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    if-nez p0, :cond_0

    .line 428
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "MainHandler videoEncoder ref is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 431
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 433
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "MSG_TIME_OUT, stop recording"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 434
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onFrameBufferTimeOut()V

    :goto_0
    return-void
.end method
