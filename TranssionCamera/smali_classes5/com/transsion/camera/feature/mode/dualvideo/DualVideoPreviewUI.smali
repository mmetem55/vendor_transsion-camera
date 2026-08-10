.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;
.super Ljava/lang/Object;
.source "DualVideoPreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0xc8

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRANSPARENT_0:F = 0.0f

.field private static final TRANSPARENT_1:F = 1.0f


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBottomUIDefaultHeight:I

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDividerDisplayHeight:I

.field private mDividerDisplayY:I

.field private mDividerDownEdgeOffset:I

.field private mDividerDownY:F

.field private mDividerMiddleEdgeOffset:I

.field private mDividerUpEdgeOffset:I

.field private mDualDeviceGroupAdapter:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;

.field private mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

.field private mDualDeviceGroupRoot:Landroid/view/ViewGroup;

.field private mDualDeviceRootLayout:Landroid/view/View;

.field private mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsDualDeviceRootHide:Z

.field private mIsItemGroupHide:Z

.field private mIsStartRecording:Z

.field private mOutAreaShouldPIPViewRespond:Z

.field private mPIPDisplayHeight:I

.field private mPIPDisplayWidth:I

.field private mPIPDisplayX:I

.field private mPIPDisplayY:I

.field private mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

.field private mParentGroup:Landroid/view/ViewGroup;

.field private mPipEdgeOffsetRespond:I

.field private mPreviewUICallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

.field private mPreviewViewHeight:I

.field private mPreviewViewWidth:I

.field private mScreenFormType:I

.field private mSinkTranslateDistance:I

.field private mSplitDivider:Landroid/widget/ImageView;

.field private mSplitRootLayout:Landroid/view/View;

.field private mSplitRootView:Landroid/view/View;

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private mTranslateDistance:F

.field private final mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$1bS1sfehMyEcxdjI0EI8U8gUQ7o(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;ZILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->lambda$updateDualDeviceLayoutParameter$0(ZILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n6bgK9RzK83TQ1fpIUZpmF1lAAk(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->onDualDeviceItemSelected(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$naMkIrusYdRNJ9iVOZ2MC6_cNI8(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->onTranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sqcdB_npw7easi5gNYagzQ3s5Dc(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->onAlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 90
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownY:F

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    .line 49
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    .line 50
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayX:I

    .line 51
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayY:I

    .line 52
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayWidth:I

    .line 53
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayHeight:I

    .line 54
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayY:I

    .line 55
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayHeight:I

    .line 56
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerMiddleEdgeOffset:I

    .line 57
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 58
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsDualDeviceRootHide:Z

    .line 80
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v3, 0x67

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 81
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsItemGroupHide:Z

    .line 84
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 85
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsStartRecording:Z

    .line 95
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method private StartDualDeviceButtonAnimation()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 748
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v0, v0, [F

    .line 749
    fill-array-data v0, :array_1

    const-string v2, "scaleY"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 750
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    .line 751
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 752
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 753
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$3;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setEnable(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Landroid/view/ViewGroup;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    return p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerMiddleEdgeOffset:I

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->StartDualDeviceButtonAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewUICallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownY:F

    return p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;F)F
    .locals 0

    .line 40
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownY:F

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    return p0
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private initDualDeviceLayout()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_device_group_button_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_device_group_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 342
    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_dual_device_switcher:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$2;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_device_group_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRoot:Landroid/view/ViewGroup;

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_device_group_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRoot:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 356
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->updateDualDeviceLayoutParameter(IZ)V

    return-void
.end method

.method private initDualDeviceRecycleData()V
    .locals 4

    .line 330
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 331
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDataList:Ljava/util/List;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mCurrentPosition:I

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;-><init>(Ljava/util/List;I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupAdapter:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;

    .line 332
    new-instance v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;)V

    .line 333
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupAdapter:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 334
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItemDecoration;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method private synthetic lambda$updateDualDeviceLayoutParameter$0(ZILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "padding"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {p5, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 429
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {p5, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, p2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_0
    const-string p1, "rootBottomMargin"

    .line 431
    invoke-virtual {p5, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const-string p1, "rootHeight"

    .line 432
    invoke-virtual {p5, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 433
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "itemBottomMargin"

    .line 435
    invoke-virtual {p5, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 436
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onAlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 632
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private onDualDeviceItemSelected(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;)V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 662
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;->dualDeviceGroupId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->switchCamera()V

    .line 665
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p1, p1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;->dualDeviceHintId:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 666
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 667
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->hideDualDeviceRoot()V

    return-void
.end method

.method private onTranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 638
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 649
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private setDualDeviceAnimator()V
    .locals 6

    .line 618
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_show_or_hide_translate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateDistance:F

    .line 620
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 621
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xc8

    .line 622
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 623
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v5, 0x0

    aput v5, v1, v2

    .line 625
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateDistance:F

    const/4 v5, 0x1

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 626
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 627
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setEnable(Z)V
    .locals 0

    .line 653
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsItemGroupHide:Z

    return-void
.end method

.method private updateDualDeviceLayoutParameter(IZ)V
    .locals 16

    move-object/from16 v6, p0

    .line 367
    iget-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 370
    :cond_0
    iget-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 372
    iget-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    .line 373
    iget-object v1, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    .line 374
    iget-object v2, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v2

    .line 376
    iget-object v3, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 377
    iget-object v3, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 380
    iget-object v3, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->getGoogleLensUIButtonVisible()I

    move-result v3

    if-nez v3, :cond_1

    .line 381
    iget-object v3, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_device_group_button_end_lens_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 383
    :cond_1
    iget-object v3, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_device_group_button_end_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 386
    :goto_0
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 389
    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 391
    iget v9, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v10, 0x3

    const/4 v11, 0x0

    move/from16 v12, p1

    if-ne v12, v10, :cond_2

    .line 397
    iget-object v1, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    const-string v2, "hover_support_setting_ui_bottom_margin"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 398
    iget-object v2, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v12, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_item_height_hover_extra:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    move v2, v11

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v2

    .line 403
    iget-object v12, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_item_height:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 404
    iget-object v13, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_item_height_normal_extra:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    sub-int/2addr v1, v12

    sub-int/2addr v1, v13

    .line 408
    :goto_1
    iget-object v12, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v12, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v12

    const/4 v13, 0x1

    if-ltz v12, :cond_3

    move v14, v13

    goto :goto_2

    :cond_3
    move v14, v11

    .line 411
    :goto_2
    iget-object v15, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-eqz p2, :cond_5

    const/4 v15, 0x2

    new-array v10, v15, [I

    aput v8, v10, v11

    aput v2, v10, v13

    const-string v2, "rootBottomMargin"

    .line 412
    invoke-static {v2, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v8, v15, [I

    aput v7, v8, v11

    aput v0, v8, v13

    const-string v0, "rootHeight"

    .line 414
    invoke-static {v0, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v7, v15, [I

    aput v9, v7, v11

    aput v1, v7, v13

    const-string v1, "itemBottomMargin"

    .line 416
    invoke-static {v1, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v7, v15, [I

    if-eqz v14, :cond_4

    .line 418
    iget-object v8, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    goto :goto_3

    .line 419
    :cond_4
    iget-object v8, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    :goto_3
    aput v8, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v8

    aput v8, v7, v13

    const-string v8, "padding"

    .line 418
    invoke-static {v8, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v8, v11

    aput-object v0, v8, v13

    aput-object v1, v8, v15

    const/4 v0, 0x3

    aput-object v7, v8, v0

    .line 421
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 422
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 423
    iget-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 425
    iget-object v7, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object/from16 v1, p0

    move v2, v14

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;ZILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 438
    iget-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_5
    if-eqz v14, :cond_6

    .line 441
    iget-object v7, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v7, v11, v11, v3, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    .line 443
    :cond_6
    iget-object v7, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v7, v11, v8, v3, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 445
    :goto_4
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 446
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 447
    iget-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 450
    iget-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_5
    return-void
.end method

.method private updatePIPViewLayoutRect()V
    .locals 7

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 456
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_top_edge:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 459
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_bottom_edge:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 460
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    iget v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    sub-int/2addr v6, v3

    invoke-virtual {v4, v5, v0, v6}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setAreaSize(III)V

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    mul-int/lit8 v4, v3, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v0, v3, v1, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setAreaSize(III)V

    .line 464
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 465
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 466
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayY:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayX:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayHeight:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 469
    :cond_1
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayX:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayY:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayWidth:I

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayHeight:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 471
    :goto_1
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayWidth:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 472
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayHeight:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 473
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    return-void
.end method

.method private updateSplitDividerViewLayout()V
    .locals 6

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 480
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 482
    invoke-static {v2, v3, v4, v5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    const-string v2, ", height:"

    const-string v3, "updateSplitDividerViewLayout width:"

    if-nez v0, :cond_0

    .line 483
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", not 16_9"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 487
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is 16_9"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 489
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    if-lez v0, :cond_3

    .line 490
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayHeight:I

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitDivider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayHeight:I

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitDivider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    .line 494
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 495
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayY:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayHeight:I

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v3, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 498
    :cond_2
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayY:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayHeight:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 501
    :goto_0
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 502
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitDivider:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getDualSwitchButtonVisible()Z
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItemVisibility()I
    .locals 0

    .line 744
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getOutAreaShouldPIPViewRespond()Z
    .locals 0

    .line 283
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOutAreaShouldPIPViewRespond:Z

    return p0
.end method

.method public getPIPViewSelected()Z
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    if-eqz p0, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideDualDeviceRoot()V
    .locals 5

    .line 706
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsItemGroupHide:Z

    if-nez v0, :cond_0

    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 710
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsDualDeviceRootHide:Z

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 712
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 713
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateDistance:F

    neg-float v1, v1

    aput v1, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 716
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public imitatePIPViewsTouch(Landroid/view/MotionEvent;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOutAreaShouldPIPViewRespond:Z

    if-eqz p0, :cond_0

    .line 278
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->imitateTouch(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/util/List;ILcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/IAppUI;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;I",
            "Lcom/transsion/camera/app/common/setting/ISetting;",
            "Lcom/transsion/camera/app/common/IAppUI;",
            "I)V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mParentGroup:Landroid/view/ViewGroup;

    .line 141
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    .line 142
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDataList:Ljava/util/List;

    .line 143
    iput p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mCurrentPosition:I

    .line 144
    iput-object p6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 145
    iput-object p7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 147
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p4, Lcom/transsion/camera/feature/mode/dualvideo/R$layout;->dualvideo_split_view_layout:I

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mParentGroup:Landroid/view/ViewGroup;

    const/4 p6, 0x1

    invoke-virtual {p2, p4, p5, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    .line 148
    sget p4, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dualvideo_split_root:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootLayout:Landroid/view/View;

    .line 150
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p2

    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget p5, Lcom/transsion/camera/feature/mode/dualvideo/R$layout;->dual_device_root_layout:I

    invoke-virtual {p4, p5, p2, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 153
    sget p4, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_device_root:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setDualDeviceAnimator()V

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->addAnimatorListener()V

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 158
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_middle_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerMiddleEdgeOffset:I

    if-ne p3, p6, :cond_0

    .line 160
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_divider_up_edge_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 161
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_divider_down_edge_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-ne p3, p2, :cond_1

    .line 163
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_divider_up_edge_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 164
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_divider_down_edge_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    goto :goto_0

    .line 166
    :cond_1
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_up_edge_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 167
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_down_edge_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    .line 169
    :goto_0
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_offset_respond:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPipEdgeOffsetRespond:I

    .line 171
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 172
    sget p3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_min_height:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 173
    sget p4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_max_width:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 174
    sget p5, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_max_height:I

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 176
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    sget p7, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->drag_rect_view:I

    invoke-virtual {p5, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    .line 177
    invoke-virtual {p5, p2, p3, p4, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setEdgeSize(IIII)V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {p1, p6}, Landroid/view/View;->setClickable(Z)V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setRectChangedListener(Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;)V

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dualvideo_split_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitDivider:Landroid/widget/ImageView;

    .line 183
    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->initDualDeviceLayout()V

    .line 185
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->initDualDeviceRecycleData()V

    .line 186
    invoke-virtual {p0, p8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setOrientation(I)V

    return-void
.end method

.method public isDualDeviceRootHide()Z
    .locals 0

    .line 724
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsDualDeviceRootHide:Z

    return p0
.end method

.method public onScreenFormChanged(I)V
    .locals 5

    .line 209
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_edge_min_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_edge_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_edge_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 219
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_edge_max_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 220
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_divider_up_edge_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 221
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_divider_down_edge_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_pip_edge_min_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_pip_edge_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_pip_edge_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 226
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_pip_edge_max_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 227
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_divider_up_edge_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 228
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_divider_down_edge_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    goto :goto_0

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_min_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 233
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_max_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 234
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_up_edge_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 235
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_down_edge_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    .line 237
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setEdgeSize(IIII)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->updateDualDeviceLayoutParameter(IZ)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 682
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsStartRecording:Z

    .line 683
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsDualDeviceRootHide:Z

    if-nez v0, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->hideDualDeviceRoot()V

    :cond_0
    return-void
.end method

.method public setDualDeviceButtonEnable(Z)V
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setDualDeviceGroupRootVisibility(I)V
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setDualDeviceItemEnable(Z)V
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 740
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    return-void
.end method

.method public setPIPViewSelected(Z)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 4

    .line 245
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    .line 246
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    .line 250
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 251
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 254
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 257
    :goto_0
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 258
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewUICallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    return-void
.end method

.method public shouldPIPViewRespond(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 289
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    aget v3, v2, v1

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPipEdgeOffsetRespond:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    aget v3, v2, v1

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPipEdgeOffsetRespond:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    const/4 v3, 0x1

    aget v4, v2, v3

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPipEdgeOffsetRespond:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    aget v0, v2, v3

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPipEdgeOffsetRespond:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 294
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOutAreaShouldPIPViewRespond:Z

    return v3

    .line 298
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOutAreaShouldPIPViewRespond:Z

    return v1
.end method

.method public showDualDeviceRoot()V
    .locals 5

    .line 689
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsStartRecording:Z

    if-eqz v0, :cond_0

    return-void

    .line 692
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsItemGroupHide:Z

    if-nez v0, :cond_1

    return-void

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 696
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsDualDeviceRootHide:Z

    .line 697
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 699
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateDistance:F

    neg-float v4, v4

    aput v4, v3, v2

    const/4 v2, 0x0

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 701
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 702
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showOrHideDualDeviceButton(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 729
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 731
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showOrhideDivider(Z)V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitDivider:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 319
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showOrhideDualVideoGroupItem()V
    .locals 1

    .line 674
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsDualDeviceRootHide:Z

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->showDualDeviceRoot()V

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->hideDualDeviceRoot()V

    :goto_0
    return-void
.end method

.method public showOrhidePIPRect(Z)V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 325
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public startRecordingHideDeviceRoot(Z)V
    .locals 0

    .line 671
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsStartRecording:Z

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mParentGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->removeAnimatorListener()V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateDividerDisplaySize(I)V
    .locals 0

    .line 303
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayY:I

    .line 304
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->updateSplitDividerViewLayout()V

    const/4 p1, 0x0

    .line 305
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->showOrhidePIPRect(Z)V

    return-void
.end method

.method public updatePIPDisplaySize(IIII)V
    .locals 0

    .line 309
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayX:I

    .line 310
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayY:I

    .line 311
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayWidth:I

    .line 312
    iput p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayHeight:I

    .line 313
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->updatePIPViewLayoutRect()V

    const/4 p1, 0x0

    .line 314
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->showOrhideDivider(Z)V

    return-void
.end method
