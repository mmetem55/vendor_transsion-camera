.class public Lcom/transsion/camera/ui/setting/focus/FocusUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "FocusUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;,
        Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;
    }
.end annotation


# static fields
.field private static final AF_REGION_BOX:F = 0.2f

.field private static final MSG_UPDATE_FOCUS_VIEW:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAFRestrictRect:Landroid/graphics/Rect;

.field private mActiveFocusEnable:Z

.field private mActiveResulted:Z

.field private mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

.field private mAutoFocused:Z

.field private mCancelLock:Z

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDisableUI:Z

.field private mDownCropOffset:I

.field private mEnable:Z

.field private mFocusAnimateEnd:Z

.field private final mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

.field private mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

.field private final mHalfFocusSize:F

.field mHideView:Z

.field private mIsAutoFocusSupported:Z

.field private mIsFaceViewShowing:Z

.field private mIsLaserFocusViewNeedShow:Z

.field private final mIsLaserFocusViewSupport:Z

.field private mIsPassiveFocusViewNeedShow:Z

.field private mIsSmartFocusShowing:Z

.field private mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

.field private mLockAnimateEnd:Z

.field private mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field private mLongPressing:Z

.field private mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mOriginPreviewRect:Landroid/graphics/Rect;

.field private mPreviewRoot:Landroid/view/View;

.field private final mPreviewViewRect:Landroid/graphics/Rect;

.field private final mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mSplitScreen:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStoreAFRestrictRect:Landroid/graphics/Rect;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

.field private mUpCropOffset:I

.field private mUpScreenHeight:I


# direct methods
.method public static synthetic $r8$lambda$BYLfPbjHEroXkk-DIY9I604POTE(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->updatePreviewRootRect()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 91
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FocusUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 146
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    .line 113
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewNeedShow:Z

    .line 118
    new-instance v1, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI$1;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsFaceViewShowing:Z

    .line 121
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    .line 123
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDisableUI:Z

    .line 124
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSplitScreen:Z

    const/4 v1, -0x1

    .line 125
    iput v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpScreenHeight:I

    .line 126
    iput v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpCropOffset:I

    .line 127
    iput v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDownCropOffset:I

    .line 136
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    const v0, 0x7f050094

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewSupport:Z

    .line 148
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/FocusSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 149
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    const v0, 0x7f070215

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHalfFocusSize:F

    .line 151
    new-instance p1, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;

    invoke-direct {p1}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->notifyFocused()V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    return-void
.end method

.method static synthetic access$1302(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsFaceViewShowing:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsSmartFocusShowing:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSplitScreen:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mCancelLock:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unLockAeAf()V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAFRestrictRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/transsion/camera/ui/setting/focus/FocusUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAFRestrictRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 89
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOriginPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStoreAFRestrictRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/transsion/camera/ui/setting/focus/FocusUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStoreAFRestrictRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/transsion/camera/ui/setting/focus/FocusUI;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->convertStringToRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/focus/FocusUI;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->doUpdateFocusView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockAnimateEnd:Z

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->notifyLocked()V

    return-void
.end method

.method static synthetic access$902(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimateEnd:Z

    return p1
.end method

.method private aeAfLocked()Z
    .locals 1

    .line 641
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private autoFocusSupport()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsAutoFocusSupported:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_focus"

    .line 418
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "fixed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private calculateFocusCoordinate(FF)Landroid/graphics/Point;
    .locals 7

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 423
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp return, mAppUIRect is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_9

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_9

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_9

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    goto/16 :goto_2

    .line 433
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDisableUI:Z

    if-eqz v0, :cond_2

    .line 434
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp return, disableUI"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 441
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v0, v0

    div-float v2, v3, v0

    .line 445
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 447
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v3

    .line 448
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v4

    int-to-float v5, v3

    cmpg-float v5, p2, v5

    if-lez v5, :cond_9

    sub-int/2addr v0, v4

    int-to-float v4, v0

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_4

    goto :goto_2

    .line 453
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHalfFocusSize:F

    mul-float v6, v5, v2

    add-float/2addr v4, v6

    .line 454
    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v5, v2

    sub-float/2addr v6, v5

    .line 455
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHalfFocusSize:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 456
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHalfFocusSize:F

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    cmpg-float v2, p1, v4

    if-gez v2, :cond_5

    move p1, v4

    :cond_5
    cmpl-float v2, p1, v6

    if-lez v2, :cond_6

    goto :goto_0

    :cond_6
    move v6, p1

    :goto_0
    cmpl-float p1, p2, v0

    if-lez p1, :cond_7

    move p2, v0

    :cond_7
    cmpg-float p1, p2, v1

    if-gez p1, :cond_8

    goto :goto_1

    :cond_8
    move v1, p2

    :goto_1
    float-to-int p1, v6

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    float-to-int p2, v1

    .line 475
    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p0

    .line 476
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_9
    :goto_2
    return-object v1
.end method

.method private convertStringToRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 6

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "-"

    .line 996
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_0

    aget-object v5, p1, v2

    .line 997
    aput-object v5, p0, v3

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1000
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v1, p0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    .line 1001
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private doUpdateFocusView(Ljava/lang/String;)V
    .locals 6

    const-string v0, "ACTIVE_FOCUSED"

    .line 646
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ACTIVE_UNFOCUSED"

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 647
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveResulted:Z

    if-nez v1, :cond_1

    .line 649
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAutoFocused:Z

    .line 650
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveResulted:Z

    .line 651
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->notifyFocused()V

    .line 652
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v4, "key_reset_exposure"

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    const/4 v5, 0x0

    .line 653
    invoke-virtual {v1, v4, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 656
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->aeAfLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 659
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "ACTIVE_HIDE_FOCUSE_VIEW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "PASSIVE_SCAN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "PASSIVE_FOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "PASSIVE_UNFOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "LASER_FOCUSEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    move v1, v3

    goto :goto_0

    :sswitch_7
    const-string v0, "LASER_SCAN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    move v1, v5

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 703
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    goto/16 :goto_2

    .line 667
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsFaceViewShowing:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsSmartFocusShowing:Z

    if-nez p1, :cond_d

    .line 672
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewSupport:Z

    if-eqz p1, :cond_b

    .line 673
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz p1, :cond_c

    .line 674
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->needShowFocusView()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 675
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showLaserFocusViewAtCenter()V

    goto :goto_1

    .line 678
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAtCenter()V

    .line 680
    :cond_c
    :goto_1
    iput-boolean v5, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    goto :goto_2

    .line 662
    :pswitch_2
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 663
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    .line 664
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    goto :goto_2

    .line 697
    :pswitch_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    goto :goto_2

    .line 700
    :pswitch_4
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewNeedShow:Z

    goto :goto_2

    .line 684
    :pswitch_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewNeedShow:Z

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsFaceViewShowing:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsSmartFocusShowing:Z

    if-nez p1, :cond_d

    .line 688
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewSupport:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz p1, :cond_d

    .line 689
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->needShowFocusView()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 690
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showLaserFocusViewAtCenter()V

    .line 691
    iput-boolean v5, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewNeedShow:Z

    :cond_d
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5373dc6f -> :sswitch_7
        -0x4bf36fe9 -> :sswitch_6
        0x1d09b766 -> :sswitch_5
        0x2c1b7ca5 -> :sswitch_4
        0x4b74c21f -> :sswitch_3
        0x5664cb1e -> :sswitch_2
        0x5b4248b5 -> :sswitch_1
        0x76eb3db3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleAeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)V
    .locals 2

    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    .line 393
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_ae_af_lock_state"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "off"

    .line 394
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_reset_exposure"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private hasBeenFocused()Z
    .locals 1

    .line 793
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimateEnd:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAutoFocused:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasBeenLocked()Z
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 585
    :cond_0
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 586
    sget-object v2, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 589
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockAnimateEnd:Z

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private hideFocusView()V
    .locals 2

    .line 888
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideFocusView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 889
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAutoFocused:Z

    .line 890
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveResulted:Z

    .line 891
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockAnimateEnd:Z

    .line 892
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimateEnd:Z

    .line 893
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-interface {v0, p0}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->stopAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    return-void
.end method

.method private hideLaserFocusView()V
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz v0, :cond_0

    .line 905
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideLaserFocusView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 906
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->hide()V

    :cond_0
    return-void
.end method

.method private loadDividerScreenInfo()V
    .locals 4

    .line 1005
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 1006
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "divider_up_screen_height"

    const-string v3, "-1"

    .line 1005
    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpScreenHeight:I

    .line 1009
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 1010
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "divider_up_crop_offset"

    .line 1009
    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpCropOffset:I

    .line 1013
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 1014
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "divider_down_crop_offset"

    .line 1013
    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDownCropOffset:I

    .line 1017
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDividerScreenInfo, upScreenHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", upScreenCropOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpCropOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", downScreenCropOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDownCropOffset:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private notifyFocused()V
    .locals 3

    .line 797
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFocused mFocusAnimateEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimateEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mActiveFocused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveResulted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHideView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCancelLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mCancelLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 801
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    if-eqz v0, :cond_0

    .line 802
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 803
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    return-void

    .line 806
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hasBeenFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mCancelLock:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 807
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAutoFocused:Z

    .line 808
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimateEnd:Z

    .line 810
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    .line 812
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerLockFlow(Z)V

    :cond_1
    return-void
.end method

.method private notifyLocked()V
    .locals 3

    .line 593
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLocked mLongPressing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mLockAnimateEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockAnimateEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHideView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 596
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    if-eqz v0, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 598
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    return-void

    .line 601
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hasBeenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 602
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockAnimateEnd:Z

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_ae_af_lock_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "on"

    .line 604
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 605
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 606
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    :cond_1
    return-void
.end method

.method private performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-nez v1, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p2, :cond_1

    const/16 p1, 0x6e

    goto :goto_0

    :cond_1
    const/16 p1, 0x6f

    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private performAutoFocus(Landroid/graphics/Point;Z)V
    .locals 2

    .line 480
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSplitScreen:Z

    if-eqz v0, :cond_1

    .line 481
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->loadDividerScreenInfo()V

    .line 482
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpScreenHeight:I

    if-ge v0, v1, :cond_0

    .line 483
    iget v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpCropOffset:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    .line 485
    iget v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDownCropOffset:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 489
    :cond_1
    :goto_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->pointToRect(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 491
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->rectToString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->focus()V

    return-void
.end method

.method private pointToRect(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 618
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 619
    div-int/lit8 v0, p0, 0x2

    sub-int/2addr p1, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result p1

    sub-int/2addr p2, v0

    .line 620
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, p0

    invoke-static {p2, v2, v0}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result p2

    add-int v0, p1, p0

    add-int/2addr p0, p2

    .line 624
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 625
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, p0, p1}, Lcom/transsion/camera/utils/CoordinatesUtil;->viewToReferenceSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 912
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method private showFocusViewAt(II)V
    .locals 1

    .line 785
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(IILcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    return-void
.end method

.method private showFocusViewAt(IILcom/transsion/camera/app/common/mode/IAeAfLock$State;)V
    .locals 4

    .line 818
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFocusViewAt mHideView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 820
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    if-eqz v0, :cond_0

    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 825
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 826
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x2

    .line 827
    div-int/2addr v0, v3

    sub-int/2addr p1, v0

    div-int/2addr v1, v3

    sub-int/2addr p2, v1

    const/4 v0, 0x0

    invoke-virtual {v2, p1, p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 828
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 831
    sget-object p1, Lcom/transsion/camera/ui/setting/focus/FocusUI$3;->$SwitchMap$com$transsion$camera$app$common$mode$IAeAfLock$State:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    if-eq p1, v3, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    .line 847
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const p2, 0x7f080664

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 848
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-interface {p1, p0}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->startAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    goto :goto_0

    .line 843
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerFocusLockFlow()V

    goto :goto_0

    .line 833
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->autoFocusSupport()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 834
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerFocusLockFlow()V

    goto :goto_0

    .line 836
    :cond_3
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerLockFlow(Z)V

    :goto_0
    return-void
.end method

.method private showFocusViewAt(Landroid/graphics/Point;)V
    .locals 1

    .line 789
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(II)V

    return-void
.end method

.method private showFocusViewAtCenter()V
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 882
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 883
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(II)V

    return-void
.end method

.method private showLaserFocusViewAtCenter()V
    .locals 0

    .line 898
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz p0, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->show()V

    :cond_0
    return-void
.end method

.method private triggerAutoFocus(FF)V
    .locals 1

    .line 400
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->autoFocusSupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->calculateFocusCoordinate(FF)Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 409
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(Landroid/graphics/Point;)V

    .line 410
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p2, :cond_2

    const/16 v0, 0x99

    .line 411
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_2
    const/4 p2, 0x0

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->performAutoFocus(Landroid/graphics/Point;Z)V

    return-void
.end method

.method private triggerFocusLock(FFLcom/transsion/camera/app/common/mode/IAeAfLock$State;)V
    .locals 2

    .line 533
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "triggerFocusLock"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 537
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    .line 539
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->autoFocusSupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 544
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->calculateFocusCoordinate(FF)Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 550
    :cond_1
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p2, v0, p3}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(IILcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    const/4 p2, 0x0

    .line 552
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAutoFocused:Z

    .line 553
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveResulted:Z

    const/4 p2, 0x1

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->performAutoFocus(Landroid/graphics/Point;Z)V

    return-void
.end method

.method private triggerFocusLockFlow()V
    .locals 3

    const/4 v0, 0x0

    .line 867
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimateEnd:Z

    .line 868
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const v1, 0x7f08065f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 869
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    new-instance v2, Lcom/transsion/camera/ui/setting/focus/FocusUI$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI$2;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->triggerFocusAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private triggerLockDirectly(FFLcom/transsion/camera/app/common/mode/IAeAfLock$State;)V
    .locals 2

    .line 566
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "triggerLockDirectly"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 568
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 569
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    .line 571
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->calculateFocusCoordinate(FF)Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 576
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    .line 578
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p2, p1, p3}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(IILcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    return-void
.end method

.method private triggerLockFlow(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 854
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockAnimateEnd:Z

    .line 855
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const v1, 0x7f08065f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 856
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    new-instance v2, Lcom/transsion/camera/ui/setting/focus/FocusUI$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI$1;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    invoke-interface {v0, v1, v2, p1}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->triggerLockAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;Z)V

    return-void
.end method

.method private unLockAeAf()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne v1, v0, :cond_1

    goto :goto_0

    .line 387
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->handleAeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    .line 388
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    :cond_2
    :goto_0
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 918
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method private updateEnableState(I)V
    .locals 2

    .line 718
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result v0

    .line 719
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_0

    .line 721
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v1

    .line 720
    invoke-static {v1, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v0

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 724
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->setEnable(Z)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 726
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->setEnable(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updatePreviewRootRect()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 216
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 217
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 218
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewSupport:Z

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->hide()V

    .line 223
    :cond_1
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-interface {p0, v1}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->updateScale(F)V

    :cond_3
    return-void
.end method


# virtual methods
.method public doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0092

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901bd

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const p2, 0x7f0901bc

    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 269
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    .line 732
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->updateEnableState(I)V

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_5

    const/16 v0, 0x27

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x28

    if-eq p1, v0, :cond_6

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_3

    const/16 v0, 0x60

    if-eq p1, v0, :cond_2

    const/16 v0, 0x74

    if-eq p1, v0, :cond_1

    const/16 v0, 0x75

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 767
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    goto :goto_0

    .line 764
    :pswitch_1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDisableUI:Z

    goto :goto_0

    .line 761
    :pswitch_2
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDisableUI:Z

    goto :goto_0

    .line 773
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSplitScreen:Z

    goto :goto_0

    .line 770
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSplitScreen:Z

    goto :goto_0

    .line 779
    :cond_2
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    goto :goto_0

    .line 776
    :cond_3
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    goto :goto_0

    .line 742
    :cond_4
    :pswitch_3
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    .line 743
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 744
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    goto :goto_0

    .line 757
    :cond_5
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    .line 758
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    goto :goto_0

    .line 754
    :cond_6
    :pswitch_4
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x70
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPress(FF)Z
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mEnable:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 501
    :cond_0
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->supportedLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 502
    sget-object v2, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne v2, v0, :cond_1

    goto :goto_1

    .line 506
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mCancelLock:Z

    .line 509
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->handleAeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    .line 511
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 513
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->autoFocusSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerFocusLock(FFLcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    goto :goto_0

    .line 516
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerLockDirectly(FFLcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    :goto_0
    const/4 p1, 0x1

    .line 519
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    :cond_3
    :goto_1
    return v1
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 337
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 341
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    const/4 p1, 0x1

    .line 342
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    .line 343
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unLockAeAf()V

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onSingleTapUp(FF)Z
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    goto :goto_1

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mEnable:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mCancelLock:Z

    .line 368
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    .line 370
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 371
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    .line 373
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unLockAeAf()V

    .line 375
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerAutoFocus(FF)V

    return v2

    .line 364
    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp point is disable!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 360
    :cond_3
    :goto_1
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp point is out of preview rect!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 612
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    .line 613
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->notifyLocked()V

    .line 614
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 8

    .line 299
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 301
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 305
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v1, "auto"

    .line 306
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsAutoFocusSupported:Z

    const-string v1, "key_restrict_area"

    const-string v2, "key_video_frame"

    const-string v3, "key_dual_cam_split_style"

    const-string v4, "key_animal_eye_view_state"

    const-string v5, "key_human_view_state"

    const-string v6, "key_eye_view_state"

    const-string v7, "key_face_view_state"

    if-eqz p1, :cond_2

    .line 308
    invoke-direct {p0, v7}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0, v6}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, v5}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, v4}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_2
    invoke-direct {p0, v7}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0, v6}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 318
    invoke-direct {p0, v5}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, v4}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :goto_1
    const-string p1, "key_adjust_ui_show_and_hide_ae_lock"

    .line 325
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v1, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI$1;)V

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 327
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 251
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mEnable:Z

    .line 253
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 254
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    .line 255
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->notifyLocked()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .locals 2

    .line 205
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDisableUI:Z

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 275
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsAutoFocusSupported:Z

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v0, "key_face_view_state"

    .line 277
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_eye_view_state"

    .line 278
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_human_view_state"

    .line 279
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_animal_eye_view_state"

    .line 280
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_dual_cam_split_style"

    .line 281
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_frame"

    .line 282
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_restrict_area"

    .line 283
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_0
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "key_adjust_ui_show_and_hide_ae_lock"

    .line 288
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 290
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    .line 292
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 294
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 236
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOriginPreviewRect:Landroid/graphics/Rect;

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStoreAFRestrictRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAFRestrictRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStoreAFRestrictRect:Landroid/graphics/Rect;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 241
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->updatePreviewRootRect()V

    return-void
.end method

.method public updateRestrictRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    new-instance v0, Lcom/transsion/camera/ui/setting/focus/FocusUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
