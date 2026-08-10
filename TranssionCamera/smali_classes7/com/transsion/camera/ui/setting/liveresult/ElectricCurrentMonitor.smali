.class public Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;
.super Ljava/lang/Object;
.source "ElectricCurrentMonitor.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentAvg:Ljava/lang/String;

.field private mCurrentNow:Ljava/lang/String;

.field private mWorkExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mWorkFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1rTyneR9fHP8iIxZZPaW-kOsUXY(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->lambda$start$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cEVOP1Q56r0F21eALQG1PbKorgs(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->lambda$start$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ElectricCurrentMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentNow:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentAvg:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$start$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ElectricCurrentMonitor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic lambda$start$1()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentNow:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v1, 0x3

    .line 48
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentAvg:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public printResult()Ljava/lang/CharSequence;
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentNow:Ljava/lang/String;

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mCurrentAvg:Ljava/lang/String;

    .line 72
    new-instance v1, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    invoke-direct {v1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;-><init>()V

    const-string v2, " CURRENT :"

    .line 73
    invoke-virtual {v1, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v2

    const-string v3, "\t\t\tNOW: "

    invoke-virtual {v2, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    :cond_0
    const-string v0, "\t\t\t\tAVG: "

    .line 77
    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    if-eqz p0, :cond_1

    .line 79
    invoke-virtual {v1, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    :cond_1
    return-object v1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public start()V
    .locals 8

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mWorkExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 34
    new-instance v1, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mWorkExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "batterymanager"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->stop()V

    .line 41
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mWorkExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mWorkFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public stop()V
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mWorkFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 55
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->stop()V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mWorkExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mBatteryManager:Landroid/os/BatteryManager;

    .line 65
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->mContext:Landroid/content/Context;

    return-void
.end method
