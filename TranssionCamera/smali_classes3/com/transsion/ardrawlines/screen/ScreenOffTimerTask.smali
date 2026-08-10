.class public Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;
.super Ljava/util/TimerTask;
.source "ScreenOffTimerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask$ScreenCallBackListener;
    }
.end annotation


# static fields
.field private static final WAITER_TIME_COUNT:I = 0x3c

.field private static mTimeSeconds:I


# instance fields
.field private mScreenCallBackListener:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask$ScreenCallBackListener;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask$ScreenCallBackListener;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mScreenCallBackListener:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask$ScreenCallBackListener;

    return-void
.end method

.method private initTimer()V
    .locals 2

    .line 27
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimer:Ljava/util/Timer;

    .line 28
    new-instance v0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    iget-object v1, p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mScreenCallBackListener:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask$ScreenCallBackListener;

    invoke-direct {v0, v1}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;-><init>(Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask$ScreenCallBackListener;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    return-void
.end method


# virtual methods
.method public getTime()I
    .locals 0

    .line 23
    sget p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimeSeconds:I

    return p0
.end method

.method public refreshTime()V
    .locals 0

    const/4 p0, 0x0

    .line 19
    sput p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimeSeconds:I

    return-void
.end method

.method public run()V
    .locals 2

    .line 33
    sget v0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimeSeconds:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimeSeconds:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 34
    sput v0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimeSeconds:I

    .line 36
    iget-object p0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mScreenCallBackListener:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask$ScreenCallBackListener;

    invoke-interface {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask$ScreenCallBackListener;->onScreenOff()V

    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 7

    .line 41
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->stopTimer()V

    .line 42
    invoke-direct {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->initTimer()V

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 47
    invoke-direct {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->initTimer()V

    .line 48
    iget-object v1, p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->refreshTime()V

    return-void
.end method

.method public stopTimer()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 60
    iget-object v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->refreshTime()V

    return-void
.end method
