.class public Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;
.super Ljava/lang/Object;
.source "ProfessionalModeUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;
.implements Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;
    }
.end annotation


# static fields
.field private static final HIDE_SEEKBAR_DELAY_TIME:I = 0xbb8

.field private static final MSG_HIDE_POPUPBAR:I = 0x67

.field private static final MSG_HIDE_SEEKBAR:I = 0x66

.field private static final MSG_INFLATE_VIEW_IF_NEED:I = 0x64

.field private static final MSG_RESET_CAPTURING_UI:I = 0x68

.field private static final MSG_UPDATE_SETTING_ITEMS_LAYOUT:I = 0x65

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAboveMainCtrlParentLayout:Landroid/view/ViewGroup;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private final mCaptureParentLayout:Landroid/view/ViewGroup;

.field private final mCaptureRootLayoutId:I

.field private mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mCaptureStopListener:Landroid/view/View$OnClickListener;

.field private mCapturingEndAnim:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentItemIndex:I

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsInflated:Z

.field private mOrientation:I

.field private final mParentLayout:Landroid/view/ViewGroup;

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

.field private mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mPopupRootUI:Landroid/view/View;

.field private mProGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

.field private mProgressCallBack:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

.field private mProgressView:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

.field private mProgressViewRoot:Landroid/view/View;

.field private mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private final mResources:Landroid/content/res/Resources;

.field private final mRootLayoutId:I

.field private mRootUI:Landroid/view/View;

.field private mScreenFormType:I

.field private mSeekBarCurIndex:I

.field private mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final mSettingItemLayoutId:I

.field private final mSettingItemUIList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingItemsLayout:Landroid/view/ViewGroup;

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mTranslateDistance:F

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$O_C_KM4VuB2gHarotHsunysUt94(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->lambda$show$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$RfXZX_BpqWKgMV8BlxVCTD85WpM(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->lambda$disable$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ag_XCX0ib7LZz6B8hbMLTwXKKH8(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->lambda$updateRootRectHover$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hBbykUIy9EJOHzGqrj8PlR-2QEI(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->lambda$hide$2(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProfessionalModeUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 95
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 7

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsInflated:Z

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 70
    iput v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    .line 82
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 83
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f28f5c3    # 0.66f

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 84
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    .line 89
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopListener:Landroid/view/View$OnClickListener;

    .line 90
    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSeekBarCurIndex:I

    .line 91
    iput v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    .line 101
    iput p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    .line 102
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    .line 105
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 107
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 108
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 109
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    :cond_0
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    .line 112
    sget p2, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_graduation_view_translate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mTranslateDistance:F

    .line 113
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAboveMainCtrlParentLayout:Landroid/view/ViewGroup;

    .line 114
    invoke-interface {p6}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureParentLayout:Landroid/view/ViewGroup;

    .line 115
    iput-object p6, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 116
    iput-object p7, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 117
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$layout;->professional_mode_layout:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mRootLayoutId:I

    .line 118
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$layout;->professional_capture_layout:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureRootLayoutId:I

    .line 119
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$layout;->professional_setting_item:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemLayoutId:I

    .line 120
    new-instance p1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;

    invoke-direct {p1, p0, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->handleInflateViewIfNeed(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Ljava/util/List;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateSettingItemsLayout(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;ZZ)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->hideSeekBar(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->doResetCapturingUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/ui/widget/GraduationView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSeekBarCurIndex:I

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;IZ)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->highLightSelectItem(IZ)V

    return-void
.end method

.method private disable()V
    .locals 2

    .line 1017
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_0

    .line 1018
    new-instance v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private doResetCapturingUI()V
    .locals 1

    .line 418
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->stopCapturingBeginAnim()V

    .line 419
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->stopCapturingEndAnim()V

    const/4 v0, 0x1

    .line 420
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->setCaptureButtonEnable(Z)V

    return-void
.end method

.method private handleInflateViewIfNeed(I)V
    .locals 6

    .line 255
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsInflated:Z

    if-nez v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mRootLayoutId:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureRootLayoutId:I

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$id;->professional_root_group:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mRootUI:Landroid/view/View;

    .line 259
    sget v2, Lcom/transsion/camera/feature/mode/professional/R$id;->professional_setting_ui_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 260
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureParentLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_capture_root:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    .line 261
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$layout;->professional_graduation_layout:I

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAboveMainCtrlParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 262
    sget v4, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_graduation_ui_root:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 263
    sget v4, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_graduation_view_ui:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/GraduationView;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v4, 0x0

    .line 264
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 265
    new-instance v2, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    .line 266
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->setGraduationView(Lcom/transsion/camera/app/ui/widget/GraduationView;)V

    .line 268
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    .line 270
    iput v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    .line 272
    :cond_0
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$id;->setting_items_layout:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    .line 273
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/transsion/camera/feature/mode/professional/R$layout;->pro_popup_bar_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAboveMainCtrlParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 276
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_popup_bar_ui_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupRootUI:Landroid/view/View;

    .line 277
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_popup_bar_rotate_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 278
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_popup_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 279
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    invoke-direct {v0, v2, p1, v5}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    .line 282
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_capture_button:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_professional_capture_process_end:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCapturingEndAnim:Landroid/graphics/drawable/Drawable;

    .line 287
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_capturing_progress:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressView:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    if-eqz p1, :cond_2

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressCallBack:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->setProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;)V

    .line 291
    :cond_2
    sget p1, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_capturing_rotate_framelayout:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 292
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    invoke-direct {p0, p1, v4}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateProfessionalLayoutParams(IZ)V

    .line 293
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsInflated:Z

    :cond_3
    return-void
.end method

.method private hide(Z)V
    .locals 2

    .line 1001
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_0

    .line 1002
    new-instance v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1011
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1012
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->dismissPopup()V

    :cond_1
    return-void
.end method

.method private hideSeekBar(ZZ)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->isGraduationShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 506
    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 507
    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mTranslateDistance:F

    goto :goto_0

    .line 509
    :cond_0
    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mTranslateDistance:F

    neg-float p2, p2

    .line 511
    :goto_0
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->startHideAnim(F)V

    goto :goto_1

    .line 513
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setY(F)V

    .line 515
    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSeekBarCurIndex:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    .line 516
    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->highLightSelectItem(IZ)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 520
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x59

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_3
    return-void
.end method

.method private highLightSelectItem(IZ)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 587
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 588
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-interface {v2, v3}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isGraduationShowing()Z
    .locals 1

    .line 978
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 981
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private synthetic lambda$disable$3()V
    .locals 3

    .line 1019
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x1

    .line 1021
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->hideSeekBar(ZZ)V

    .line 1022
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->dismissPopup()Z

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move v0, v1

    .line 1025
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1026
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$hide$2(Z)V
    .locals 2

    .line 1003
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1004
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x1

    .line 1005
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->hideSeekBar(ZZ)V

    .line 1007
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$show$1()V
    .locals 3

    .line 987
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 988
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 989
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 992
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateRootRectHover$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;ZLandroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "barTopMargin"

    .line 697
    invoke-virtual {p6, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "barBottomMargin"

    .line 698
    invoke-virtual {p6, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 697
    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const-string v0, "graduBottomMargin"

    .line 699
    invoke-virtual {p6, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v2, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const-string v0, "popBottomMargin"

    .line 700
    invoke-virtual {p6, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v2, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const-string v0, "processBottomMargin"

    .line 701
    invoke-virtual {p6, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p4, v2, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const-string v0, "processHeight"

    .line 702
    invoke-virtual {p6, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "processPadding"

    if-eqz p5, :cond_0

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {p6, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v2, v2, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 710
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {p6, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v2, p1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private restoreAllItemsColor()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 581
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    invoke-interface {v2, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private show()V
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_0

    .line 986
    new-instance v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private showSeekBar(I)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz v0, :cond_0

    .line 496
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSeekBarCurIndex:I

    const/4 p1, 0x0

    .line 497
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->startShowAnim(F)V

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x58

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

.method private startHideAnim(F)V
    .locals 7

    .line 551
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 554
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const-string p1, "translationY"

    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 559
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 560
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v3

    aput-object v0, v2, v1

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 561
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 577
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startShowAnim(F)V
    .locals 7

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 528
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    iget v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mTranslateDistance:F

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    iget v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mTranslateDistance:F

    neg-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    .line 539
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    new-array v3, v2, [F

    aput p1, v3, v1

    const-string p1, "translationY"

    invoke-static {v0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 543
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 544
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 545
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 546
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p1, v3, v1

    aput-object v0, v3, v2

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 547
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateEntryViewData()V
    .locals 4

    const/4 v0, 0x0

    .line 593
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 594
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    .line 596
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    .line 595
    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateMFTitle(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateMFTitle(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 602
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_manual_focus"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    .line 603
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "continuous-picture"

    .line 604
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/mode/professional/R$string;->manual_focus_mf_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 605
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/mode/professional/R$string;->manual_focus_af_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->setTitle(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 611
    invoke-interface {p3, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->updateValue(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateProfessionalItemsLayoutParams()V
    .locals 5

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x10e

    .line 453
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/mode/professional/R$dimen;->professional_setting_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    .line 456
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 455
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    move v1, v3

    :goto_0
    move v0, v3

    .line 458
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 459
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;

    if-nez v2, :cond_2

    goto :goto_2

    .line 463
    :cond_2
    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateProfessionalLayoutParams(IZ)V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateRootRectHover(IZ)V

    goto :goto_0

    .line 427
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateRootRect(I)V

    .line 429
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateProfessionalItemsLayoutParams()V

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    if-eqz v0, :cond_1

    .line 431
    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->updatePopup(I)V

    .line 434
    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 p2, 0x0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz v0, :cond_3

    .line 438
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 440
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_4

    .line 441
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_4
    return-void
.end method

.method private updateRootRect(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 736
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const v3, 0x800055

    const v4, 0x800053

    const v5, 0x800033

    const v6, 0x800035

    const/16 v7, 0x10e

    const/16 v8, 0xb4

    const/16 v9, 0x51

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/16 v12, 0x5a

    const/4 v13, 0x0

    if-eqz v2, :cond_4

    .line 737
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 738
    invoke-virtual {v2, v13, v13, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 739
    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 740
    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 741
    iget v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-ne v14, v11, :cond_3

    if-eq v1, v12, :cond_2

    if-eq v1, v8, :cond_1

    if-eq v1, v7, :cond_0

    .line 767
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_height:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 768
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_width:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 769
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 770
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_end_margin:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 771
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_0_top_margin:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 758
    :cond_0
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_height:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 759
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_width:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 760
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 761
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_90_top_margin:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 762
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_end_margin:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 751
    :cond_1
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_height:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 752
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_width:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 753
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 754
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_end_margin:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 755
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_0_top_margin:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 744
    :cond_2
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_height:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 745
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_width:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 746
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 747
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_90_top_margin:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 748
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_professional_end_margin:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    add-int/2addr v1, v12

    .line 774
    rem-int/lit16 v1, v1, 0x168

    goto :goto_1

    .line 776
    :cond_3
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 777
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 778
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 779
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v14}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v14

    invoke-virtual {v2, v13, v1, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move v1, v13

    .line 782
    :goto_1
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v14, v1, v13}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 783
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    :cond_4
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, -0x2

    if-eqz v1, :cond_9

    .line 787
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 788
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 789
    invoke-virtual {v1, v13, v13, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 790
    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 791
    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 792
    iget v15, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-ne v15, v11, :cond_8

    .line 793
    iget v15, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    if-eq v15, v12, :cond_7

    if-eq v15, v8, :cond_6

    if-eq v15, v7, :cond_5

    .line 818
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_height:I

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 819
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_width:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 820
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 821
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_end_margin:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 822
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_0_top_margin:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 809
    :cond_5
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_height:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 810
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_width:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 811
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 812
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_90_top_margin:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 813
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_end_margin:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 802
    :cond_6
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_height:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 803
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_width:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 804
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 805
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_end_margin:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 806
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_0_top_margin:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 795
    :cond_7
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_height:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 796
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_width:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 797
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 798
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_90_top_margin:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 799
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_end_margin:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 825
    :goto_2
    iget v7, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    add-int/2addr v7, v12

    rem-int/lit16 v7, v7, 0x168

    .line 826
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_graduation_view_height:I

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3

    .line 828
    :cond_8
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_graduation_view_height:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 829
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 830
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 831
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 832
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v5

    iget-object v15, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 833
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v5, v7

    .line 832
    invoke-virtual {v1, v13, v13, v13, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move v7, v13

    .line 836
    :goto_3
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v5, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v7, v13}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 838
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    :cond_9
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz v1, :cond_b

    .line 842
    iget v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-ne v5, v11, :cond_a

    .line 843
    invoke-virtual {v1, v12}, Lcom/transsion/camera/app/ui/widget/GraduationView;->rotateIndicator(I)V

    goto :goto_4

    .line 845
    :cond_a
    invoke-virtual {v1, v13}, Lcom/transsion/camera/app/ui/widget/GraduationView;->rotateIndicator(I)V

    .line 849
    :cond_b
    :goto_4
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v1, :cond_10

    .line 850
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 851
    invoke-virtual {v1, v13, v13, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 852
    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 853
    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 854
    iget v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-ne v5, v11, :cond_f

    .line 855
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    if-eq v2, v12, :cond_e

    if-eq v2, v8, :cond_d

    const/16 v5, 0x10e

    if-eq v2, v5, :cond_c

    .line 880
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 881
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_width:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 882
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 883
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_end_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 884
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_0_top_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_5

    .line 871
    :cond_c
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 872
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_width:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 873
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 874
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_90_top_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 875
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_end_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 864
    :cond_d
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 865
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_width:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 866
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 867
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_end_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 868
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_0_top_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 857
    :cond_e
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 858
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_width:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v2, 0x800033

    .line 859
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 860
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_90_top_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 861
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_pop_end_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 887
    :goto_5
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    add-int/2addr v2, v12

    rem-int/lit16 v2, v2, 0x168

    goto :goto_6

    .line 889
    :cond_f
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 890
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 891
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 892
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 893
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_pop_view_bottom:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v2, v5

    .line 892
    invoke-virtual {v1, v13, v13, v13, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move v2, v13

    .line 896
    :goto_6
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v2, v13}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 897
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 900
    :cond_10
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    if-eqz v1, :cond_1b

    .line 903
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 904
    invoke-virtual {v1, v13, v13, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 905
    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 906
    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 907
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    const/4 v5, 0x3

    if-ne v2, v11, :cond_14

    .line 908
    iget v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    if-eq v2, v12, :cond_13

    if-eq v2, v8, :cond_12

    const/16 v7, 0x10e

    if-eq v2, v7, :cond_11

    .line 933
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_0_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 934
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 935
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 936
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 937
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_0_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_7

    .line 924
    :cond_11
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_90_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 925
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 926
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 927
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_90_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 928
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_7

    .line 917
    :cond_12
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_0_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 918
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 919
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 920
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 921
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_0_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_7

    .line 910
    :cond_13
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_90_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 911
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v2, 0x800033

    .line 912
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 913
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_90_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 914
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->expand_pro_bottom_panel_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_7
    move v2, v13

    move v3, v2

    goto :goto_8

    :cond_14
    if-ne v2, v5, :cond_15

    .line 941
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 942
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 943
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 945
    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 946
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v2

    move v3, v2

    move v2, v13

    goto :goto_8

    .line 948
    :cond_15
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 949
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 950
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 952
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_shutter_panel_column_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 953
    iget v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-nez v3, :cond_16

    .line 954
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 955
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move v2, v13

    .line 958
    :cond_16
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v3

    .line 960
    :goto_8
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-interface {v4, v6}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v4

    if-ltz v4, :cond_17

    goto :goto_9

    :cond_17
    move v11, v13

    .line 962
    :goto_9
    iget v6, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-eq v6, v5, :cond_18

    if-nez v6, :cond_1a

    :cond_18
    if-eqz v11, :cond_19

    move v3, v4

    move v2, v13

    goto :goto_a

    .line 968
    :cond_19
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move v3, v13

    .line 972
    :cond_1a
    :goto_a
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 973
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v0, v13, v2, v13, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1b
    return-void
.end method

.method private updateRootRectHover(IZ)V
    .locals 23

    move-object/from16 v7, p0

    .line 616
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 617
    iget-boolean v0, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mIsInflated:Z

    if-nez v0, :cond_0

    .line 618
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateRootRectHover has not inflated."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 621
    :cond_0
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    .line 622
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 623
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x51

    .line 624
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 625
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 626
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 627
    iget-object v5, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v5

    .line 629
    iget v6, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_1

    .line 630
    iget-object v6, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/mode/professional/R$dimen;->hover_pro_root_bottom_spacing:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_0

    .line 632
    :cond_1
    iget-object v6, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/mode/professional/R$dimen;->normal_pro_root_bottom_spacing:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 634
    :goto_0
    iget-object v9, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v9}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v9

    add-int/2addr v9, v6

    .line 636
    iget-object v6, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 637
    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v10, -0x2

    .line 638
    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 639
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 640
    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 642
    iget v12, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-ne v12, v8, :cond_2

    .line 643
    iget-object v12, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->hover_pro_graduation_bottom_spacing:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto :goto_1

    .line 645
    :cond_2
    iget-object v12, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/mode/professional/R$dimen;->normal_pro_graduation_bottom_spacing:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 647
    :goto_1
    iget-object v13, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v13}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v13

    iget-object v14, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_graduation_view_height:I

    .line 648
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    sub-int/2addr v13, v14

    add-int/2addr v13, v12

    .line 650
    iget-object v12, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 651
    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 652
    iput v10, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 653
    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 654
    iget v14, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 656
    iget v15, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-ne v15, v8, :cond_3

    .line 657
    iget-object v15, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/mode/professional/R$dimen;->hover_pro_pop_bottom_spacing:I

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_2

    .line 659
    :cond_3
    iget-object v8, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/professional/R$dimen;->normal_pro_pop_bottom_spacing:I

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 661
    :goto_2
    iget-object v15, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v15}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v15

    iget-object v10, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$dimen;->pro_pop_view_bottom:I

    .line 662
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v15, v1

    add-int/2addr v15, v8

    .line 664
    iget-object v1, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 665
    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x51

    .line 666
    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 667
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 668
    iget v1, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v10, -0x2

    if-ne v0, v10, :cond_4

    .line 670
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    .line 674
    :cond_4
    iget v10, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    move-object/from16 v16, v8

    const/4 v8, 0x3

    if-ne v10, v8, :cond_5

    .line 675
    iget-object v8, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v8

    move-object/from16 v18, v12

    const/4 v10, 0x0

    goto :goto_3

    .line 677
    :cond_5
    iget-object v8, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v8

    iget-object v10, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v10

    sub-int/2addr v8, v10

    .line 678
    iget-object v10, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v10

    move-object/from16 v18, v12

    .line 680
    :goto_3
    iget-object v12, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v12, v8}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v12

    const/16 v19, 0x1

    if-ltz v12, :cond_6

    move/from16 v20, v19

    goto :goto_4

    :cond_6
    const/16 v20, 0x0

    :goto_4
    if-eqz p2, :cond_8

    move-object/from16 v21, v6

    const/4 v6, 0x2

    move-object/from16 v22, v2

    new-array v2, v6, [I

    const/16 v17, 0x0

    aput v3, v2, v17

    aput v5, v2, v19

    const-string v3, "barTopMargin"

    .line 684
    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v6, [I

    aput v4, v3, v17

    aput v9, v3, v19

    const-string v4, "barBottomMargin"

    .line 685
    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v6, [I

    aput v11, v4, v17

    aput v13, v4, v19

    const-string v5, "graduBottomMargin"

    .line 686
    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v6, [I

    aput v14, v5, v17

    aput v15, v5, v19

    const-string v9, "popBottomMargin"

    .line 687
    invoke-static {v9, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v9, v6, [I

    aput v0, v9, v17

    aput v8, v9, v19

    const-string v0, "processHeight"

    .line 688
    invoke-static {v0, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v8, v6, [I

    if-eqz v20, :cond_7

    .line 689
    iget-object v9, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    goto :goto_5

    .line 690
    :cond_7
    iget-object v9, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    :goto_5
    const/4 v11, 0x0

    aput v9, v8, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aput v9, v8, v19

    const-string v9, "processPadding"

    .line 689
    invoke-static {v9, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    new-array v9, v6, [I

    aput v1, v9, v11

    aput v10, v9, v19

    const-string v1, "processBottomMargin"

    .line 691
    invoke-static {v1, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v9, 0x7

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v9, v11

    aput-object v3, v9, v19

    aput-object v4, v9, v6

    const/4 v2, 0x3

    aput-object v5, v9, v2

    const/4 v2, 0x4

    aput-object v0, v9, v2

    const/4 v0, 0x5

    aput-object v8, v9, v0

    const/4 v0, 0x6

    aput-object v1, v9, v0

    .line 692
    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 694
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 695
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 696
    iget-object v8, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    move-object/from16 v4, v18

    move-object/from16 v5, v16

    move/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Z)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 713
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_8
    move-object v0, v2

    move-object/from16 v21, v6

    const/4 v1, 0x0

    .line 715
    invoke-virtual {v0, v1, v5, v1, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 716
    iget-object v2, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingBarRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    invoke-virtual {v6, v1, v1, v1, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 719
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v18

    .line 721
    invoke-virtual {v0, v1, v1, v1, v15}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 722
    iget-object v2, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBarRotateRootUI:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v16

    .line 724
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 725
    invoke-virtual {v0, v1, v1, v1, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 726
    iget-object v2, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v20, :cond_9

    .line 728
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_6

    .line 730
    :cond_9
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_6
    return-void
.end method

.method private updateSettingItemsLayout(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;",
            ">;)V"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 475
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    .line 476
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemLayoutId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 477
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setupEntryView()V

    .line 478
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setPopupOptionsControl(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)V

    .line 479
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_metering_mode"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 480
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setGraduationView(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;)V

    .line 483
    :cond_1
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setItemClickCallBack(Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;)V

    .line 484
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 485
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 487
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    :cond_3
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateProfessionalLayoutParams(IZ)V

    .line 490
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateEntryViewData()V

    .line 491
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->restoreAllItemsColor()V

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupBar:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->dismissPopup()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideSeekBarIfNeed(Z)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public inflateViewIfNeed(I)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isCaptureButtonEnable()Z
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_0

    .line 399
    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSeekBarShowing()Z
    .locals 0

    .line 414
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->isGraduationShowing()Z

    move-result p0

    return p0
.end method

.method public onItemClick(Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;ZZ)V
    .locals 3

    const/4 v0, 0x0

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemUIList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mSettingItemsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0xbb8

    const/4 p1, 0x1

    if-eqz p2, :cond_3

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->isGraduationShowing()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 137
    invoke-direct {p0, p1, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->hideSeekBar(ZZ)V

    goto :goto_1

    .line 139
    :cond_2
    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->showSeekBar(I)V

    .line 140
    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->highLightSelectItem(IZ)V

    .line 141
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 p3, 0x66

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 146
    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->highLightSelectItem(IZ)V

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public onItemClickBefore(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 0

    return-void
.end method

.method public onItemValueChange(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateMFTitle(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 323
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    const/4 v0, 0x0

    .line 324
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateProfessionalLayoutParams(IZ)V

    return-void
.end method

.method public onPopupBarActionDown()V
    .locals 1

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onPopupBarActionUp()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPopupBarDissmiss(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x59

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 190
    :cond_0
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->highLightSelectItem(IZ)V

    return-void
.end method

.method public onPopupBarShow()V
    .locals 1

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x58

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 329
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    .line 330
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mOrientation:I

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateProfessionalLayoutParams(IZ)V

    return-void
.end method

.method public onSeekBarActionDown()V
    .locals 1

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onSeekBarActionUp(ZZZ)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0xbb8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public resetCapturingUI()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public seCaptureStopListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setCaptureButtonEnable(Z)V
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_0

    .line 392
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCapturingProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressCallBack:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;",
            ">;)V"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startCapturingBeginAnim(J)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressView:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressView:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressView:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->startDrawProgress(J)V

    :cond_0
    return-void
.end method

.method public startCapturingEndAnim()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCapturingEndAnim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCapturingEndAnim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCapturingEndAnim:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void

    .line 368
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mCapturingEndAnim or mCaptureStopButton is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stopCapturingBeginAnim()V
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressView:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    if-eqz p0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->stopDrawProgress()V

    :cond_0
    return-void
.end method

.method public stopCapturingEndAnim()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCapturingEndAnim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 379
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mCapturingEndAnim drawable is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 382
    :cond_0
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_pro_exposure_bg_capturing:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    .line 385
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 224
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->doResetCapturingUI()V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mRootUI:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mPopupRootUI:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 230
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAboveMainCtrlParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mGraduationRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_2

    .line 233
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mAboveMainCtrlParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRoot:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 236
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 239
    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCurrentItemIndex:I

    return-void
.end method

.method public updateUIState(IZ)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->disable()V

    goto :goto_0

    .line 311
    :cond_1
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->hide(Z)V

    goto :goto_0

    .line 307
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->show()V

    :goto_0
    return-void
.end method
