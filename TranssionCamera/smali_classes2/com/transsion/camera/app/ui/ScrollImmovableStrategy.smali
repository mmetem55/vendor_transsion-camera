.class public Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;
.super Ljava/lang/Object;
.source "ScrollImmovableStrategy.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentDx:F

.field private mCurrentDy:F

.field private mCurrentTime:J

.field private mFirstImmovable:Z

.field private mFirstImmovableDx:F

.field private mFirstImmovableDy:F

.field private mFirstImmovableTime:J

.field private mHasTrigger:Z

.field private final mImmovableTime:J

.field private final mImmovableValue:I

.field private mPreviousDx:F

.field private mPreviousDy:F

.field private mPreviousTime:J

.field private final mTriggerDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScrollImmovableStrategy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xa

    .line 9
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mImmovableTime:J

    .line 26
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mTriggerDistance:I

    const/16 p1, 0xb4

    .line 27
    iput p1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mImmovableValue:I

    return-void
.end method

.method private inImmovableRect()Z
    .locals 4

    .line 68
    iget v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDx:F

    iget v1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovableDx:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mImmovableValue:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDy:F

    iget v1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovableDy:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mImmovableValue:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    sget-object v1, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inImmovableRect mCurrentDx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDx:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mFirstImmovableDx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovableDx:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentDy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDy:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mFirstImmovableDy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovableDy:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " result:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private reachedImmovableTime()Z
    .locals 9

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovableTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 88
    :goto_0
    sget-object v3, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reachedImmovableTime mFirstImmovableTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovableTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "  currentTime:"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " mImmovableTime:"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method private reachedTriggerDistance()Z
    .locals 2

    .line 94
    iget v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDx:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mTriggerDistance:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDy:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mTriggerDistance:I

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateFirstImmovable()V
    .locals 4

    .line 75
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovable:Z

    .line 77
    iget v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDx:F

    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovableDx:F

    .line 78
    iget v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDy:F

    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovableDy:F

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovableTime:J

    .line 80
    sget-object v0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFirstImmovable mFirstImmovableTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovableTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  mFirstImmovableDx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovableDx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mFirstImmovableDy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovableDy:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public scroll(FF)Z
    .locals 4

    .line 40
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mHasTrigger:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 43
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentTime:J

    .line 44
    iput p1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDx:F

    .line 45
    iput p2, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDy:F

    .line 46
    sget-object v0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scroll mCurrentDx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mCurrentDy:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->reachedTriggerDistance()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->updateFirstImmovable()V

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->inImmovableRect()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->reachedImmovableTime()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mHasTrigger:Z

    return p1

    .line 55
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovable:Z

    goto :goto_0

    .line 58
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovable:Z

    .line 61
    :cond_3
    :goto_0
    iget-wide p1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentTime:J

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mPreviousTime:J

    .line 62
    iget p1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDx:F

    iput p1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mPreviousDx:F

    .line 63
    iget p1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDy:F

    iput p1, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mPreviousDy:F

    return v1
.end method

.method public startScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mPreviousDx:F

    .line 32
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mPreviousDy:F

    .line 33
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDx:F

    .line 34
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mCurrentDy:F

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mHasTrigger:Z

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->mFirstImmovable:Z

    return-void
.end method
