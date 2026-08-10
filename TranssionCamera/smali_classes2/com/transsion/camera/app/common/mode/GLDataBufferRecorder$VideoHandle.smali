.class Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;
.super Landroid/os/Handler;
.source "GLDataBufferRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoHandle"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;-><init>(Landroid/os/Looper;Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V
    .locals 1

    .line 141
    iget p0, p1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 162
    invoke-static {}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore msg: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$800(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V

    .line 159
    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$900(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$700(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$600(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V

    goto :goto_0

    .line 149
    :cond_3
    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$500(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V

    goto :goto_0

    .line 146
    :cond_4
    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$400(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V

    goto :goto_0

    .line 143
    :cond_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/util/Size;

    invoke-static {p2, p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$300(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;Landroid/util/Size;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoHandle handleMessage dataBufferRecorder is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$200(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " start"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;->processMessage(Landroid/os/Message;Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 137
    invoke-static {}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->access$200(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end process time:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
