.class public abstract Lcom/transsion/camera/utils/debug/profiler/ProfileBase;
.super Ljava/lang/Object;
.source "ProfileBase.java"

# interfaces
.implements Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;


# instance fields
.field protected mFormatter:Lcom/transsion/camera/utils/debug/profiler/LogFormatter;

.field private mLastMark:J

.field private mStartNanos:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/profiler/LogFormatter;

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/debug/profiler/LogFormatter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->mFormatter:Lcom/transsion/camera/utils/debug/profiler/LogFormatter;

    return-void
.end method

.method private getTimeFromLastMillis(J)D
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->mLastMark:J

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->nanoToMillis(J)D

    move-result-wide p0

    return-wide p0
.end method

.method private getTotalMillis(J)D
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->mStartNanos:J

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->nanoToMillis(J)D

    move-result-wide p0

    return-wide p0
.end method

.method private nanoToMillis(J)D
    .locals 2

    long-to-double p0, p1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final mark()V
    .locals 2

    .line 46
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->mLastMark:J

    return-void
.end method

.method public final mark(Ljava/lang/String;)V
    .locals 8

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 56
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->getTotalMillis(J)D

    move-result-wide v3

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->getTimeFromLastMillis(J)D

    move-result-wide v5

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->onMark(DDLjava/lang/String;)V

    .line 57
    iput-wide v0, p0, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->mLastMark:J

    return-void
.end method

.method protected abstract onMark(DDLjava/lang/String;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop(DD)V
.end method

.method public final start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;
    .locals 2

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->mStartNanos:J

    .line 35
    iput-wide v0, p0, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->mLastMark:J

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->onStart()V

    return-object p0
.end method

.method public final stop()V
    .locals 6

    .line 65
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->getTotalMillis(J)D

    move-result-wide v2

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->getTimeFromLastMillis(J)D

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->onStop(DD)V

    .line 67
    iput-wide v0, p0, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->mLastMark:J

    return-void
.end method
