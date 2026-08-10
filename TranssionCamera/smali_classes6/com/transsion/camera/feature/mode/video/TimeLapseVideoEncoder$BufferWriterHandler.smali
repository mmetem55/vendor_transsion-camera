.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferWriterHandler;
.super Landroid/os/Handler;
.source "TimeLapseVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferWriterHandler"
.end annotation


# static fields
.field public static final MSG_ADD_BUFFER:I = 0x0

.field public static final MSG_FORMAT_CHANGED:I = 0x1


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
.method public constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V
    .locals 0

    .line 445
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 446
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferWriterHandler;->encoder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferWriterHandler;->encoder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    if-nez p0, :cond_0

    .line 453
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleMessage videoEncoder ref is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 456
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 465
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MSG_FORMAT_CHANGED"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 466
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$1300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 467
    :try_start_0
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$1402(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Z)Z

    .line 468
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$1500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 469
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$1600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z

    .line 471
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 458
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;

    if-eqz v0, :cond_4

    .line 459
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v1, p1

    check-cast v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    check-cast p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;

    iget-boolean p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;->mIsEOS:Z

    invoke-static {p0, v0, v1, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    :cond_4
    :goto_0
    return-void
.end method
