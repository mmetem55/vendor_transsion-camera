.class public final Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;
.super Ljava/lang/Object;
.source "VideoInterpolateImpl.java"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;


# static fields
.field private static final FRC_LIBRARY_NAME:Ljava/lang/String; = "jniarcsoft_frc"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "jniarcsoft_frc"

    .line 30
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->nativeCacheClassInfo()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->nativeSetup()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->mNativeContext:J

    .line 38
    sget-object v0, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeCacheClassInfo()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetVersion()Ljava/lang/String;
.end method

.method private native nativeInit(IIIII)Z
.end method

.method private native nativeInterpolate([B)Z
.end method

.method private native nativeReset()Z
.end method

.method private native nativeSetOutputBuffers([Ljava/nio/ByteBuffer;)Z
.end method

.method private native nativeSetup()J
.end method

.method private native nativeUnInit()Z
.end method


# virtual methods
.method public confirmInitParams(III)V
    .locals 0

    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->nativeFinalize()V

    return-void
.end method

.method public declared-synchronized getVersion()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(IIIII)Z
    .locals 3

    monitor-enter p0

    .line 53
    :try_start_0
    sget-object v0, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init video interpolate width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->nativeInit(IIIII)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized interpolate([B)Z
    .locals 5

    monitor-enter p0

    .line 71
    :try_start_0
    sget-object v0, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "interpolate start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 74
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->nativeInterpolate([B)Z

    move-result p1

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interpolate end | process time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()Z
    .locals 2

    monitor-enter p0

    .line 84
    :try_start_0
    sget-object v0, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "reset video interpolate"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->nativeReset()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOutputBuffers([Ljava/nio/ByteBuffer;)Z
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 62
    :try_start_0
    sget-object p1, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "outputBuffers is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 63
    monitor-exit p0

    return p1

    .line 65
    :cond_0
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "output buffers length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->nativeSetOutputBuffers([Ljava/nio/ByteBuffer;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unInit()Z
    .locals 2

    monitor-enter p0

    .line 91
    :try_start_0
    sget-object v0, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit video interpolate"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/feature/interpolate/VideoInterpolateImpl;->nativeUnInit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
