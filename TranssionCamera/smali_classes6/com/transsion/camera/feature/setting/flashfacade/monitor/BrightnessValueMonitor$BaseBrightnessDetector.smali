.class abstract Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;
.super Ljava/lang/Object;
.source "BrightnessValueMonitor.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseBrightnessDetector"
.end annotation


# static fields
.field private static final VALID_DURATION:J = 0x4e20L


# instance fields
.field protected final mCache:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDetectTime:J

.field protected final mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

.field protected mLastLowLight:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;


# direct methods
.method public static synthetic $r8$lambda$VUhMo-qNT43kZeTHNmAc8gLgh2M(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->lambda$highLightInternal$1(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_1rGP95dNv4t6d6fU-QQWDB9rBM(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->lambda$lowLightInternal$0(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method protected constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;ILcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    .line 293
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mCache:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;

    return-void
.end method

.method private synthetic lambda$highLightInternal$1(Ljava/lang/Integer;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->getLimitBv()I

    move-result p0

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$lowLightInternal$0(Ljava/lang/Integer;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 331
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->getLimitBv()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized correctTime()V
    .locals 2

    monitor-enter p0

    .line 298
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mDetectTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized detect(I)Z
    .locals 6

    monitor-enter p0

    .line 303
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 304
    iget-wide v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mDetectTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->reset()V

    .line 307
    :cond_0
    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mDetectTime:J

    .line 308
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->detectImpl(I)Z

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

.method protected abstract detectImpl(I)Z
.end method

.method protected getLimitBv()I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->isFlashAuto()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->facingFront()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoFrontLimitBV:I

    goto :goto_0

    .line 345
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoBackLimitBV:I

    goto :goto_0

    .line 348
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLimitBV:I

    :goto_0
    return p0
.end method

.method protected highLightInternal()Z
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mCache:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized lowLight()Z
    .locals 4

    monitor-enter p0

    .line 315
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 316
    iget-wide v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mDetectTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 317
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "invalid BV cache"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 318
    monitor-exit p0

    return v0

    .line 320
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mLastLowLight:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected lowLightInternal()Z
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mCache:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mCache:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->clear()V

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mLastLowLight:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
