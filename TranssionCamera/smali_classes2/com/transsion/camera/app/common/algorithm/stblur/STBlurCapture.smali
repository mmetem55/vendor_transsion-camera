.class public final Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;
.super Ljava/lang/Object;
.source "STBlurCapture.java"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;


# static fields
.field private static final STBLUR_CAPTURE_IMPL_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.mode.stblurmode.STBlurCaptureImpl"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sAlgorithmMigrate:Z

.field private static volatile sInstance:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;


# instance fields
.field private mInitTimes:I

.field private mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "com.transsion.camera.feature.mode.stblurmode.STBlurCaptureImpl"

    .line 25
    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->sAlgorithmMigrate:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "com.transsion.camera.feature.mode.stblurmode.STBlurCaptureImpl"

    .line 33
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    iput-object p1, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    return-void
.end method

.method public static algorithmMigrate()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->sAlgorithmMigrate:Z

    return v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;
    .locals 2

    .line 37
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->sInstance:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->sInstance:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->sInstance:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 44
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->sInstance:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized initSTBlur()V
    .locals 4

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mSTBlurCaptureImpl is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 57
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    .line 58
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSTBlur mInitTimes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;->initSTBlur()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized processCaptureBlur([BIII)[B
    .locals 2

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    if-nez v0, :cond_0

    .line 81
    sget-object p2, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "mSTBlurCaptureImpl is null"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-object p1

    .line 84
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    if-nez v1, :cond_1

    .line 85
    sget-object p2, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "invalid state, STBlurCapture isn\'t init"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    return-object p1

    .line 88
    :cond_1
    :try_start_2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;->processCaptureBlur([BIII)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unInitSTBlur()V
    .locals 3

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mSTBlurCaptureImpl is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 70
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    .line 71
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unInitSTBlur mInitTimes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mInitTimes:I

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->mSTBlurCaptureImpl:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;->unInitSTBlur()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
