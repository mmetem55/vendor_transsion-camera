.class public Lcom/transsion/ardrawlines/screen/BatteryViewHolder;
.super Lcom/transsion/ardrawlines/base/BaseViewHolder;
.source "BatteryViewHolder.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static volatile mInstance:Lcom/transsion/ardrawlines/screen/BatteryViewHolder;


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;


# direct methods
.method public static synthetic $r8$lambda$1iHFcRoidC794MiUbmmN3XqNTk4(Lcom/transsion/ardrawlines/screen/BatteryViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->lambda$init$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$FuhFjvDyPRTgmha9m9eN4EcJ8yk(Lcom/transsion/ardrawlines/screen/BatteryViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->lambda$init$1()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->init()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/ardrawlines/screen/BatteryViewHolder;
    .locals 2

    .line 21
    sget-object v0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mInstance:Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mInstance:Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    invoke-direct {v1}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;-><init>()V

    sput-object v1, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mInstance:Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mInstance:Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    new-instance v1, Lcom/transsion/ardrawlines/screen/BatteryViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/ardrawlines/screen/BatteryViewHolder;)V

    invoke-direct {v0, v1}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;-><init>(Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask$ScreenCallBackListener;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mScreenOffTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    return-void
.end method

.method private synthetic lambda$init$0()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mScreenOffTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->stopTimer()V

    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/transsion/ardrawlines/screen/ScreenOffActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "launch_mode"

    const/4 v2, 0x1

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 53
    iget-object p0, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private synthetic lambda$init$1()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lcom/transsion/ardrawlines/screen/BatteryViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/ardrawlines/screen/BatteryViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeHolder(Ljava/lang/ref/WeakReference;)Lcom/transsion/ardrawlines/screen/BatteryViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;)",
            "Lcom/transsion/ardrawlines/screen/BatteryViewHolder;"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    .line 38
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 39
    iget-object p1, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mScreenOffTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->refreshTime()V

    :cond_0
    return-object p0
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    .line 68
    iget-object p0, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mScreenOffTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->stopTimer()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    .line 62
    iget-object p0, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mScreenOffTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->startTimer()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    .line 74
    iget-object p0, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mScreenOffTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->stopTimer()V

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mScreenOffTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->refreshTime()V

    return-void
.end method

.method public start()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mScreenOffTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->startTimer()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->mScreenOffTimerTask:Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffTimerTask;->stopTimer()V

    return-void
.end method
