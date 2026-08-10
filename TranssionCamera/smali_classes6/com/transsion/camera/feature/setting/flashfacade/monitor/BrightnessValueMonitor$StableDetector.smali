.class final Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;
.super Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;
.source "BrightnessValueMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StableDetector"
.end annotation


# static fields
.field private static final CACHE_CAPACITY:I = 0x5

.field private static final MIN_DURATION:J = 0x1388L


# instance fields
.field private mLowLightTime:J

.field private mRingScreenLightOutBv:I

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;


# direct methods
.method public static synthetic $r8$lambda$kZW3rMXz8uoYlApZM-7nVvrq-GA(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;->lambda$highLightWhenScreenLightOn$0(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .locals 1

    .line 394
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    const/4 v0, 0x5

    .line 395
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;ILcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    const/4 p1, 0x0

    .line 390
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;->mRingScreenLightOutBv:I

    return-void
.end method

.method private highLightWhenScreenLightOn()Z
    .locals 3

    .line 431
    iget v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;->mRingScreenLightOutBv:I

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->access$400(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ring_screen_light_out_bv"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;->mRingScreenLightOutBv:I

    .line 433
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[highLightWhenScreenLightOn],  mRingScreenLightOutBv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;->mRingScreenLightOutBv:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mCache:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$highLightWhenScreenLightOn$0(Ljava/lang/Integer;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;->mRingScreenLightOutBv:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public detectImpl(I)Z
    .locals 5

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mCache:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->offer(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->lowLightInternal()Z

    move-result p1

    .line 405
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->highLightInternal()Z

    move-result v1

    .line 407
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mLastLowLight:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;->mLowLightTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    cmp-long p1, v1, v3

    if-ltz p1, :cond_3

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->ringScreenLightOn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;->highLightWhenScreenLightOn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 416
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mLastLowLight:Z

    goto :goto_0

    .line 419
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mLastLowLight:Z

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 423
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mLastLowLight:Z

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;->mLowLightTime:J

    .line 427
    :cond_3
    :goto_0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mLastLowLight:Z

    return p0
.end method
