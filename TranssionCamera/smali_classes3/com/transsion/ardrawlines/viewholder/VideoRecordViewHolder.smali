.class public Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;
.super Lcom/transsion/ardrawlines/base/BaseViewHolder;
.source "VideoRecordViewHolder.java"

# interfaces
.implements Lcom/transsion/ardrawlines/view/RecordButton$VideoRecordRequestListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoRecordViewHolder"


# instance fields
.field private mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/ardrawlines/ARDrawLinesActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/ardrawlines/ARDrawLinesActivity;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;-><init>()V

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mStartTime:J

    .line 32
    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    .line 33
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    .line 34
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 35
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->initData()V

    return-void
.end method


# virtual methods
.method public getStartTime()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mStartTime:J

    return-wide v0
.end method

.method public initData()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {v0, p0}, Lcom/transsion/ardrawlines/view/RecordButton;->setVideoRecordRequestListener(Lcom/transsion/ardrawlines/view/RecordButton$VideoRecordRequestListener;)V

    .line 40
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->buildMediaFocusParameters(Ljava/lang/ref/WeakReference;)V

    .line 41
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    .line 47
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onHandleMessage(Lcom/transsion/ardrawlines/unity/MessageEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 91
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventBus MessageEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->getEvent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VIDEO_PATH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :try_start_0
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lcom/transsion/ardrawlines/PlaybackActivity;->toPlaybackActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->getEvent()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ERROR"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "onHandleMessage: error during save file"

    .line 103
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onRequestRecordingCancel()V
    .locals 1

    .line 82
    sget-object p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->TAG:Ljava/lang/String;

    const-string v0, "onRequestRecordingCancel ..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestRecordingStart()Z
    .locals 3

    .line 59
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->TAG:Ljava/lang/String;

    const-string v1, "onRequestRecordingStart ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->requestMediaFocus()V

    .line 61
    invoke-static {}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->getInstance()Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->stop()V

    .line 62
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/ardrawlines/fileoperator/VideoFileUtils;->createVideoFileWithCache(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NatCorder"

    const-string v2, "StartRecording"

    .line 63
    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mStartTime:J

    const/4 p0, 0x0

    return p0
.end method

.method public onRequestRecordingStop()Z
    .locals 4

    .line 70
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->TAG:Ljava/lang/String;

    const-string v1, "onRequestRecordingStop ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->getInstance()Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->start()V

    .line 72
    invoke-static {}, Lcom/transsion/ardrawlines/service/VolumeChangeObserver;->releaseMediaFocus()V

    const-string v1, "NatCorder"

    const-string v2, "StopRecord"

    const-string v3, ""

    .line 73
    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "onTouch: short video mode"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 76
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return v1
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    .line 53
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 54
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method
