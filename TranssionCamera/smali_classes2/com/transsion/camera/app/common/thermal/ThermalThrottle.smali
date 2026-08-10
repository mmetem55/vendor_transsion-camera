.class public Lcom/transsion/camera/app/common/thermal/ThermalThrottle;
.super Lcom/transsion/camera/thermal/PlatformThermal;
.source "ThermalThrottle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIThermalThrottleChangeListener:Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

.field private mReadTemperature:Z

.field private mThermalStatus:I

.field private mThermalThrottleType:I

.field private mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/camera/thermal/PlatformThermal;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    const-string v1, "debug.thermal.throttle.support"

    const-string v2, "yes"

    .line 49
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    sget-object v3, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ThermalThrottle support: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ThermalThrottle-thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    .line 53
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v1, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    iget-object v2, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;-><init>(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    const-wide/16 v2, 0x1388

    .line 55
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const-string v0, "thermal_throttle_tran_type"

    .line 58
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalThrottleType:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "thermal_throttle_by_read_temperature"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mReadTemperature:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mReadTemperature:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalThrottleType:I

    return p0
.end method

.method static synthetic access$300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 21
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mIThermalThrottleChangeListener:Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 84
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[destroy]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_1

    .line 90
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    return-void
.end method

.method public getTemper(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 135
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 136
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 137
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 142
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 144
    sget-object v1, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTemper err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 148
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_2

    .line 149
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2
    :goto_0
    return v0
.end method

.method public pause()V
    .locals 2

    .line 75
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[pause]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mThermalStatus:I

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .line 67
    sget-object v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[resume]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mWorkerHandler:Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public setThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->mIThermalThrottleChangeListener:Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

    return-void
.end method
