.class public Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;
.super Ljava/lang/Object;
.source "SelfTimerStatusMonitor.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final SELF_TIMER_END_DELAY_TIME:J = 0xb4L


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mSelfTiming:Z

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$NdLymmbqfxi3Nc3S0FUnn1_TNT4(Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->lambda$onStatusChanged$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    return-void
.end method


# virtual methods
.method public init(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string v0, "key_self_timer_status"

    .line 41
    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "key_self_timer_status"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "status_self_timer_begin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "status_self_timer_cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "status_self_timer_end"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 62
    :pswitch_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    goto :goto_1

    .line 66
    :pswitch_1
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    goto :goto_1

    .line 72
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;)V

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xaded465 -> :sswitch_2
        -0x5096c46 -> :sswitch_1
        0x31566b69 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    return-void
.end method

.method public selfTiming()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    return p0
.end method

.method public unInit()V
    .locals 2

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v1, "key_self_timer_status"

    .line 50
    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method
