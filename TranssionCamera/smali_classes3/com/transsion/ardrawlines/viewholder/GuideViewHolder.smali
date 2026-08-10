.class public Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;
.super Lcom/transsion/ardrawlines/base/BaseViewHolder;
.source "GuideViewHolder.java"

# interfaces
.implements Lcom/transsion/ardrawlines/utils/SecondsTimerTask$OnSecondsChangedListener;


# static fields
.field public static final GUIDE_INIT:I = 0x0

.field public static final GUIDE_LATER_ONE:I = 0x1

.field public static final GUIDE_LATER_THREE:I = 0x3

.field public static final GUIDE_LATER_TWO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GuideViewHolder"

.field private static isExist:Z = true


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

.field private mFinishedFirstSearch:Z

.field private mGuideText:Landroid/widget/TextView;

.field private mGuideView:Landroid/view/View;

.field private mIsVisible:Z

.field private mStartTime:J

.field private mTimerTask:Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

.field private pointer:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGuideText(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mGuideText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVisible(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mIsVisible:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

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

    .line 43
    invoke-direct {p0}, Lcom/transsion/ardrawlines/base/BaseViewHolder;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mIsVisible:Z

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->pointer:I

    .line 41
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mFinishedFirstSearch:Z

    .line 44
    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    .line 45
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    .line 46
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 47
    invoke-direct {p0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->initView()V

    .line 48
    invoke-direct {p0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->initData()V

    return-void
.end method

.method private changeGuideText(I)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    new-instance v1, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;-><init>(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getHolderExistingStatus()Z
    .locals 1

    .line 100
    sget-boolean v0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->isExist:Z

    return v0
.end method

.method private hideOtherView()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->actionBarBack:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewBrushArea:Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 154
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 52
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 53
    new-instance v0, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;-><init>(Lcom/transsion/ardrawlines/utils/SecondsTimerTask$OnSecondsChangedListener;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mTimerTask:Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mStartTime:J

    return-void
.end method

.method private initView()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewGuide:Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mGuideView:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewGuide:Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;->guideText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mGuideText:Landroid/widget/TextView;

    return-void
.end method

.method private showOtherView()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->actionBarBack:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewBrushArea:Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 160
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startSearching()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mGuideView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-direct {p0, v1}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->changeGuideText(I)V

    .line 166
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mTimerTask:Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->startTimer()V

    return-void
.end method

.method private stopTimer()V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mTimerTask:Lcom/transsion/ardrawlines/utils/SecondsTimerTask;

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/utils/SecondsTimerTask;->stopTimer()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    .line 65
    invoke-direct {p0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->hideOtherView()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 70
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->stopTimer()V

    .line 72
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseViewHolder;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onHandleMessage(Lcom/transsion/ardrawlines/unity/MessageEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 77
    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->getEvent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartSearching"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->startSearching()V

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->getEvent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEARCHSTATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/transsion/ardrawlines/unity/MessageEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Finished"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mGuideView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-direct {p0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->stopTimer()V

    .line 87
    iget-boolean p1, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mFinishedFirstSearch:Z

    if-nez p1, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->showOtherView()V

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mIsVisible:Z

    .line 90
    sput-boolean p1, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->isExist:Z

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mFinishedFirstSearch:Z

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 93
    iget-wide p0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->mStartTime:J

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ml_recognise_duration"

    invoke-static {p1, p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onRecordingDuration(I)V
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 106
    iget p1, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->pointer:I

    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->changeGuideText(I)V

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_2

    const/4 v0, 0x3

    .line 108
    rem-int/2addr p1, v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 109
    iget p1, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->pointer:I

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    .line 110
    iput p1, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->pointer:I

    .line 112
    :cond_1
    iget p1, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->pointer:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->pointer:I

    .line 114
    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->changeGuideText(I)V

    :cond_2
    :goto_0
    return-void
.end method
