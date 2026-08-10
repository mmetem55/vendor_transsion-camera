.class public Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SuperNightFilterSettingUI.java"


# static fields
.field private static final DURATION:I = 0x12c

.field private static final MSG_UPDATE_FILTER_VALUE_TO_UI:I = 0x64

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private final mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private final mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

.field private mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

.field private mFilterRootAnimator:Landroid/animation/ValueAnimator;

.field private final mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mFilterRootView:Landroid/view/View;

.field private mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFilterTranslateDistance:F

.field private mFilterUIShown:Z

.field private mHandler:Landroid/os/Handler;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIsCameraSwitching:Z

.field private mIsEnable:Z

.field private volatile mIsFilterHiding:Z

.field private mLastOffset:I

.field private mLastPosition:I

.field private mNeedShow:Z

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mResources:Landroid/content/res/Resources;

.field private mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mSettingUiAdjustHeight:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$3FLdKcmjmcV9eLQZEqIp70WR8rk(Ljava/lang/String;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->lambda$findIndex$3(Ljava/lang/String;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8TxT4z-jsu1qWrSO-F4_PEkOTig(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Ljava/util/List;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->lambda$setupEntryView$1(Ljava/util/List;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BT5KwT4HxEio4FlW1a-NrxCqE7o(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->lambda$new$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$_9sXkg76nQk2kOE2rraQli-aqPo(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lDokw8Isys4c16NRbgwwYJKJwKs(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->lambda$updateSettingUILayout$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 68
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    .line 135
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 65
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 66
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x0

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsCameraSwitching:Z

    .line 76
    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastOffset:I

    .line 77
    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastPosition:I

    .line 82
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$1;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 119
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$2;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 485
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$4;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 499
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$5;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 580
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 136
    sget v0, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_translate_anim_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterTranslateDistance:F

    .line 137
    sget v0, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_setting_ui_adjust_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mSettingUiAdjustHeight:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 139
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->updateFilterValueToUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 52
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->updatePositionAndOffset(Landroidx/recyclerview/widget/GridLayoutManager;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method private addAnimatorListener()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 481
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private collapseBottomUI(Z)V
    .locals 1

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 273
    invoke-interface {p0, v0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_0
    return-void
.end method

.method private expandBottomUI(Z)V
    .locals 2

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    invoke-interface {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_0
    return-void
.end method

.method private findIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 593
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 594
    new-instance p2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private hideFilterRootView()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 535
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    .line 536
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideFilterSettingUI()V
    .locals 1

    const/4 v0, 0x1

    .line 334
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->collapseBottomUI(Z)V

    .line 335
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->startCollapseAnimator()V

    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    return-void
.end method

.method private hideFilterSettingUIImmediately(Z)V
    .locals 2

    .line 298
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->collapseBottomUI(Z)V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    const-string v1, "key_conflict_ui_state"

    if-eqz p1, :cond_0

    .line 302
    iget-boolean p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsCameraSwitching:Z

    if-nez p0, :cond_0

    .line 303
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_filter_ui_off"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_filter_ui_off_no_show"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private hideFilterSettingUIImmediately()Z
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->cancelAnimation()V

    .line 316
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 318
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$findIndex$3(Ljava/lang/String;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;)Z
    .locals 0

    .line 593
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 106
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 108
    iget v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterTranslateDistance:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    .line 109
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 115
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$2(Z)V
    .locals 0

    .line 581
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->updateArcIndicatorRingScreenLight(Z)V

    return-void
.end method

.method private synthetic lambda$setupEntryView$1(Ljava/util/List;Landroid/view/View;I)V
    .locals 0

    .line 207
    iget-object p2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 208
    iget-object p2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p2, :cond_0

    .line 209
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object p1

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateSettingUILayout$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 622
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 623
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private recoverFilterPanelToDefault()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    .line 437
    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 438
    iput v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastOffset:I

    .line 439
    iput v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastPosition:I

    :cond_1
    :goto_0
    return-void
.end method

.method private registerKeyToMonitor(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 560
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 561
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 543
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 544
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    :cond_0
    return-void
.end method

.method private showFilterRootView()V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 524
    iget-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 525
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    .line 526
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->showFilterSettingUIImmediately()V

    :cond_0
    return-void
.end method

.method private showFilterSettingUI()V
    .locals 1

    const/4 v0, 0x1

    .line 328
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->expandBottomUI(Z)V

    .line 329
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->startExpandAnimator()V

    .line 330
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    return-void
.end method

.method private showFilterSettingUIImmediately()V
    .locals 3

    .line 284
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->cancelAnimation()V

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 287
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :cond_0
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->expandBottomUI(Z)V

    return-void
.end method

.method private showOrHideFilterSettingUI()Z
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    if-eqz v0, :cond_1

    .line 364
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUI()V

    goto :goto_0

    .line 366
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->showFilterSettingUI()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private startCollapseAnimator()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_0

    const/16 v0, 0x30

    .line 355
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

.method private startExpandAnimator()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_0

    const/16 v0, 0x2f

    .line 345
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 566
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 567
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateArcIndicatorRingScreenLight(Z)V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateRingScreenLight(Z)V

    .line 587
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private updateFilterValueToUI(Ljava/lang/String;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->findIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private updatePositionAndOffset(Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 178
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastOffset:I

    .line 181
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastPosition:I

    :cond_1
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 1

    .line 150
    iput-object p2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 151
    sget p3, Lcom/transsion/camera/feature/supernightfilter/R$layout;->supernight_filter_option:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryView:Landroid/view/View;

    .line 152
    sget p3, Lcom/transsion/camera/feature/supernightfilter/R$id;->supernight_filter_root:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    .line 153
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/supernightfilter/R$id;->supernight_filter_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    .line 155
    new-instance p2, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$3;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 167
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    .line 168
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_supernight_filter"

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 474
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_supernight_filter"

    .line 475
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 1

    .line 239
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 241
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->removeAnimatorListener()V

    .line 242
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 374
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsCameraSwitching:Z

    goto :goto_0

    :cond_0
    if-eq p1, v0, :cond_1

    const/16 v2, 0x1b

    if-ne p1, v2, :cond_2

    .line 376
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsCameraSwitching:Z

    :cond_2
    :goto_0
    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x5

    if-eq p1, v2, :cond_6

    const/16 v2, 0x9

    if-eq p1, v2, :cond_6

    const/16 v2, 0x2d

    if-eq p1, v2, :cond_5

    const/16 v2, 0x31

    if-eq p1, v2, :cond_3

    const/16 v2, 0x38

    if-eq p1, v2, :cond_5

    const/16 v2, 0xd

    if-eq p1, v2, :cond_4

    const/16 v2, 0xe

    if-eq p1, v2, :cond_6

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 381
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->showFilterRootView()V

    goto :goto_1

    .line 411
    :cond_3
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    goto :goto_1

    .line 400
    :cond_4
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->setEnable(Z)V

    goto :goto_1

    .line 395
    :cond_5
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    goto :goto_1

    .line 408
    :cond_6
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->setEnable(Z)V

    goto :goto_1

    .line 385
    :cond_7
    :pswitch_3
    iget-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    if-eqz p1, :cond_8

    .line 386
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    .line 389
    :cond_8
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 390
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->setEnable(Z)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->showOrHideFilterSettingUI()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_supernight_filter"

    .line 420
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 421
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "supernight_filter_off"

    .line 422
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 423
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->setEnable(Z)V

    .line 424
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->recoverFilterPanelToDefault()V

    const/4 p1, 0x1

    .line 425
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->setEnable(Z)V

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->showOrHideFilterSettingUI()Z

    :cond_1
    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 3

    .line 550
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 551
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 463
    iput-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsEnable:Z

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 2

    .line 573
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 576
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->registerKeyToMonitor(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setupEntryView()V
    .locals 4

    .line 187
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsEnable:Z

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_3

    .line 191
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
    invoke-static {v3}, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->getItemInfoByFilterId(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 198
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->findIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-nez v1, :cond_2

    .line 203
    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    .line 204
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_switcher_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 205
    iget-object v3, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateItemSize(I)V

    .line 206
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    new-instance v3, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setOnItemClickListener(Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;)V

    .line 213
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_recycler_view_header_footer_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_recycler_view_item_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 217
    new-instance v2, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;

    invoke-direct {v2, v0, v1, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/PaddingItemDecoration;-><init>(III)V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_1

    .line 220
    :cond_2
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setItemList(Ljava/util/List;)V

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 227
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->addAnimatorListener()V

    .line 228
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 229
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->updateArcIndicatorRingScreenLight(Z)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 232
    iget v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastPosition:I

    if-ltz v1, :cond_4

    .line 233
    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastOffset:I

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_4
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 247
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 251
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .locals 7

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 600
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 604
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    .line 605
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    .line 607
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 608
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 610
    iget v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 611
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "hover_support_setting_ui_bottom_margin"

    invoke-static {v2, v5}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 614
    :cond_1
    iget v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mSettingUiAdjustHeight:I

    sub-int v1, v2, v1

    .line 617
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v2, 0x0

    aput v4, p1, v2

    const/4 v2, 0x1

    aput v1, p1, v2

    .line 618
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 619
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 620
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 621
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, v3, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda4;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 625
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 627
    :cond_2
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 628
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method
