.class public Lcom/transsion/camera/app/ui/ModePanelUI;
.super Ljava/lang/Object;
.source "ModePanelUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModePanelUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;,
        Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;,
        Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isSupportMoreMode:Z

.field private mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFadeOutListener:Landroid/animation/Animator$AnimatorListener;

.field private mInitialModesNumberInTab:I

.field private mIsHiding:Z

.field private mMarginalModeItemMargin:I

.field private mMaxShakeHeight:F

.field private mMiddleModeItemMargin:I

.field private mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

.field private mModePanelRootLayout:Landroid/view/ViewGroup;

.field private mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mModePickerScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

.field private mModeUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field private mSellingPointItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShakeAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mShakeHeight:I


# direct methods
.method public static synthetic $r8$lambda$8tfuOInrNoFYLLH5D6GUeCvElDo(Lcom/transsion/camera/app/ui/ModePanelUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->lambda$inflateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oR5302PeFoTAeuMkUuTtOFKCq9g(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->lambda$setModeList$1(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ModePanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V
    .locals 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeUIItems:Ljava/util/List;

    .line 62
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    .line 63
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 64
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mIsHiding:Z

    .line 384
    new-instance v0, Lcom/transsion/camera/app/ui/ModePanelUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModePanelUI$1;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 417
    new-instance v0, Lcom/transsion/camera/app/ui/ModePanelUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModePanelUI$2;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mShakeAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePickerScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    .line 78
    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 79
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mContext:Landroid/content/Context;

    .line 80
    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    .line 81
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030023

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mSellingPointItems:Ljava/util/List;

    .line 82
    invoke-virtual {p5}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->isSupportMoreMode:Z

    .line 83
    invoke-virtual {p5}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->defaultModeCountInTab()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mInitialModesNumberInTab:I

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/ModePanelUI;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/app/ui/ModePanelUI;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mIsHiding:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-object p0
.end method

.method static synthetic access$300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/camera/app/ui/ModePanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/ui/ScrollConsumer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/ModePanelUI;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMarginalModeItemMargin:I

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/ModePanelUI;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMiddleModeItemMargin:I

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/ModePanelUI;)Landroid/view/ViewGroup;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private varargs createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;
    .locals 0

    .line 405
    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 406
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private varargs createValueAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;I[I)Landroid/animation/Animator;
    .locals 0

    .line 411
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 412
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long p1, p2

    .line 413
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private initializeModePanelView()V
    .locals 5

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMarginalModeItemMargin:I

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMiddleModeItemMargin:I

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mShakeHeight:I

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMaxShakeHeight:F

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0902a8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 312
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 313
    new-instance v0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/ui/ModePanelUI$1;)V

    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    invoke-direct {v0, v1, v2, v4}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    .line 315
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 317
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;

    invoke-direct {v1, p0, v3}, Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/ui/ModePanelUI$1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private synthetic lambda$inflateView$0(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->hideModePanel()V

    return-void
.end method

.method private synthetic lambda$setModeList$1(Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeUIItems:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mSellingPointItems:Ljava/util/List;

    iget-object v2, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 123
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-direct {v1, p1, p0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private loadFadeInAnimator()V
    .locals 8

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMaxShakeHeight:F

    sub-float/2addr v0, v1

    .line 354
    sget-object v1, Lcom/transsion/camera/app/ui/ModePanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadFadeInAnimator]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x0

    const/4 v5, 0x1

    aput v0, v3, v5

    const-string v0, "translationY"

    const/16 v6, 0x12c

    invoke-direct {p0, v1, v0, v6, v3}, Lcom/transsion/camera/app/ui/ModePanelUI;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v7, "alpha"

    invoke-direct {p0, v1, v7, v6, v3}, Lcom/transsion/camera/app/ui/ModePanelUI;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v1

    .line 359
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mShakeAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-array v6, v2, [I

    aput v4, v6, v4

    iget v7, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mShakeHeight:I

    aput v7, v6, v5

    const/16 v7, 0x64

    invoke-direct {p0, v3, v7, v6}, Lcom/transsion/camera/app/ui/ModePanelUI;->createValueAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;I[I)Landroid/animation/Animator;

    move-result-object v3

    .line 361
    iget-object v6, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mShakeAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-array v2, v2, [I

    iget v7, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mShakeHeight:I

    aput v7, v2, v4

    aput v4, v2, v5

    const/16 v4, 0xc8

    invoke-direct {p0, v6, v4, v2}, Lcom/transsion/camera/app/ui/ModePanelUI;->createValueAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;I[I)Landroid/animation/Animator;

    move-result-object v2

    .line 364
    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startShowAnimator()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->loadFadeInAnimator()V

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public cancelDragAndDrop()V
    .locals 0

    return-void
.end method

.method public hide()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 88
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->isSupportMoreMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0902de

    goto :goto_0

    :cond_0
    const v0, 0x7f0902a7

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePickerScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setModePanelLayout(Landroid/view/ViewGroup;)V

    .line 90
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePickerScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    new-instance v0, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/ui/ModePanelUI$1;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setPanelStateListener(Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;)V

    const p2, 0x7f0c00fa

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    const p2, 0x7f0902a5

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 93
    new-instance p2, Lcom/transsion/camera/app/ui/ModePanelUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/ModePanelUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->initializeModePanelView()V

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public isVisible()Z
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public modePanelScrollToTop()V
    .locals 1

    .line 461
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public notifyListTypeUpdate()V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    return-void
.end method

.method public refreshModePanelView()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeUIItems:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateModeData(Ljava/util/List;)V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->modePanelScrollToTop()V

    return-void
.end method

.method public resetMoreModeToNormal()V
    .locals 0

    return-void
.end method

.method public restoreView()V
    .locals 0

    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setClickModeIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;)V
    .locals 0

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 114
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 116
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->isSupportMoreMode:Z

    if-eqz p2, :cond_0

    .line 117
    iget p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mInitialModesNumberInTab:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 118
    iget p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mInitialModesNumberInTab:I

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 122
    :cond_0
    new-instance p2, Lcom/transsion/camera/app/ui/ModePanelUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/ModePanelUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->refreshModePanelView()V

    return-void
.end method

.method public setModeNameBeforeSwitchMoreMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setModePanelGuideEnable(Z)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setModePanelGuideEnable(Z)V

    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;)V
    .locals 0

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    return-void
.end method

.method public setViewEnable(Z)V
    .locals 0

    return-void
.end method

.method public setupViews()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCurrentModeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateCurrentMode(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->refreshModePanelView()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 179
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->startShowAnimator()V

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x42

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

.method public shrinkModePanel()V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    if-eqz p0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    :cond_0
    return-void
.end method

.method public spreadModePanel()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->spreadModePanel()V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x48

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCurrentModeName:Ljava/lang/String;

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateCurrentMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateItemClickable(Z)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateItemClickable(Z)V

    :cond_0
    return-void
.end method
