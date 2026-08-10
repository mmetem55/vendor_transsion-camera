.class public Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;
.super Ljava/lang/Object;
.source "MagicSkyPanelUI.java"


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mAppUIRect:Lcom/transsion/camera/app/common/IAppUI;

.field private final mBottomTranslateDistance:F

.field private final mChooseBarListener:Landroid/view/View$OnClickListener;

.field private mChooseLayout:Landroid/view/View;

.field private mChooseRoot:Landroid/widget/FrameLayout;

.field private final mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentItemType:I

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIconAppeareAlphaPath:Landroid/view/animation/PathInterpolator;

.field private mIconAppeareAnim:Landroid/animation/ObjectAnimator;

.field private final mIconAppearedListener:Landroid/animation/AnimatorListenerAdapter;

.field private mIconDisappeareAlphaPath:Landroid/view/animation/PathInterpolator;

.field private mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

.field private final mIconDisappearedListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mIconNormalBottomMargin:I

.field private mIsCapturing:Z

.field private mIsSelfTimer:Z

.field private mIsSelfTimerCapturing:Z

.field private mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mItemDecorationExpand:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private final mOnItemClickListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;

.field private mOrientation:I

.field private mParentViewGroup:Landroid/view/ViewGroup;

.field private mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mScreenFormType:I

.field private mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

.field private mSettingUIAdjustHeight:I

.field private mShutterBarView:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

.field private final mShutterButtonListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView$OnShutterButtonListener;

.field private mShutterListener:Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;

.field private mSkyChooseBar:Landroid/widget/ImageView;

.field private mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

.field private mSkyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSkyRootAnimator:Landroid/animation/ValueAnimator;

.field private mSkyRootAppeareTranslatePath:Landroid/view/animation/PathInterpolator;

.field private final mSkyRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSkySelectRoot:Landroid/view/View;

.field private mSkySelectUIShown:Z

.field private mSkyTranslateDistance:F


# direct methods
.method public static synthetic $r8$lambda$D2KffDaE-iOOuRl7jtkH-csacQM(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c46_sri2hDifmKhbMD1Xz3DJnEU(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w8NlfL7LV99BNPTHpchinMIPhA4(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/content/res/Resources;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/content/res/Resources;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 58
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MagicSkyPanelUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 92
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimer:Z

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsCapturing:Z

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimerCapturing:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    .line 88
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAlphaPath:Landroid/view/animation/PathInterpolator;

    .line 89
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAlphaPath:Landroid/view/animation/PathInterpolator;

    .line 90
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAppeareTranslatePath:Landroid/view/animation/PathInterpolator;

    .line 91
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 191
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseBarListener:Landroid/view/View$OnClickListener;

    .line 293
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 329
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$2;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 340
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$3;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 358
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$4;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappearedListener:Landroid/animation/AnimatorListenerAdapter;

    .line 376
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$5;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppearedListener:Landroid/animation/AnimatorListenerAdapter;

    .line 387
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$6;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 408
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecorationExpand:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 466
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$8;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOnItemClickListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;

    .line 478
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$9;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterButtonListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView$OnShutterButtonListener;

    .line 102
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 103
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUI;

    .line 104
    iput-object p4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 106
    instance-of p3, p5, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    const-string v0, "key_magic_sky_type"

    if-eqz p3, :cond_0

    .line 107
    move-object p3, p5

    check-cast p3, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    invoke-interface {p3, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 109
    :cond_0
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const p3, 0x7f0c019e

    const/4 v1, 0x1

    .line 110
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    .line 111
    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 112
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string p3, "1"

    invoke-virtual {p1, v0, p3, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mCurrentItemType:I

    .line 113
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mCurrentItemType:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSkyType(I)V

    .line 114
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706e7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyTranslateDistance:F

    .line 115
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706e6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mBottomTranslateDistance:F

    .line 116
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070373

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSettingUIAdjustHeight:I

    .line 117
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070368

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconNormalBottomMargin:I

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->initMagicSkyUI()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/widget/ImageView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 57
    sget-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mCurrentItemType:I

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mCurrentItemType:I

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterListener:Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/widget/FrameLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private addAnimatorListener()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private collapseBottomUI(ZZ)V
    .locals 1

    if-nez p2, :cond_0

    .line 278
    iget p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_1

    const/4 p2, 0x0

    .line 283
    invoke-interface {p0, p2, p2, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_1
    return-void
.end method

.method private expandBottomUI(Z)V
    .locals 2

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 273
    invoke-interface {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    return-void
.end method

.method private hideSkySettingUI()V
    .locals 2

    .line 233
    sget-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideSkySettingUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->collapseBottomUI(ZZ)V

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->startCollapseAnimator()V

    .line 236
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->startIconAppearedAnim()V

    .line 237
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x65

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private initAnim()V
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    .line 159
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAlphaPath:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    .line 163
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAlphaPath:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v1, [F

    .line 166
    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    .line 167
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->addAnimatorListener()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initMagicSkyUI()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    const v1, 0x7f090430

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    const v1, 0x7f090435

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    const v1, 0x7f09042f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    const v1, 0x7f090437

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterBarView:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

    .line 131
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    const v2, 0x7f080831

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterBarView:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterBarView:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterButtonListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView$OnShutterButtonListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;->setOnShutterListener(Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView$OnShutterButtonListener;)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    const v1, 0x7f090436

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$1;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItems:Ljava/util/List;

    .line 153
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->initAnim()V

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->showOrHideSkySettingUI()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 294
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 295
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyTranslateDistance:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    .line 296
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 297
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 298
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 299
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 300
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_2

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_0

    .line 313
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    neg-float v0, v0

    .line 305
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_2
    neg-float v0, v0

    .line 302
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 317
    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 322
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    if-eqz p0, :cond_5

    .line 323
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/content/res/Resources;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "bottomMargin"

    .line 753
    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const v0, 0x7f0706cb

    .line 754
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const-string v0, "iconBottomMargin"

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p3, v1, v1, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 755
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private removeAnimatorListener()V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 506
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    .line 507
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    :cond_2
    return-void
.end method

.method private setSkyChooseBarVisible()V
    .locals 3

    .line 816
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 817
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    if-eqz v0, :cond_0

    .line 818
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 820
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 823
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showSkySettingUI()V
    .locals 2

    .line 224
    sget-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showSkySettingUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 225
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->expandBottomUI(Z)V

    .line 226
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->startExpandAnimator()V

    .line 227
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->startIconDisappearedAnim()V

    .line 228
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x64

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private startCollapseAnimator()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method private startExpandAnimator()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAppeareTranslatePath:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startIconAppearedAnim()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppearedListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startIconDisappearedAnim()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappearedListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startSkyRootAnimation(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 793
    iget p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 794
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v0

    const-string v0, "alpha"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 795
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 796
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$11;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$11;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 806
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 808
    :cond_0
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateSettingUILayout(Z)V

    goto :goto_0

    .line 811
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateSettingUILayout(Z)V

    :goto_0
    return-void
.end method

.method private updateEnableState(I)V
    .locals 1

    .line 531
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 533
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateOperationUIEnable(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 535
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateOperationUIEnable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateOperationUIEnable(Z)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 527
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->setCapturing(Z)V

    return-void
.end method

.method private updateSettingUILayout(Z)V
    .locals 13

    .line 642
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 645
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 646
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 648
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    .line 651
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    .line 652
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    const-string v3, "hover_support_setting_ui_bottom_margin"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 654
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 655
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x30

    .line 656
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 657
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 658
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 659
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 660
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecorationExpand:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 661
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 662
    iget v7, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v7, v8, :cond_4

    .line 663
    iget p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    const/16 v0, 0x5a

    const v1, 0x7f0706d6

    const v2, 0x7f0706e0

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb4

    const v7, 0x7f0706d5

    const v10, 0x7f0706df

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    const p1, 0x7f0706cc

    .line 708
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f0706d0

    .line 709
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 708
    invoke-virtual {v4, p1, v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 711
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 712
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const p1, 0x7f0706d7

    .line 713
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f0706db

    .line 714
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 713
    invoke-virtual {v3, p1, v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 716
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 717
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 718
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setHorizontalFadingEdgeEnabled(Z)V

    .line 719
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    goto/16 :goto_0

    :cond_1
    const p1, 0x7f0706ce

    .line 693
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f0706d2

    .line 694
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 693
    invoke-virtual {v4, p1, v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 696
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 697
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const p1, 0x7f0706d9

    .line 698
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f0706dd

    .line 699
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 698
    invoke-virtual {v3, p1, v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 701
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 702
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 703
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setHorizontalFadingEdgeEnabled(Z)V

    .line 704
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    goto/16 :goto_0

    :cond_2
    const p1, 0x7f0706cd

    .line 679
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f0706d1

    .line 680
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 679
    invoke-virtual {v4, p1, v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 682
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 683
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const p1, 0x7f0706d8

    .line 684
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f0706dc

    .line 685
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 684
    invoke-virtual {v3, p1, v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 687
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 688
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 689
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setHorizontalFadingEdgeEnabled(Z)V

    .line 690
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    goto :goto_0

    :cond_3
    const p1, 0x7f0706cf

    .line 665
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f0706d3

    .line 666
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 665
    invoke-virtual {v4, p1, v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 668
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 669
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const p1, 0x7f0706da

    .line 670
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f0706de

    .line 671
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 670
    invoke-virtual {v3, p1, v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 673
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 674
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 675
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setHorizontalFadingEdgeEnabled(Z)V

    .line 676
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    .line 722
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    rsub-int v0, v0, 0x168

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 724
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItems:Ljava/util/List;

    invoke-direct {p1, v0, v8}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;-><init>(Ljava/util/List;Z)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    .line 728
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecorationExpand:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto/16 :goto_3

    :cond_4
    const/16 v7, 0x50

    .line 730
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 731
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v7, -0x1

    .line 732
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v7, 0x7f07036c

    .line 733
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 734
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 736
    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 738
    iget v11, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    add-int/2addr v0, v2

    .line 740
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    .line 742
    :cond_5
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSettingUIAdjustHeight:I

    sub-int v0, v1, v0

    .line 743
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconNormalBottomMargin:I

    add-int/2addr v1, v2

    .line 746
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    new-array v2, p1, [I

    aput v7, v2, v9

    aput v0, v2, v8

    const-string v0, "bottomMargin"

    .line 747
    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v2, p1, [I

    aput v10, v2, v9

    aput v1, v2, v8

    const-string v1, "iconBottomMargin"

    .line 748
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p1, v9

    aput-object v1, p1, v8

    .line 749
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    .line 750
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 751
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 752
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v3, v4, v6}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/content/res/Resources;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 758
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 760
    :cond_6
    invoke-virtual {v3, v9, v9, v9, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const p1, 0x7f0706cb

    .line 761
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v4, p1, v9, v9, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 762
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    :goto_2
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItems:Ljava/util/List;

    invoke-direct {p1, v0, v9}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;-><init>(Ljava/util/List;Z)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    .line 766
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 767
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 768
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 769
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setHorizontalFadingEdgeEnabled(Z)V

    .line 770
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    .line 773
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOnItemClickListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;)V

    .line 774
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 775
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 776
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0706e4

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFadingEdgeLength(I)V

    .line 777
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_7

    .line 778
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    .line 784
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->onScreenFormChanged(I)V

    .line 785
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 788
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateAdapterPosition()V

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 218
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimerCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v1, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_1
    return-void
.end method

.method public isCapturing()Z
    .locals 0

    .line 602
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsCapturing:Z

    return p0
.end method

.method public isSkySelectUIShow()Z
    .locals 0

    .line 598
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    return p0
.end method

.method public mIsSelfTimerCapturing()Z
    .locals 0

    .line 606
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimerCapturing:Z

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    .line 540
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateEnableState(I)V

    const/16 v0, 0x1b

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1e

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 544
    :pswitch_0
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsCapturing:Z

    .line 545
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    .line 546
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterBarView:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 549
    :pswitch_1
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimerCapturing:Z

    .line 550
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterBarView:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 556
    :pswitch_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsCapturing:Z

    .line 557
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterBarView:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 565
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterBarView:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 560
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    .line 562
    :pswitch_3
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimerCapturing:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .line 590
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsCapturing:Z

    if-eqz v0, :cond_0

    .line 591
    sget-object p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onBackPressed return by mIsCapturing !!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->showOrHideSkySettingUI()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterBarView:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 613
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    if-eq v0, p1, :cond_2

    const/4 v2, 0x0

    .line 615
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    if-ne v3, v1, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 620
    :goto_0
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    .line 621
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->startSkyRootAnimation(Z)V

    :cond_2
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 2

    .line 626
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->onScreenFormChanged(I)V

    .line 630
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 632
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->collapseBottomUI(ZZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 634
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->expandBottomUI(Z)V

    .line 637
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->startSkyRootAnimation(Z)V

    .line 638
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->setSkyChooseBarVisible()V

    return-void
.end method

.method public setShutterBarSelfTimerDrawable(Z)V
    .locals 1

    .line 581
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimer:Z

    if-eqz p1, :cond_0

    .line 583
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterBarView:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    const v0, 0x7f08082e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 585
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterBarView:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    const v0, 0x7f08082c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setShutterClickCallback(Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterListener:Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;

    return-void
.end method

.method public show()V
    .locals 1

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showOrHideSkySettingUI()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->cancelAnimation()V

    .line 201
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    if-eqz v0, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->hideSkySettingUI()V

    goto :goto_0

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->showSkySettingUI()V

    :goto_0
    return-void
.end method

.method public unInitMagicSkyUI()V
    .locals 2

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->cancelAnimation()V

    .line 173
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->removeAnimatorListener()V

    .line 174
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->hide()V

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mShutterListener:Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;

    return-void
.end method

.method public updateAdapterPosition()V
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_magic_sky_type"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 576
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->setCurrentPosition(I)V

    :cond_0
    return-void
.end method
