.class public Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;
.super Ljava/lang/Object;
.source "MySensorManager.java"


# instance fields
.field private mAccelerometerValues:[F

.field private mContext:Landroid/content/Context;

.field private mGyroValues:[F

.field private mIsSensorListenerRegistered:Z

.field private final mLock:Ljava/lang/Object;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mIsSensorListenerRegistered:Z

    .line 98
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;-><init>(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)Ljava/lang/Object;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)[F
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mAccelerometerValues:[F

    return-object p1
.end method

.method static synthetic access$202(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)[F
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mGyroValues:[F

    return-object p1
.end method


# virtual methods
.method public declared-synchronized setContext(Landroid/content/Context;)V
    .locals 0

    monitor-enter p0

    .line 19
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unInit()V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->unRegisterSensorListeners()V

    return-void
.end method

.method public declared-synchronized unRegisterSensorListeners()V
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 42
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mIsSensorListenerRegistered:Z

    if-eqz v1, :cond_1

    const-string v1, "sensor"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mIsSensorListenerRegistered:Z

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 53
    :try_start_1
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mAccelerometerValues:[F

    .line 54
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mGyroValues:[F

    .line 55
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 55
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
