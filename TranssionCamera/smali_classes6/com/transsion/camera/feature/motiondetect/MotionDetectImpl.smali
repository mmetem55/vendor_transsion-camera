.class public final Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;
.super Ljava/lang/Object;
.source "MotionDetectImpl.java"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "jnimovedetect"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "jnimovedetect"

    .line 28
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;->nativeCacheClassInfo()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;->nativeSetup()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;->mNativeContext:J

    .line 36
    sget-object v0, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeCacheClassInfo()V
.end method

.method private native nativeDetect([B)Z
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeInit(III)Z
.end method

.method private native nativeSetup()J
.end method

.method private native nativeUnInit()Z
.end method


# virtual methods
.method public declared-synchronized detect([BIII)Z
    .locals 2

    monitor-enter p0

    .line 51
    :try_start_0
    sget-object p2, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "detect start"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 54
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;->nativeDetect([B)Z

    move-result p1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detect status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "detect end | process time:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 3

    .line 73
    sget-object v0, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;->nativeFinalize()V

    return-void
.end method

.method public declared-synchronized init(III)Z
    .locals 3

    monitor-enter p0

    .line 42
    :try_start_0
    sget-object v0, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init motion detect width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;->nativeInit(III)Z

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

.method public declared-synchronized unInit()Z
    .locals 2

    monitor-enter p0

    .line 66
    :try_start_0
    sget-object v0, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit motion detect"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/feature/motiondetect/MotionDetectImpl;->nativeUnInit()Z

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
