.class public Lcom/transsion/camera/ui/setting/exposure/ExposureUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "ExposureUI.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;
    }
.end annotation


# static fields
.field private static final DARKEN_EXPOSURE_DELAY:J = 0x7d0L

.field private static final LOCK_DARKEN_EXPOSURE_DELAY:J = 0xbb8L

.field private static final MSG_HIDE_EXPOSURE_UI:I = 0x64

.field private static final MSG_HIDE_EXPOSURE_UI_IMMEDIATE:I = 0x66

.field private static final MSG_SHOW_EXPOSURE_UI:I = 0x65

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;


# instance fields
.field private mAERestrictRect:Landroid/graphics/Rect;

.field private mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

.field private final mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDisableUI:Z

.field private final mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

.field private mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

.field private final mHalfSize:F

.field private mHasDarken:Z

.field private mHideExposureDelayTime:J

.field mHideView:Z

.field private mIndicatorView:Landroid/view/View;

.field private mIsEvChanging:Z

.field private mIsSupported:Z

.field private mLockIndicatorView:Landroid/view/View;

.field private mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field private mNotShowUI:Z

.field private mOrientation:I

.field private mOriginPreviewRect:Landroid/graphics/Rect;

.field private mPreviewRoot:Landroid/view/View;

.field private final mPreviewViewRect:Landroid/graphics/Rect;

.field private final mRationalSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private mScrollTriggered:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStoreAERestrictRect:Landroid/graphics/Rect;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$3EHCBCNWnxURTU48KlRdJHURslc(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updatePreviewRootRect()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ExposureUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    .line 89
    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    .line 94
    new-instance v1, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/ui/setting/exposure/ExposureUI$1;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mScrollTriggered:Z

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mNotShowUI:Z

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDisableUI:Z

    .line 107
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mResources:Landroid/content/res/Resources;

    .line 118
    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/ui/setting/exposure/ExposureUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const v0, 0x7f070211

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    .line 120
    new-instance p1, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;

    invoke-direct {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mNotShowUI:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideExposureDelayTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;J)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->startDarkenAnimate(J)V

    return-void
.end method

.method static synthetic access$1402(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHasDarken:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockExposureView(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAERestrictRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAERestrictRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOriginPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStoreAERestrictRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStoreAERestrictRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->convertStringToRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 72
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mScrollTriggered:Z

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mScrollTriggered:Z

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$700()Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 1

    .line 72
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->sOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showExposureView()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->aeAfLocked()Z

    move-result p0

    return p0
.end method

.method private aeAfLocked()Z
    .locals 1

    .line 959
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

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

.method private convertStringToRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 6

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "-"

    .line 847
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

    .line 848
    aput-object v5, p0, v3

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 851
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

    .line 852
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private static findNearestRational(Ljava/util/List;F)Landroid/util/Rational;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Rational;",
            ">;F)",
            "Landroid/util/Rational;"
        }
    .end annotation

    .line 993
    sget-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    .line 994
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    .line 995
    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_0

    .line 997
    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getLockHintMsg(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Ljava/lang/String;
    .locals 1

    .line 511
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$1;->$SwitchMap$com$transsion$camera$app$common$mode$IAeAfLock$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f100025

    goto :goto_0

    :cond_1
    const p1, 0x7f100027

    goto :goto_0

    :cond_2
    const p1, 0x7f100026

    :goto_0
    if-gtz p1, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 526
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasBeenLocked()Z
    .locals 2

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 386
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 387
    sget-object v1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eq v1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private hideExposureView()V
    .locals 3

    .line 964
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideExposureView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 965
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    .line 966
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 969
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_1

    const-string v1, "key_exposure_view"

    .line 970
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 971
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private hideExposureView(FF)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    float-to-int p1, p1

    int-to-float p1, p1

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setFocusLocation(FF)V

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->resetExposureView()V

    .line 360
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    return-void
.end method

.method private isReachPreviewBoundary(FF)Z
    .locals 1

    .line 983
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    iget p1, p0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isScreenPortrait()Z
    .locals 1

    .line 691
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private needUpdateExposureView()Z
    .locals 1

    .line 976
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    .line 979
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 758
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method private setShowArea()V
    .locals 6

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-nez v0, :cond_1

    .line 665
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setShowArea return, mAppUIRect is null."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 669
    :cond_1
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    .line 671
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 672
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 673
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 674
    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    .line 675
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setShowArea(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method private shouldShowSeekBar()Z
    .locals 1

    .line 954
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->aeAfLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showExposureView()V
    .locals 9

    .line 563
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showExposureView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 564
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    if-eqz v1, :cond_0

    const-string p0, "showExposureView mHideView is true!"

    .line 565
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "showExposureView mDeviceSetting.getSupport() isEmpty!"

    .line 579
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 583
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    invoke-virtual {v1, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->updateSeekBarVisibility(Z)V

    .line 584
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "key_touch_capture"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "showExposureView KEY_TOUCH_CAPTURE is on!"

    .line 585
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 589
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->getFocusViewX()I

    move-result v1

    int-to-float v1, v1

    .line 590
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->getFocusViewY()I

    move-result v2

    int-to-float v2, v2

    .line 592
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isReachPreviewBoundary(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p0, "showExposureView point is out of preview rect!"

    .line 593
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 597
    :cond_4
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-nez v3, :cond_5

    const-string p0, "onSingleTapUp return, mAppUIRect is null."

    .line 598
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 602
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_6

    const-string p0, "entryView is null,return."

    .line 604
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 609
    :cond_6
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_7

    .line 610
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 611
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    int-to-float v4, v4

    div-float v5, v6, v4

    .line 615
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 616
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v4

    .line 617
    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v6

    int-to-float v7, v4

    cmpg-float v7, v2, v7

    if-lez v7, :cond_d

    sub-int v7, v3, v6

    int-to-float v8, v7

    cmpl-float v8, v2, v8

    if-ltz v8, :cond_8

    goto/16 :goto_2

    .line 623
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v6, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    mul-float v8, v6, v5

    add-float/2addr v3, v8

    .line 624
    iget v8, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v6, v5

    sub-float/2addr v8, v6

    .line 625
    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 626
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    cmpg-float v5, v1, v3

    if-gez v5, :cond_9

    move v1, v3

    :cond_9
    cmpl-float v3, v1, v8

    if-lez v3, :cond_a

    goto :goto_0

    :cond_a
    move v8, v1

    :goto_0
    cmpl-float v1, v2, v4

    if-lez v1, :cond_b

    move v2, v4

    :cond_b
    cmpg-float v1, v2, v0

    if-gez v1, :cond_c

    goto :goto_1

    :cond_c
    move v0, v2

    :goto_1
    float-to-int v1, v8

    .line 643
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    float-to-int v0, v0

    .line 644
    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 645
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setShowArea()V

    .line 646
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showFocusViewAt(II)V

    .line 647
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_exposure_view"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 649
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateIndicatorVisibility(Z)V

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->startShowAnimate(Landroid/view/View;)V

    const-wide/16 v0, 0x7d0

    .line 651
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->startDarkenAnimate(J)V

    return-void

    .line 619
    :cond_d
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showExposureView y = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", edgeTop = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", absoluteH = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", edgeBottom = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 570
    :cond_e
    :goto_3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v1, :cond_f

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showExposureView mExposureView.getVisibility(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    const-string p0, "showExposureView mExposureView == null!"

    .line 573
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private showFocusViewAt(II)V
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 682
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 683
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 684
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    const/4 v0, 0x0

    invoke-virtual {v2, p1, p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 685
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showLockExposureView(Z)V
    .locals 10

    .line 856
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLockExposureView withAnim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHasDarken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHasDarken:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 858
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    if-eqz v1, :cond_0

    const-string p0, "showLockExposureView mHideView is true!"

    .line 859
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 872
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "showLockExposureView mDeviceSetting.getSupport() isEmpty!"

    .line 873
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 877
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->getFocusViewX()I

    move-result v1

    int-to-float v1, v1

    .line 878
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->getFocusViewY()I

    move-result v2

    int-to-float v2, v2

    .line 880
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isReachPreviewBoundary(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "showLockExposureView point is out of preview rect!"

    .line 881
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 885
    :cond_3
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-nez v3, :cond_4

    const-string p0, "onSingleTapUp return, mAppUIRect is null."

    .line 886
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 890
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    const-string p0, "entryView is null,return."

    .line 892
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 897
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    .line 898
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 899
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float v0, v0

    div-float v4, v5, v0

    .line 902
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 903
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v3

    .line 904
    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v5

    .line 906
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    mul-float v9, v8, v4

    add-float/2addr v7, v9

    .line 907
    iget v9, v6, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    mul-float/2addr v8, v4

    sub-float/2addr v9, v8

    .line 908
    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    iget v6, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    sub-int/2addr v0, v5

    .line 909
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    mul-float/2addr v5, v4

    sub-float/2addr v0, v5

    cmpg-float v4, v1, v7

    if-gez v4, :cond_7

    move v1, v7

    :cond_7
    cmpl-float v4, v1, v9

    if-lez v4, :cond_8

    goto :goto_0

    :cond_8
    move v9, v1

    :goto_0
    cmpl-float v1, v2, v0

    if-lez v1, :cond_9

    move v2, v0

    :cond_9
    cmpg-float v0, v2, v3

    if-gez v0, :cond_a

    goto :goto_1

    :cond_a
    move v3, v2

    :goto_1
    float-to-int v0, v9

    .line 927
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    float-to-int v2, v3

    .line 928
    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    .line 929
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setShowArea()V

    .line 930
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showFocusViewAt(II)V

    .line 931
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_exposure_view"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 933
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateIndicatorVisibility(Z)V

    const-wide/16 v0, 0xbb8

    if-eqz p1, :cond_b

    .line 935
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->updateSeekBarVisibility(Z)V

    .line 936
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->shouldShowSeekBar()Z

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->startShowLockAnimate(Landroid/view/View;Z)V

    .line 937
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->startDarkenAnimate(J)V

    .line 938
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHasDarken:Z

    goto :goto_2

    .line 940
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->shouldShowSeekBar()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->updateSeekBarVisibility(Z)V

    .line 941
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHasDarken:Z

    if-nez p1, :cond_c

    .line 942
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHasDarken:Z

    .line 943
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->startDarkenAnimate(J)V

    :cond_c
    :goto_2
    return-void

    .line 864
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz p1, :cond_e

    .line 865
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showLockExposureView mExposureView.getVisibility(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    const-string p0, "showLockExposureView mExposureView == null!"

    .line 867
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private showLockedHint(Ljava/lang/String;)V
    .locals 3

    .line 499
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLockedHint msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 500
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->aeAfLock(Z)V

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 505
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 506
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private startDarkenAnimate(J)V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->cancelDarkenAnimate(Landroid/view/View;)V

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->startDarkenAnimate(Landroid/view/View;J)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 764
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method private updateIndicatorVisibility(Z)V
    .locals 4

    .line 949
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIndicatorView:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 950
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockIndicatorView:Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updatePreviewRootRect()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 212
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 213
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 214
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 219
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 220
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0076

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0a0038

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideExposureDelayTime:J

    const p2, 0x7f090183

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const p2, 0x7f090182

    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    const p2, 0x7f090179

    .line 182
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIndicatorView:Landroid/view/View;

    const p2, 0x7f09017a

    .line 183
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockIndicatorView:Landroid/view/View;

    .line 184
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p2, p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setListener(Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;)V

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

    const-string p0, "key_exposure"

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    .line 988
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 258
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected hideLockedHint()V
    .locals 2

    .line 530
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideLockedHint"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->aeAfLock(Z)V

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    .line 393
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 395
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->aeAfLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    :cond_1
    const/16 v0, 0x9

    if-eq p1, v0, :cond_a

    const/16 v0, 0x13

    if-eq p1, v0, :cond_9

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_7

    const/16 v0, 0xd

    if-eq p1, v0, :cond_6

    const/16 v0, 0xe

    if-eq p1, v0, :cond_7

    const/16 v0, 0x27

    if-eq p1, v0, :cond_5

    const/16 v0, 0x28

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x85

    if-eq p1, v0, :cond_4

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_1

    .line 479
    :pswitch_0
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mNotShowUI:Z

    .line 480
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    goto/16 :goto_1

    .line 486
    :pswitch_1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDisableUI:Z

    goto/16 :goto_1

    .line 483
    :pswitch_2
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDisableUI:Z

    goto/16 :goto_1

    .line 470
    :pswitch_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 471
    sget-object p1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 472
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    goto/16 :goto_1

    .line 464
    :pswitch_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-eqz p1, :cond_b

    .line 465
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 466
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->getLockHintMsg(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockedHint(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 414
    :pswitch_5
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    goto :goto_1

    .line 404
    :pswitch_6
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 405
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 406
    sget-object p1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 407
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    goto :goto_1

    .line 460
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 461
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    goto :goto_1

    .line 455
    :cond_3
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 456
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    goto :goto_1

    .line 437
    :cond_4
    :pswitch_7
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 438
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hasBeenLocked()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 439
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockExposureView(Z)V

    .line 440
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-eqz p1, :cond_b

    .line 441
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 442
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->getLockHintMsg(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockedHint(Ljava/lang/String;)V

    goto :goto_1

    .line 427
    :cond_5
    :pswitch_8
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 428
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 429
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    goto :goto_1

    .line 489
    :cond_6
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    goto :goto_1

    .line 493
    :cond_7
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    goto :goto_1

    .line 448
    :cond_8
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 449
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    .line 450
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 451
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    goto :goto_1

    .line 475
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 476
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    goto :goto_1

    .line 418
    :cond_a
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 419
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-eqz p1, :cond_b

    .line 420
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    :cond_b
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onExposureViewChanged(F)V
    .locals 4

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->findNearestRational(Ljava/util/List;F)Landroid/util/Rational;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 724
    sget-object v1, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExposureViewChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 725
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v0}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_0
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExposureViewChanged ignore : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLongPress(FF)Z
    .locals 2

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isReachPreviewBoundary(FF)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 366
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onLongPress point is out of preview rect!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-nez v0, :cond_1

    return v1

    .line 373
    :cond_1
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->supportedLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 374
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->aeAfLocked()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 377
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHasDarken:Z

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView(FF)V

    return v1
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 699
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 700
    rem-int/lit16 p1, p1, 0x168

    .line 701
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    if-ne v0, p1, :cond_0

    return-void

    .line 704
    :cond_0
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    .line 705
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 706
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setOrientation(IZ)V

    :cond_1
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 712
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 715
    sget-object p1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 716
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 537
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll, dx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , dy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ,e1=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isReachPreviewBoundary(FF)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p0, "onScroll point is out of preview rect!"

    .line 540
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 544
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->needUpdateExposureView()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 547
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isScreenPortrait()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 548
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_3

    .line 549
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, p2, p4}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onVerticalScroll(Landroid/view/MotionEvent;F)V

    return v0

    .line 553
    :cond_2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpg-float p1, p1, p4

    if-gez p1, :cond_3

    .line 554
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onVerticalScroll(Landroid/view/MotionEvent;F)V

    return v0

    :cond_3
    return v1
.end method

.method public onSingleTapUp(FF)Z
    .locals 2

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isReachPreviewBoundary(FF)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 337
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp point is out of preview rect!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 340
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 341
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mNotShowUI:Z

    .line 343
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDisableUI:Z

    if-eqz v0, :cond_1

    .line 344
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp return, disableUI"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 347
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView(FF)V

    .line 348
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    return v1
.end method

.method public onTrackingTouchStatusChanged(Z)V
    .locals 4

    .line 734
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2

    .line 735
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrackingTouchStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 736
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->cancelDarkenAnimate(Landroid/view/View;)V

    .line 738
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 740
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    if-nez v0, :cond_1

    .line 741
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->aeAfLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xbb8

    .line 742
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->startDarkenAnimate(J)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x7d0

    .line 744
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->startDarkenAnimate(J)V

    .line 745
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideExposureDelayTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 749
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mScrollTriggered:Z

    .line 750
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_exposure_scroll_start_and_hide"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "scroll_start"

    .line 751
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 327
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->needUpdateExposureView()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 330
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onTrackingTouch(Z)V

    return v0
.end method

.method public setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 172
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 173
    sput-object p1, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->sOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 4

    .line 287
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 289
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 293
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 294
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_exposure_private"

    const-string v2, "off"

    .line 293
    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 296
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    if-eqz p1, :cond_1

    .line 297
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 298
    :cond_1
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    .line 299
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    invoke-static {v0}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 307
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    const-string p1, "key_focus_state"

    .line 310
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_ae_af_lock_state"

    .line 311
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_face_view_state"

    .line 312
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_eye_view_state"

    .line 313
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_human_view_state"

    .line 314
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_animal_eye_view_state"

    .line 315
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_video_frame"

    .line 316
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_restrict_area"

    .line 317
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .locals 3

    .line 191
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mNotShowUI:Z

    .line 193
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDisableUI:Z

    .line 194
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    .line 195
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_0

    .line 197
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v1

    .line 198
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Rational;->intValue()I

    move-result v2

    .line 200
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Rational;->intValue()I

    move-result v0

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->initExposureView(II)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 264
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 266
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 267
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v0, "key_focus_state"

    .line 269
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_ae_af_lock_state"

    .line 270
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_face_view_state"

    .line 271
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_eye_view_state"

    .line 272
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_human_view_state"

    .line 273
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_animal_eye_view_state"

    .line 274
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_frame"

    .line 275
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_restrict_area"

    .line 276
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 279
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const v0, 0x7f090179

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 280
    instance-of v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_1

    .line 281
    check-cast p0, Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    :cond_1
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 227
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOriginPreviewRect:Landroid/graphics/Rect;

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStoreAERestrictRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAERestrictRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStoreAERestrictRect:Landroid/graphics/Rect;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 232
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updatePreviewRootRect()V

    return-void
.end method

.method public updateRestrictRect(Landroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 240
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
