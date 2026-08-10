.class public Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;
.super Lcom/transsion/ardrawlines/base/BaseViewHolder;
.source "ImageCaptureViewHolder.java"

# interfaces
.implements Lcom/transsion/ardrawlines/view/RecordButton$ImageCaptureRequestListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageCaptureViewHolder"


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

.field secondsTimerTask:Lcom/transsion/ardrawlines/utils/SecondsTimerTask;


# direct methods
.method public static synthetic $r8$lambda$rVRMti-6yqDyzL-mgA6anAhETWA(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->lambda$onLongClick$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBinding(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/ardrawlines/ARDrawLinesActivity;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    .line 41
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    .line 42
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 43
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->initData()V

    return-void
.end method

.method private synthetic lambda$onLongClick$0(I)V
    .locals 3

    .line 109
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 111
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    new-instance v0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$2;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$2;-><init>(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->secondsTimerTask:Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->stopTimer()V

    :cond_0
    return-void
.end method


# virtual methods
.method public initData()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {v0, p0}, Lcom/transsion/ardrawlines/view/RecordButton;->setImageCaptureRequestListener(Lcom/transsion/ardrawlines/view/RecordButton$ImageCaptureRequestListener;)V

    .line 49
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCaptureFail()V
    .locals 0

    return-void
.end method

.method public onCaptureSuccess()V
    .locals 0

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 54
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 55
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onHandleMessage(Lcom/transsion/ardrawlines/unity/MessageEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 128
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->TAG:Ljava/lang/String;

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

    .line 130
    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->getEvent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PHOTO_PATH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lcom/transsion/ardrawlines/PlaybackActivity;->toPlaybackActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->getEvent()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 141
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const-string p0, "onHandleMessage: error during save file"

    .line 142
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onLongClick()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;->toast:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$1;

    invoke-direct {v1, p0}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$1;-><init>(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;->toast:Landroid/widget/TextView;

    sget v1, Lcom/transsion/ardrawlines/R$string;->unsupported_burst:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->secondsTimerTask:Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->stopTimer()V

    .line 108
    :cond_0
    new-instance v0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

    new-instance v1, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;)V

    invoke-direct {v0, v1}, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;-><init>(Lcom/transsion/ardrawlines/utils/SecondsTimerTask$OnSecondsChangedListener;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->secondsTimerTask:Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

    .line 122
    invoke-virtual {v0}, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->startTimer()V

    return-void
.end method

.method public onRequestScreenCapture()V
    .locals 3

    .line 67
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->TAG:Ljava/lang/String;

    const-string v1, "onRequestScreenCapture ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/ardrawlines/fileoperator/ImageFileUtils;->createImageFileWithCache(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NatCorder"

    const-string v2, "TakeScreenshot"

    .line 69
    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 71
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    .line 61
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 62
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method
