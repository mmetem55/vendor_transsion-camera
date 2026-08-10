.class public Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;
.super Lcom/transsion/ardrawlines/base/BaseViewHolder;
.source "MultimediaViewHolder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final CAPTURE_MODE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cameraModeSelectorListener:Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;

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

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageCaptureViewHolder:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

.field private mMediaManager:Lcom/transsion/camera/manager/MediaManager;

.field private mThumbnailCallback:Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;

.field private mThumbnailUri:Landroid/net/Uri;

.field private mVideoRecordViewHolder:Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBinding(Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmThumbnailUri(Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mThumbnailUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/ardrawlines/ARDrawLinesActivity;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->cameraModeSelectorListener:Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;

    .line 62
    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    .line 63
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    .line 64
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 65
    invoke-direct {p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->initViews()V

    .line 66
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->initData()V

    return-void
.end method

.method private initViews()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/ardrawlines/view/RecordButton;->setCameraMode(I)V

    .line 74
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->actionBarBack:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->addShakeClick(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->gallery:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->addShakeClick(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->addShakeClick(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->addShakeClick(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->cameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    new-instance v1, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public callToCancelRecording()V
    .locals 0

    return-void
.end method

.method public callToPauseRecording()V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->pauseRecording()V

    return-void
.end method

.method public callToResumeRecording()V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->resumeRecording()V

    return-void
.end method

.method public callToStopRecording()V
    .locals 1

    .line 225
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/view/RecordButton;->setRecording(Z)V

    return-void
.end method

.method public getRecordingStatus()Z
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->isRecording()Z

    move-result p0

    return p0
.end method

.method public getStopButtonController(Landroid/view/View;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 197
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v0, "ml_pause_cl"

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->callToPauseRecording()V

    const-string p0, "pause"

    .line 199
    invoke-static {v0, p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->callToResumeRecording()V

    const-string p0, "resume"

    .line 202
    invoke-static {v0, p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initData()V
    .locals 5

    .line 82
    new-instance v0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

    iget-object v1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mImageCaptureViewHolder:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

    .line 83
    new-instance v0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;

    iget-object v1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mVideoRecordViewHolder:Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;

    .line 84
    new-instance v0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;

    iget-object v1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v1, v1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v2, v1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->cameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    iget-object v3, v1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    iget-object v4, v1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->bubbleInfo:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->bubbleTriangle:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;-><init>(Lcom/transsion/ardrawlines/view/CameraModelSelectView;Lcom/transsion/ardrawlines/view/RecordButton;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->cameraModeSelectorListener:Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;

    .line 85
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->cameraModeSelectorListener:Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mGestureDetector:Landroid/view/GestureDetector;

    .line 86
    new-instance v0, Lcom/transsion/camera/manager/MediaManager;

    iget-object v1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/transsion/camera/manager/MediaManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mMediaManager:Lcom/transsion/camera/manager/MediaManager;

    .line 87
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mMediaManager:Lcom/transsion/camera/manager/MediaManager;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    .line 121
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->getRecordingStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->callToStopRecording()V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 98
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->TAG:Ljava/lang/String;

    const-string v1, "onResume: current at lifecycle resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    .line 101
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->resetViewAlongWithCameraModeChanges()V

    .line 102
    new-instance p1, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder$1;

    invoke-direct {p1, p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder$1;-><init>(Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;)V

    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mThumbnailCallback:Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;

    .line 115
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mMediaManager:Lcom/transsion/camera/manager/MediaManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/MediaManager;->loadLatestThumbnail(Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 92
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->TAG:Ljava/lang/String;

    const-string v1, "onResume: current at lifecycle start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 260
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->resetViewAlongWithCameraModeChanges()V

    .line 263
    :cond_0
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3

    .line 244
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewClicked...: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v2, v2, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v2, v2, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {v2}, Lcom/transsion/ardrawlines/view/RecordButton;->isRecording()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0, p1}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->switchRecordUIState(Landroid/view/View;)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0, p1}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->getStopButtonController(Landroid/view/View;)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->gallery:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->openGallery()V

    const-string p0, "ml_gallery_cl"

    .line 252
    invoke-static {p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->actionBarBack:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 254
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->onBackPressed()V

    :cond_3
    :goto_0
    return-void
.end method

.method public openGallery()V
    .locals 3

    .line 130
    sget-object v0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openGallery: final uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mThumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mThumbnailUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->gotoGallery(Landroid/app/Activity;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public resetViewAlongWithCameraModeChanges()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/ardrawlines/utils/SharedPreferencesUtils;->getWelcomeGuideBoolean(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->cameraModeSelectorListener:Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->setStorageStatus(Z)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->cameraModeSelectorListener:Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;

    invoke-virtual {v0, v1}, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->setStorageStatus(Z)V

    .line 153
    :goto_0
    invoke-static {}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->getHolderExistingStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->actionBarBack:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->setElementVisibility(Landroid/view/View;I)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->gallery:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->setElementVisibility(Landroid/view/View;I)V

    .line 158
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->checkBox:Landroid/widget/CheckBox;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->setElementVisibility(Landroid/view/View;I)V

    .line 159
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->cameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->setElementVisibility(Landroid/view/View;I)V

    .line 160
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->linkToVideoResource:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->setElementVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public setElementVisibility(Landroid/view/View;I)V
    .locals 0

    .line 138
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public switchRecordUIState(Landroid/view/View;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/view/RecordButton;->isRecording()Z

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v2}, Lcom/transsion/ardrawlines/utils/SharedPreferencesUtils;->putWelcomeGuideBoolean(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 167
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->cameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 168
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->actionBarBack:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->setElementVisibility(Landroid/view/View;I)V

    .line 169
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->setElementVisibility(Landroid/view/View;I)V

    .line 170
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->bubbleInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->setElementVisibility(Landroid/view/View;I)V

    .line 171
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->bubbleTriangle:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->setElementVisibility(Landroid/view/View;I)V

    .line 172
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->gallery:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->setElementVisibility(Landroid/view/View;I)V

    .line 173
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->cameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->setElementVisibility(Landroid/view/View;I)V

    const-string p0, "ml_video_cl"

    .line 174
    invoke-static {p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->cameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 177
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 178
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/view/RecordButton;->reset()V

    .line 179
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->gallery:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->setElementVisibility(Landroid/view/View;I)V

    .line 180
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->setElementVisibility(Landroid/view/View;I)V

    .line 181
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->cameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {p1, v1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->setVisibility(I)V

    .line 182
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/view/RecordButton;->getCameraMode()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ml_photo_cl"

    .line 183
    invoke-static {p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
