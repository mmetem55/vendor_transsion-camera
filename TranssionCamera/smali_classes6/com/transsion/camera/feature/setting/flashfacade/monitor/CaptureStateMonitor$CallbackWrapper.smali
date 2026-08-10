.class final Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;
.super Ljava/lang/Object;
.source "CaptureStateMonitor.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackWrapper"
.end annotation


# static fields
.field private static final MIN_CAPTURE_TIME:J = 0xc8L


# instance fields
.field private final mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCaptureEnd:Z

.field private mCaptureStart:Z

.field private mCaptureStartTime:J

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->reset()V

    return-void
.end method

.method private prefixLog(Ljava/lang/String;)V
    .locals 3

    .line 112
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private reset()V
    .locals 3

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStart:Z

    .line 183
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureEnd:Z

    const-wide/16 v1, 0x0

    .line 184
    iput-wide v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStartTime:J

    .line 185
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method onCaptureEnd()V
    .locals 6

    .line 146
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureEnd:Z

    const-string v1, ", mCallbackCount: "

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureEnd:Z

    .line 148
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStart:Z

    if-nez v0, :cond_0

    const-string v0, "ignore capture end when capture not started!"

    .line 149
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    return-void

    .line 152
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid capture end, mCaptureCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_1
    return-void

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 165
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureEnd mCaptureCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "reissue onNextReady"

    .line 169
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->access$200(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->access$200(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;->onNextReady()V

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "correct mCallbackCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onCaptureStart()V
    .locals 2

    .line 118
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStart:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStart:Z

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureStartTime:J

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureStart mCaptureCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallbackCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->access$200(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->access$200(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;->onCaptureStart()V

    :cond_1
    return-void
.end method

.method public onNextReady()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNextReady mCallbackCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->mCallbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->prefixLog(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->access$200(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->access$200(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;->onNextReady()V

    :cond_1
    return-void
.end method
