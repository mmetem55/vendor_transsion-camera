.class public Lcom/transsion/camera/gsensor/StableMonitor;
.super Ljava/lang/Object;
.source "StableMonitor.java"

# interfaces
.implements Lcom/transsion/camera/gsensor/IStableMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/gsensor/StableMonitor$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sStableThresholdX:D

.field private static sStableThresholdY:D

.field private static sStableThresholdZ:D


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGyroDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/transsion/camera/gsensor/GyroData;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsSensorListenerRegistered:Z

.field private mLastStatus:I

.field private final mLock:Ljava/lang/Object;

.field private mSensorEventIndex:I

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mStartDetectionTimestamp:J

.field private mStartRecordTimestamp:J

.field private mStatusCallback:Lcom/transsion/camera/gsensor/IStableMonitor$IStatusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StableMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/gsensor/StableMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-wide v0, 0x3f80624dd2f1a9fcL    # 0.008

    .line 34
    sput-wide v0, Lcom/transsion/camera/gsensor/StableMonitor;->sStableThresholdX:D

    .line 35
    sput-wide v0, Lcom/transsion/camera/gsensor/StableMonitor;->sStableThresholdY:D

    .line 36
    sput-wide v0, Lcom/transsion/camera/gsensor/StableMonitor;->sStableThresholdZ:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mIsSensorListenerRegistered:Z

    .line 24
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mLock:Ljava/lang/Object;

    .line 25
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mGyroDataList:Ljava/util/LinkedList;

    const-wide/16 v1, 0x0

    .line 43
    iput-wide v1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mStartRecordTimestamp:J

    .line 44
    iput v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mSensorEventIndex:I

    .line 45
    iput-wide v1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mStartDetectionTimestamp:J

    .line 53
    iput v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mLastStatus:I

    .line 164
    new-instance v0, Lcom/transsion/camera/gsensor/StableMonitor$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/gsensor/StableMonitor$1;-><init>(Lcom/transsion/camera/gsensor/StableMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/gsensor/StableMonitor;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/gsensor/StableMonitor;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/gsensor/StableMonitor;Lcom/transsion/camera/gsensor/GyroData;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/transsion/camera/gsensor/StableMonitor;->doCheckValue(Lcom/transsion/camera/gsensor/GyroData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/gsensor/StableMonitor;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/gsensor/StableMonitor;->doResetValue()V

    return-void
.end method

.method private doCheckValue(Lcom/transsion/camera/gsensor/GyroData;)V
    .locals 8

    .line 219
    iget-wide v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mStartRecordTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mStartRecordTimestamp:J

    .line 222
    :cond_0
    iget v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mSensorEventIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mSensorEventIndex:I

    int-to-long v0, v0

    const-wide/16 v4, 0x3

    rem-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    return-void

    .line 225
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 227
    iget-wide v4, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mStartRecordTimestamp:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mGyroDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 231
    :cond_2
    iget-object v4, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mGyroDataList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 232
    iget-object v4, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mGyroDataList:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 234
    iget-wide v4, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mStartDetectionTimestamp:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_4

    sub-long v2, v0, v4

    const-wide/16 v4, 0xc8

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    goto :goto_0

    .line 244
    :cond_3
    iget v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mLastStatus:I

    goto :goto_2

    .line 236
    :cond_4
    :goto_0
    iput-wide v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mStartDetectionTimestamp:J

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mGyroDataList:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/transsion/camera/gsensor/StableMonitor;->isStable(Ljava/util/LinkedList;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_5
    const/4 p1, 0x1

    :goto_1
    move v0, p1

    .line 249
    :goto_2
    iget p1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mLastStatus:I

    if-eq p1, v0, :cond_6

    .line 250
    iput v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mLastStatus:I

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mStatusCallback:Lcom/transsion/camera/gsensor/IStableMonitor$IStatusCallback;

    if-eqz p0, :cond_6

    .line 253
    invoke-interface {p0, v0}, Lcom/transsion/camera/gsensor/IStableMonitor$IStatusCallback;->onStatusUpdate(I)V

    :cond_6
    return-void
.end method

.method private doResetValue()V
    .locals 2

    .line 259
    sget-object v0, Lcom/transsion/camera/gsensor/StableMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StableMonitor doResetValue."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 260
    iput-wide v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mStartRecordTimestamp:J

    .line 261
    iput-wide v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mStartDetectionTimestamp:J

    const/4 v0, 0x0

    .line 262
    iput v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mSensorEventIndex:I

    .line 263
    iget-object v1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mGyroDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 264
    iput v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mLastStatus:I

    return-void
.end method

.method private isStable(Ljava/util/LinkedList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/transsion/camera/gsensor/GyroData;",
            ">;)Z"
        }
    .end annotation

    .line 269
    invoke-virtual {p1}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/gsensor/StableMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/gsensor/StableMonitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object p0

    .line 270
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 275
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/gsensor/StableMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/gsensor/StableMonitor$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object p0

    .line 276
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v1

    .line 281
    :goto_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/gsensor/StableMonitor$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/transsion/camera/gsensor/StableMonitor$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object p0

    .line 282
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 283
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v1

    .line 286
    :cond_2
    sget-wide p0, Lcom/transsion/camera/gsensor/StableMonitor;->sStableThresholdX:D

    cmpl-double p0, v3, p0

    if-gtz p0, :cond_4

    sget-wide p0, Lcom/transsion/camera/gsensor/StableMonitor;->sStableThresholdY:D

    cmpl-double p0, v5, p0

    if-gtz p0, :cond_4

    sget-wide p0, Lcom/transsion/camera/gsensor/StableMonitor;->sStableThresholdZ:D

    cmpl-double p0, v1, p0

    if-lez p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized registerSensorListeners()V
    .locals 5

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 135
    iget-boolean v1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mIsSensorListenerRegistered:Z

    if-nez v1, :cond_1

    const-string v1, "sensor"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    .line 139
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 140
    iget-object v3, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 142
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 146
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mIsSensorListenerRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unRegisterSensorListeners()V
    .locals 2

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 153
    iget-boolean v1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mIsSensorListenerRegistered:Z

    if-eqz v1, :cond_1

    const-string v1, "sensor"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mIsSensorListenerRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getLastStatus()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mLastStatus:I

    return p0
.end method

.method public init()V
    .locals 5

    const-string v0, "debug.supernight.stablethreshold"

    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    int-to-double v1, v0

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v1, v3

    .line 64
    sput-wide v1, Lcom/transsion/camera/gsensor/StableMonitor;->sStableThresholdX:D

    .line 65
    sput-wide v1, Lcom/transsion/camera/gsensor/StableMonitor;->sStableThresholdY:D

    .line 66
    sput-wide v1, Lcom/transsion/camera/gsensor/StableMonitor;->sStableThresholdZ:D

    .line 68
    :cond_0
    sget-object v1, Lcom/transsion/camera/gsensor/StableMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StableMonitor init. StableThreshold debug: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAM_StableMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v1, Lcom/transsion/camera/gsensor/StableMonitor$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/transsion/camera/gsensor/StableMonitor$MyHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/gsensor/StableMonitor;)V

    iput-object v1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 2

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setStatusCallback(Lcom/transsion/camera/gsensor/IStableMonitor$IStatusCallback;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mStatusCallback:Lcom/transsion/camera/gsensor/IStableMonitor$IStatusCallback;

    if-eqz p1, :cond_0

    .line 124
    iget p0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mLastStatus:I

    invoke-interface {p1, p0}, Lcom/transsion/camera/gsensor/IStableMonitor$IStatusCallback;->onStatusUpdate(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    sget-object v0, Lcom/transsion/camera/gsensor/StableMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StableMonitor start."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/transsion/camera/gsensor/StableMonitor;->resume()V

    .line 79
    invoke-direct {p0}, Lcom/transsion/camera/gsensor/StableMonitor;->registerSensorListeners()V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x66

    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 87
    :try_start_0
    sget-object v0, Lcom/transsion/camera/gsensor/StableMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StableMonitor stop."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/transsion/camera/gsensor/StableMonitor;->unRegisterSensorListeners()V

    .line 89
    invoke-virtual {p0}, Lcom/transsion/camera/gsensor/StableMonitor;->pause()V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x66

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unInit()V
    .locals 2

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/gsensor/StableMonitor;->unRegisterSensorListeners()V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/gsensor/StableMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/gsensor/StableMonitor;->doResetValue()V

    return-void
.end method
