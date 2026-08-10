.class public Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;
.super Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;
.source "LogTimerRecord.java"


# static fields
.field private static volatile sInstance:Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;-><init>(IZZ)V

    return-void
.end method

.method public static RECORD(Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-static {}, Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;->getInstance()Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->record(Ljava/lang/String;)V

    return-void
.end method

.method public static STOP(Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-static {}, Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;->getInstance()Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->stop(Ljava/lang/String;)V

    return-void
.end method

.method private static getInstance()Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;
    .locals 5

    .line 13
    sget-object v0, Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;->sInstance:Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;

    if-nez v0, :cond_1

    .line 14
    const-class v0, Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;->sInstance:Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;-><init>(IZZ)V

    sput-object v1, Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;->sInstance:Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;

    .line 18
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 20
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;->sInstance:Lcom/bytedance/labcv/core/util/timer_record/LogTimerRecord;

    return-object v0
.end method


# virtual methods
.method protected recordAverage(Ljava/lang/String;DI)V
    .locals 2

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr p2, v0

    .line 46
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const-string p1, "%s average time is %f ms in %d round"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimerRecord"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected recordOnce(Ljava/lang/String;J)V
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    long-to-double p1, p2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr p1, v0

    .line 41
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const-string p1, "%s %f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimerRecord"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
