.class public Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "InteractiveUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;
    }
.end annotation


# static fields
.field private static final ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private DURATION:I

.field private alphaAnimator:Landroid/animation/ObjectAnimator;

.field private mCommonInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

.field private mCommonSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;"
        }
    .end annotation
.end field

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsNeedAnimation:Z

.field private mOptionBarFadeInAnim:Landroid/animation/ObjectAnimator;

.field private mOptionBarFadeOutAnim:Landroid/animation/ObjectAnimator;

.field private mOptionBarNum:I

.field private mOptionRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mOptionRootView:Landroid/widget/LinearLayout;

.field private mOptionSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mRootView:Landroid/view/ViewGroup;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;


# direct methods
.method public static synthetic $r8$lambda$-bqrxxq8GmBgF-RQbSeJOMB1d54(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->lambda$updateOptionRootHoverLayout$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2RukurdqLSjxJsz3M-q06yx28Lc(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->lambda$setOptionSettingUIList$3(Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2zk-f39yQTrErMJDKg-JmM_LoxM(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->lambda$setOptionSettingUIList$2(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8cXUt7UtSJVO4fP-7ow8nr80voo(Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->lambda$setCommonSettingUIList$1(Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AaXS62rYCY0bu8XML980OkdOohs(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->lambda$setCommonSettingUIList$0(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FbSIfj6IECq8lRH94B31YUT5RS4(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->lambda$new$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$iDsxVowUH0Jjd87Nee9ajDL-dXU(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->lambda$updateOptionSettingUIs$5(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kJZn5bzOEP3VeXnfQYiQpzOzXBs(ZLcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->lambda$notifyScreenSupply$7(ZLcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "InteractiveUIM"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 74
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 75
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p5

    move-object v5, p4

    move-object v7, p6

    .line 80
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/16 p2, 0x12c

    .line 67
    iput p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->DURATION:I

    const/4 p2, 0x0

    .line 68
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsNeedAnimation:Z

    .line 69
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    .line 847
    new-instance p2, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Landroid/widget/LinearLayout;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setOptionRootViewEnable(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;IIZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionRootLayout(IIZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarFadeInAnim:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarFadeInAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$600()Landroid/view/animation/PathInterpolator;
    .locals 1

    .line 52
    sget-object v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method private alignOptionBarIfNeed(I)V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarNum:I

    if-gtz v0, :cond_0

    return-void

    .line 651
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 652
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 655
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarNum:I

    const/4 v1, 0x4

    if-gt p1, v1, :cond_1

    .line 656
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0702d3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 657
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0702d0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x53

    .line 658
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 659
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 661
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$6(Z)V
    .locals 0

    .line 847
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->notifyScreenSupply(Z)V

    return-void
.end method

.method private static synthetic lambda$notifyScreenSupply$7(ZLcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .locals 0

    .line 851
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(Z)V

    return-void
.end method

.method private static synthetic lambda$setCommonSettingUIList$0(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z
    .locals 0

    .line 283
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setCommonSettingUIList$1(Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .locals 2

    .line 277
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->hideEntryView()V

    .line 278
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 279
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 283
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 285
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static synthetic lambda$setOptionSettingUIList$2(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z
    .locals 0

    .line 303
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setOptionSettingUIList$3(Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .locals 1

    .line 299
    invoke-interface {p3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 303
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda9;

    invoke-direct {p1, p3}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 305
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateOptionRootHoverLayout$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "bottomMargin"

    .line 679
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 680
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 682
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 684
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const-string v2, "topMargin"

    .line 685
    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 686
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateOptionSettingUIs$5(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 829
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->updateSupportEntries()V

    :cond_0
    return-void
.end method

.method private loadCommonSettingUIs(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 98
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 99
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_2

    .line 100
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_5

    .line 103
    invoke-interface {v0, p2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 109
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 110
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 111
    iget-object v5, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v5

    .line 112
    new-instance v6, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    invoke-direct {v6, v4, v5}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;-><init>(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 113
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 115
    :cond_4
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 116
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 117
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 120
    :cond_5
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mBatteryStatus:I

    iget v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mTemperatureStatus:I

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setBatteryStatus(II)V

    .line 122
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v1, :cond_6

    .line 123
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 126
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v1, :cond_7

    .line 127
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 130
    :cond_7
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz v1, :cond_8

    .line 131
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V

    .line 134
    :cond_8
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v1, :cond_9

    .line 135
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 138
    :cond_9
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_a

    .line 139
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 142
    :cond_a
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v1, :cond_b

    .line 143
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 145
    :cond_b
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz v1, :cond_c

    .line 146
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 149
    :cond_c
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wide_camera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 150
    new-instance v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_d
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_pmaster_feature"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 154
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    .line 157
    :cond_e
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "front_wide_camera"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 158
    new-instance v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    :cond_f
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_10

    .line 163
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    move-result-object v1

    .line 165
    :cond_10
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gtz v2, :cond_11

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_12

    .line 166
    :cond_11
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    :cond_12
    if-nez v1, :cond_13

    .line 170
    sget-object v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEntryView null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_13
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setupEntryView()V

    .line 176
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method private loadOptionSettingUIs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 188
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_1

    .line 189
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_2

    .line 192
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 193
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v1, :cond_3

    .line 197
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz v1, :cond_4

    .line 201
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V

    .line 204
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v1, :cond_5

    .line 205
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 208
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_6

    .line 209
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 212
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v1, :cond_7

    .line 213
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 216
    :cond_7
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz v1, :cond_8

    .line 217
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 219
    :cond_8
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_9

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    const v3, 0x7f0c013c

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    .line 222
    invoke-static {v1, v2, v3}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    :cond_9
    if-nez v1, :cond_a

    .line 225
    sget-object v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEntryView null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_a
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setupEntryView()V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private needShowOptionBar()Z
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 860
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_1

    .line 861
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->needShowOptionBar()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private notifyScreenSupply(Z)V
    .locals 1

    .line 850
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 851
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private removeCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 347
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    .line 348
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz p0, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 352
    :cond_1
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->hideEntryView()V

    .line 353
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setOptionRootViewEnable(Landroid/view/ViewGroup;Z)V
    .locals 1

    const/4 p1, 0x0

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 419
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private stopPressedAnimation(I)V
    .locals 0

    .line 870
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->needStopPressedAnimation(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 871
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 872
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 873
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unInitCommonSettingUIs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 334
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 335
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 336
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->removeCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    .line 337
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    .line 339
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method private unInitOptionSettingUIs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    .line 358
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    if-eqz p1, :cond_2

    .line 360
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 362
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    .line 364
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method private updateOptionRootHoverLayout(Landroid/widget/FrameLayout$LayoutParams;IIII)V
    .locals 3

    .line 666
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 668
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 669
    iget-object p5, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 670
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout$LayoutParams;

    .line 671
    iget p5, p5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    aput p2, v2, v1

    const/4 p2, 0x1

    aput p3, v2, p2

    const-string p3, "bottomMargin"

    .line 673
    invoke-static {p3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    new-array v2, v0, [I

    aput p5, v2, v1

    aput p4, v2, p2

    const-string p4, "topMargin"

    .line 674
    invoke-static {p4, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    new-array p5, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p3, p5, v1

    aput-object p4, p5, p2

    .line 675
    invoke-static {p5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p3, 0x190

    .line 676
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 677
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 678
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 689
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateOptionRootLayout(IIZ)V
    .locals 8

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x53

    .line 732
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 733
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0702d5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 734
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 735
    iget-object v4, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 737
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "option_margin_top_normal"

    invoke-static {v1, v5}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 738
    iget v5, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 739
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "option_margin_top_hover"

    invoke-static {v1, v5}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    :cond_0
    move v5, v1

    const/4 v6, 0x0

    .line 742
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    move-object v1, p0

    .line 743
    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionRootHoverLayout(Landroid/widget/FrameLayout$LayoutParams;IIII)V

    return-void

    :cond_1
    const/4 p3, 0x0

    .line 746
    invoke-virtual {v2, p3, p3, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_9

    .line 748
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->alignOptionBarIfNeed(I)V

    .line 749
    invoke-direct {p0, p3, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionsOrientation(ZZ)V

    const/16 p2, 0x5a

    const v1, 0x7f0702cd

    const v3, 0x7f0702ce

    const/4 v4, 0x4

    const v5, 0x7f0702cf

    if-eq p1, p2, :cond_7

    const/16 p2, 0xb4

    const v6, 0x7f0702cb

    const v7, 0x7f0702cc

    if-eq p1, p2, :cond_5

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_3

    .line 781
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 782
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 783
    iget p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarNum:I

    if-gt p2, v4, :cond_2

    .line 784
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 786
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    :cond_3
    const/16 p2, 0x33

    .line 770
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 771
    iget p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarNum:I

    if-gt p2, v4, :cond_4

    .line 772
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 774
    :cond_4
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 776
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_5
    const/16 p2, 0x35

    .line 761
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 762
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 763
    iget p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarNum:I

    if-gt p2, v4, :cond_6

    .line 764
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 766
    :cond_6
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_7
    const/16 p2, 0x55

    .line 752
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 753
    iget p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarNum:I

    if-gt p2, v4, :cond_8

    .line 754
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 756
    :cond_8
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 758
    :goto_1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 790
    :goto_2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p2, p1, p3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_4

    :cond_9
    if-eqz p2, :cond_a

    const/4 p1, 0x2

    if-ne p2, p1, :cond_b

    .line 793
    :cond_a
    invoke-direct {p0, v1, p3}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionsOrientation(ZZ)V

    .line 794
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p3, p3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 795
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 796
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702d6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 797
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ge p3, p1, :cond_b

    .line 798
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 799
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 800
    iput v5, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 801
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 804
    :cond_b
    :goto_4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateOptionRootLayout(IIZZ)V
    .locals 3

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 695
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarFadeInAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    if-nez p4, :cond_3

    .line 709
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionRootLayout(IIZ)V

    return-void

    .line 713
    :cond_3
    iget-object p4, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p4, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    const-wide/16 v0, 0x15e

    invoke-virtual {p4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    .line 714
    sget-object v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 715
    iget-object p4, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;IIZ)V

    invoke-virtual {p4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 727
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionBarFadeOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateOptionRootVisible(Z)V
    .locals 6

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->alphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->alphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 372
    :cond_0
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 373
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {v1, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v2, 0x2

    const-string v4, "alpha"

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->needShowOptionBar()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 375
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsNeedAnimation:Z

    if-nez p1, :cond_1

    .line 376
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 379
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {p1, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->alphaAnimator:Landroid/animation/ObjectAnimator;

    .line 381
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 382
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->alphaAnimator:Landroid/animation/ObjectAnimator;

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->DURATION:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 383
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->alphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 386
    :cond_2
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsNeedAnimation:Z

    if-nez p1, :cond_3

    .line 387
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 389
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->alphaAnimator:Landroid/animation/ObjectAnimator;

    .line 390
    iget v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->DURATION:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 391
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->alphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->alphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 410
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->alphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 413
    :goto_0
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsNeedAnimation:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateOptionsOrientation(ZZ)V
    .locals 5

    .line 808
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 812
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 814
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 815
    instance-of v4, v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v4, :cond_2

    if-eqz p2, :cond_1

    .line 817
    check-cast v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v3, v1, v1}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_1

    .line 819
    :cond_1
    check-cast v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    iget v4, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    invoke-interface {v3, v4, p1}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public changeUIWhenSwitchModeBefore()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 568
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 569
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->releaseResource()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .line 599
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 600
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;Landroid/view/LayoutInflater;)V
    .locals 1

    .line 85
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    const p2, 0x7f0c00ce

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p3, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09023d

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    const p2, 0x7f09023b

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const p2, 0x7f09023c

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionRootView:Landroid/widget/LinearLayout;

    .line 90
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_0

    .line 463
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_0

    .line 468
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->stopPressedAnimation(I)V

    .line 469
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x30

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :cond_2
    :pswitch_0
    const/4 p1, 0x0

    .line 476
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionRootVisible(Z)V

    goto :goto_1

    :cond_3
    :pswitch_1
    const/4 p1, 0x1

    .line 485
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionRootVisible(Z)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 6

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    .line 428
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 433
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 434
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 497
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsNeedAnimation:Z

    .line 498
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 504
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_0

    .line 511
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 516
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 2

    .line 613
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 615
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 616
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 618
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_0

    .line 623
    :cond_1
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 624
    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionsOrientation(ZZ)V

    return-void

    .line 628
    :cond_2
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionRootLayout(IIZZ)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 2

    .line 633
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_0

    .line 638
    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onScreenFormChanged(IZ)V

    goto :goto_0

    .line 643
    :cond_1
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionRootLayout(IIZZ)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_0

    .line 535
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 540
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onSettingOptionClick(Ljava/lang/String;)V
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 841
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsNeedAnimation:Z

    .line 842
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onSettingOptionToggle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected onSetupViews()V
    .locals 0

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_0

    .line 523
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 528
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0

    .line 561
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 562
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->recover()V

    return-void
.end method

.method public recover()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 239
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 240
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public restoreInteractiveView()V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 589
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 591
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->restoreInteractiveView()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 0

    .line 555
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    .line 556
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->recover()V

    return-void
.end method

.method public setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    new-instance v2, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 288
    new-instance v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 290
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->loadCommonSettingUIs(Ljava/util/List;Ljava/lang/String;)V

    .line 292
    sget-object p1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCommonSettingUIList,mCommonSettingUIList "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 2

    .line 441
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_0

    .line 445
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 450
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v0, :cond_2

    .line 452
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setOptionSettingUIList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    new-instance v2, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 308
    new-instance v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 310
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    .line 311
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->notifyScreenSupply(Z)V

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->loadOptionSettingUIs(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 313
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionRootVisible(Z)V

    .line 314
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    move p1, v1

    :cond_1
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionRootLayout(IIZZ)V

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 1

    .line 325
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_1

    .line 327
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    :cond_1
    :goto_0
    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public show()V
    .locals 1

    .line 606
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 607
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->unInitOptionSettingUIs(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 577
    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    .line 578
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->destroy()V

    .line 579
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->unInitCommonSettingUIs(Ljava/util/List;)V

    .line 580
    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    .line 581
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateOptionSettingUIs()V
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 827
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionSettingUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
