.class public abstract Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;
.super Ljava/lang/Object;
.source "TimerRecord.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TimerRecord"


# instance fields
.field private mEnable:Z

.field private mMaxRound:I

.field private mRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShowAverage:Z

.field private mShowTime:Z

.field private mStartTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 25
    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;-><init>(IZZ)V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mRecord:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mStartTime:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mEnable:Z

    .line 32
    iput p1, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mMaxRound:I

    .line 33
    iput-boolean p2, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mShowTime:Z

    .line 34
    iput-boolean p3, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mShowAverage:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mStartTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 98
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mRecord:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mRecord:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mStartTime:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public record(Ljava/lang/String;)V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 56
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mStartTime:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract recordAverage(Ljava/lang/String;DI)V
.end method

.method protected abstract recordOnce(Ljava/lang/String;J)V
.end method

.method public setEnable(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mEnable:Z

    return-void
.end method

.method public setMaxRound(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mMaxRound:I

    return-void
.end method

.method public setShowAverage(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mShowAverage:Z

    return-void
.end method

.method public setShowTime(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mShowTime:Z

    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 6

    .line 60
    iget-boolean v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mStartTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const-string p1, "call record() with tag %s first"

    .line 63
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimerRecord"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 67
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mRecord:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mRecord:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mMaxRound:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mRecord:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-boolean v3, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mShowTime:Z

    if-eqz v3, :cond_3

    .line 73
    invoke-virtual {p0, p1, v1, v2}, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->recordOnce(Ljava/lang/String;J)V

    .line 75
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mMaxRound:I

    if-ne v1, v2, :cond_6

    .line 76
    iget-boolean v1, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mShowAverage:Z

    if-eqz v1, :cond_5

    const-wide/16 v1, 0x0

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    add-double/2addr v1, v4

    goto :goto_0

    .line 81
    :cond_4
    iget v3, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mMaxRound:I

    int-to-double v4, v3

    div-double/2addr v1, v4

    .line 82
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->recordAverage(Ljava/lang/String;DI)V

    .line 84
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    return-void
.end method
