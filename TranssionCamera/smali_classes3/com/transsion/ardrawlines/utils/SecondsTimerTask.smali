.class public Lcom/transsion/ardrawlines/utils/SecondsTimerTask;
.super Ljava/util/TimerTask;
.source "SecondsTimerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ardrawlines/utils/SecondsTimerTask$OnSecondsChangedListener;
    }
.end annotation


# instance fields
.field private mTimeSeconds:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

.field private secondsChangedListener:Lcom/transsion/ardrawlines/utils/SecondsTimerTask$OnSecondsChangedListener;


# direct methods
.method public constructor <init>(Lcom/transsion/ardrawlines/utils/SecondsTimerTask$OnSecondsChangedListener;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimeSeconds:I

    .line 15
    iput-object p1, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->secondsChangedListener:Lcom/transsion/ardrawlines/utils/SecondsTimerTask$OnSecondsChangedListener;

    return-void
.end method

.method public static getTimeStr(I)Ljava/lang/String;
    .locals 4

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    div-int/lit8 v1, p0, 0x3c

    const-string v2, "0"

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    rem-int/lit8 p0, p0, 0x3c

    if-ge p0, v3, :cond_1

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initTimer()V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimer:Ljava/util/Timer;

    .line 36
    new-instance v0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

    iget-object v1, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->secondsChangedListener:Lcom/transsion/ardrawlines/utils/SecondsTimerTask$OnSecondsChangedListener;

    invoke-direct {v0, v1}, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;-><init>(Lcom/transsion/ardrawlines/utils/SecondsTimerTask$OnSecondsChangedListener;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimerTask:Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

    return-void
.end method


# virtual methods
.method public getTimeSeconds()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimeSeconds:I

    return p0
.end method

.method public refreshTime()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimeSeconds:I

    return-void
.end method

.method public run()V
    .locals 1

    .line 49
    iget v0, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimeSeconds:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimeSeconds:I

    .line 50
    iget-object p0, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->secondsChangedListener:Lcom/transsion/ardrawlines/utils/SecondsTimerTask$OnSecondsChangedListener;

    invoke-interface {p0, v0}, Lcom/transsion/ardrawlines/utils/SecondsTimerTask$OnSecondsChangedListener;->onRecordingDuration(I)V

    return-void
.end method

.method public startTimer()V
    .locals 7

    .line 54
    invoke-direct {p0}, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->initTimer()V

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimerTask:Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 59
    invoke-direct {p0}, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->initTimer()V

    .line 60
    iget-object v1, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimerTask:Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->refreshTime()V

    return-void
.end method

.method public stopTimer()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 68
    iget-object v0, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->mTimerTask:Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->refreshTime()V

    return-void
.end method
