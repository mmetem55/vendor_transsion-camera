.class public Lcom/transsion/camera/app/ui/AbstractTopBarUI;
.super Ljava/lang/Object;
.source "AbstractTopBarUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;
    }
.end annotation


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private final mContext:Landroid/content/Context;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsTopBarAppearing:Z

.field protected final mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mOrientation:I

.field protected mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

.field public final mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

.field private mRoot:Landroid/view/View;

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private final mScreenSupplyColor:I

.field protected mTopBarContainer:Landroid/view/ViewGroup;

.field private mTopBarContainerAvailableWidth:I

.field private mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTopBarItemUIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseHorizontalPopupStyle:Z

.field private popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;


# direct methods
.method public static synthetic $r8$lambda$Heco2HgM2UqneYSPeJLq-O-EX2U(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$rN-8hefCHQXcRYpBnVmT9cR7mtY(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lambda$onScreenFormChanged$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 52
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractTopBarUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;)V
    .locals 5

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 415
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 79
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 80
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v0, 0x7f0603f5

    invoke-virtual {p2, v0, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenSupplyColor:I

    .line 84
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->useHorizontalPopupStyle(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mUseHorizontalPopupStyle:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->ringScreenLightUpdateUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainerAvailableWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 51
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private synthetic lambda$onScreenFormChanged$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "alpha"

    .line 253
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->notifyScreenSupply(Z)V

    return-void
.end method

.method private notifyScreenSupply(Z)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 399
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(Z)V

    goto :goto_0

    .line 401
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz p0, :cond_2

    .line 402
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenSupply(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private originPaddingTop()I
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p0

    return p0
.end method

.method private originTopBarPadding()V
    .locals 4

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result v0

    .line 387
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 388
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 389
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setTopBarContainerVisible(I)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateLayoutParams(I)V
    .locals 7

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->needShowPopUpOption()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    check-cast v1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 193
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 194
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    const v4, 0x7f070763

    .line 195
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 196
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v0

    const/4 v5, -0x1

    .line 197
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, -0x2

    .line 198
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 199
    iput v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainerAvailableWidth:I

    .line 200
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v5, v0, v6}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 201
    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v4, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateLayoutParams] width: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenFormType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getRealScreenSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    .line 205
    invoke-static {v2}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v6, v0, :cond_3

    .line 208
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 209
    instance-of v2, v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v2, :cond_2

    .line 210
    check-cast v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->dismissAllPopupOption()Z

    move-result p0

    return p0
.end method

.method public dismissPopupWithoutAnimation()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getItemSelectPosition()I
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz p0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->getItemSelectPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;
    .locals 1

    .line 373
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    return-object v0
.end method

.method public hintInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->hintInfo()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c01c8

    const/4 v1, 0x1

    .line 90
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    const v0, 0x7f0904be

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    .line 92
    check-cast p1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initManager(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 93
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLayoutParams(I)V

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0172

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 97
    new-instance p2, Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    const v0, 0x7f07075c

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v9, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    const/4 v8, -0x2

    const/4 v10, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v10}, Lcom/transsion/camera/app/ui/setting/PopupOption;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;I)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    .line 100
    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V

    .line 102
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->ringScreenLightUpdateUI()V

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 410
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 411
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->updatePopupOptionShow()Z

    .line 177
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    .line 178
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLayoutParams(I)V

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onPopupDismissCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    return-void
.end method

.method public onPopupDismissEnd()V
    .locals 3

    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 320
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v2, 0x1d

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 321
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 322
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    :cond_0
    return-void
.end method

.method public onPopupDismissStart()V
    .locals 4

    .line 334
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    if-eqz v0, :cond_0

    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 340
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 341
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v2, 0x118

    .line 343
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v2, 0x46

    .line 344
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 345
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onPopupShow()V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x1c

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 294
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 295
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 296
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 297
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v2, 0xaa

    .line 298
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 300
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onScreenFormChanged(IZ)V
    .locals 10

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    if-nez v0, :cond_0

    .line 222
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onScreenFormChanged mRoot is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 227
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v3

    div-int/2addr v3, v1

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    .line 228
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070765

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    .line 231
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v4}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 232
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    move p2, v2

    .line 235
    :cond_2
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 236
    invoke-static {p2, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/high16 v6, 0x3f000000    # 0.5f

    .line 237
    invoke-static {v6, p2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 238
    invoke-static {v4, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    new-array v9, v0, [Landroid/animation/Keyframe;

    aput-object v5, v9, v2

    const/4 v5, 0x1

    aput-object v7, v9, v5

    aput-object v8, v9, v1

    const-string v7, "alpha"

    .line 239
    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 241
    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    .line 242
    invoke-static {p2, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p2

    .line 243
    invoke-static {v6, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    int-to-float v3, v3

    .line 244
    invoke-static {v6, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 245
    invoke-static {v4, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Keyframe;

    aput-object p2, v4, v2

    aput-object v8, v4, v5

    aput-object v6, v4, v1

    aput-object v3, v4, v0

    const-string p2, "translationY"

    .line 246
    invoke-static {p2, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v0, v2

    aput-object p2, v0, v5

    .line 249
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    .line 250
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 251
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 257
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz p0, :cond_4

    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenFormChanged(IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    .line 117
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateTopBarLayout(Ljava/util/List;)V

    return-void
.end method

.method public setupViews()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onScreenFormChanged(IZ)V

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originTopBarPadding()V

    return-void
.end method

.method public showTopBarContainer()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    const/4 v0, 0x0

    .line 356
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    :cond_1
    return-void
.end method

.method public shrinkTopBar()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 171
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateSettingUIs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->updateSupportEntries()V

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateTopBarLayout(Ljava/util/List;)V

    return-void
.end method

.method protected updateTopBarLayout(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    return-void
.end method
