.class public Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;
.super Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;
.source "BaseZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$TeleRangeConverterState;,
        Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$NormalRangeConverterState;,
        Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;,
        Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$SatSupportWideConverterState;,
        Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;,
        Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;,
        Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;
    }
.end annotation


# static fields
.field private static final ANIMATE_DURATION:J = 0x12cL

.field private static final HIDE_WHEEL_VIEW_DELAY:J = 0x7d0L

.field private static final MSG_HIDE_CENTER_ZOOM:I = 0x67

.field private static final MSG_HIDE_WHEEL_VIEW:I = 0x65

.field private static final MSG_SHOW_CENTER_ZOOM:I = 0x66

.field private static final MSG_SHOW_WHEEL_VIEW:I = 0x64

.field private static final MSG_SMOOTH_ZOOM:I = 0x1

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final mZoomDuration:J = 0x14L

.field private static final mZoomNums:I = 0x14

.field private static final mZoomSteps:I = 0x1e


# instance fields
.field private mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

.field private mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsModeSwitch:Z

.field private mIsTouchingWheelView:Z

.field private mIsWheelShowByFilter:Z

.field private mIsZoomChanging:Z

.field private mLastZoomValue:I

.field private mNormalRange:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

.field private final mPreviewViewRect:Landroid/graphics/Rect;

.field private final mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;

.field private mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

.field private mSatRange:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

.field private mSimulateDownEvent:Z

.field mSmoothValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mTeleRange:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

.field private final mTouchEventTransmitter:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

.field private final mUIStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWideRange:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

.field private mWideRangeConverterProgressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWideRangeConverterValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomUIViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$4mKJj2xwHBC-dihE6q2lNmoCwsM(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->lambda$new$1(Ljava/lang/String;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4rWuQowEjH4R2KO4JZ_f6I075Mo(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->onInteractive(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7QGjdM9MYoyPanokTrpJ_nZcVjk(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8vcu5ZrcnheuZKaM4zLhfNBCXCU(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->onProgressChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$XWoR3U54Tup86GJI1MZoULmLrdE(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->lambda$new$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m2ytdQy6OwLacRImWGXMPEcl7mA(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->lambda$setLayoutPadding$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 95
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6

    .line 232
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;-><init>(Landroid/content/res/Resources;)V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSimulateDownEvent:Z

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsZoomChanging:Z

    .line 80
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsTouchingWheelView:Z

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsWheelShowByFilter:Z

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsModeSwitch:Z

    .line 93
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mWideRangeConverterValueList:Ljava/util/List;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mWideRangeConverterProgressList:Ljava/util/List;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    const-string v1, "100"

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mLastZoomValue:I

    .line 112
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 163
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 177
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mTouchEventTransmitter:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 214
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const v1, 0x7f030148

    .line 233
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 234
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 235
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x7f030147

    .line 237
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 238
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_1

    aget v2, p1, v0

    .line 239
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mWideRangeConverterProgressList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    :cond_1
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    .line 242
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsZoomChanging:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->updateCenterZoomView(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;I)Z
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mWideRangeConverterProgressList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mWideRangeConverterValueList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->startSmoothZoom(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->updateZoomItemValue()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    return-object p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    return-object p1
.end method

.method private calculateZoomStep(II)V
    .locals 9

    .line 948
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    int-to-double v3, v2

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v3, v5, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 952
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v5, v3

    int-to-double v3, p1

    sub-int p1, p2, p1

    int-to-double v7, p1

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    double-to-int p1, v3

    if-eq v1, p1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v1, p1

    goto :goto_0

    .line 959
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 960
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 963
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private consumeBackPressed()Z
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 579
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomUI(Z)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private hideCenterZoomView()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private inThisRange(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;I)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1123
    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->currentRange(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedShowWheelView()Z
    .locals 1

    .line 686
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNumOfWideCameraItem:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsWheelShowByFilter:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isReachPreviewBoundary(FF)Z
    .locals 3

    .line 367
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    .line 370
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mPreviewViewRect:Landroid/graphics/Rect;

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

    if-lez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isSwitchCamera()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 341
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isZoomChanged()Z
    .locals 4

    .line 346
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 348
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v1

    .line 349
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousValue:I

    .line 350
    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v0

    .line 351
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "60"

    .line 352
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 354
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isZoomChanged currentValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", previousValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eq v1, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    const-string p2, "key_show_center_zoom_ratio"

    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 168
    sget p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    :goto_0
    const/4 p1, 0x1

    .line 172
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomForWideToNormal(Z)V

    const/4 p1, 0x0

    .line 173
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomForWideToNormal(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "key_wide_camera_move_event"

    .line 179
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz p1, :cond_6

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 188
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    goto :goto_0

    .line 190
    :cond_3
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSimulateDownEvent:Z

    if-eqz p1, :cond_4

    .line 191
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSimulateDownEvent:Z

    .line 192
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 193
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 194
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setFakeMotionEvent(Z)V

    .line 195
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setFakeMotionEvent(Z)V

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 199
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 205
    :cond_5
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSimulateDownEvent:Z

    .line 206
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setFakeMotionEvent(Z)V

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setFakeMotionEvent(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_conflict_ui_state"

    .line 216
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "value_videoportrait_view_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "value_videoportrait_bar_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomWheel()V

    goto :goto_0

    .line 222
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomWheel()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setLayoutPadding$3(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    const-string v1, "topPadding"

    .line 310
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "bottomPadding"

    .line 311
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    .line 309
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    const-string v0, "zoomRatioTopPadding"

    .line 313
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "zoomRatioBottomPadding"

    .line 314
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 312
    invoke-virtual {p0, v3, v0, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private onInteractive(Z)V
    .locals 3

    .line 828
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractive touching = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x17

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_0

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 834
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 835
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsTouchingWheelView:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 837
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->sendZoomUIMessage(Z)V

    :cond_1
    return-void
.end method

.method private onMacroSelected()V
    .locals 2

    const/4 v0, 0x0

    .line 886
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsTouchingWheelView:Z

    .line 887
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomWheel()V

    .line 888
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_0

    const-string v0, "key_zoom_limit_monitor"

    .line 889
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_zoom_enable_macro"

    .line 890
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onProgressChanged(IZ)V
    .locals 1

    .line 842
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-eqz v0, :cond_0

    .line 843
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onProgressChanged,return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;

    .line 847
    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->access$800(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    .line 851
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->progressToValue(I)I

    move-result p1

    .line 852
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomNeed:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 854
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->updateZoomValueToUI(I)V

    goto :goto_0

    .line 856
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->updateZoomBySmooth(I)V

    goto :goto_0

    .line 859
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->updateZoomValueToUI(I)V

    :goto_0
    return-void
.end method

.method private showCenterZoomView()V
    .locals 2

    .line 591
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSlowMotionCameraAssigned:Z

    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideCenterZoomView()V

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "slow motion do no support zoom"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showZoomForWideToNormal(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 508
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 511
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private startSmoothZoom(I)V
    .locals 1

    const/4 v0, 0x1

    .line 967
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsZoomChanging:Z

    .line 968
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 969
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    return-void
.end method

.method private updateCenterZoomView(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 519
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showCenterZoomView()V

    goto :goto_0

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideCenterZoomView()V

    :goto_0
    return-void
.end method

.method private updateGradationRootLayout(II)V
    .locals 7

    .line 768
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 769
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    const/16 v2, 0x5a

    const v3, 0x7f07024a

    const/16 v4, 0x10e

    const v5, 0x7f07024b

    if-eq p1, v2, :cond_2

    const/16 v2, 0xb4

    const v6, 0x7f070249

    if-eq p1, v2, :cond_1

    if-eq p1, v4, :cond_0

    const/16 v2, 0x53

    .line 790
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 791
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 792
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x33

    .line 783
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 784
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 785
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x35

    .line 778
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 779
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 780
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    const/16 v2, 0x55

    .line 773
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 774
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 775
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr p1, v4

    .line 795
    rem-int/lit16 p1, p1, 0x168

    .line 796
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    if-eqz p2, :cond_4

    if-ne p2, p1, :cond_6

    :cond_4
    const/16 v2, 0x51

    .line 799
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 800
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInProfessionMode:Z

    if-eqz v2, :cond_5

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 801
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne p1, v2, :cond_5

    .line 802
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0707d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr p1, v2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 804
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 806
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 808
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateScreenFormType(I)V

    return-void
.end method

.method private updateMacroIconVisibility()V
    .locals 0

    return-void
.end method

.method private updateZoomBySmooth(I)V
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 939
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 940
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->sendZoomUIMessage(Z)V

    const/4 v0, 0x0

    .line 941
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->sendZoomUIMessage(Z)V

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mLastZoomValue:I

    .line 944
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->calculateZoomStep(II)V

    return-void
.end method

.method private updateZoomItemValue()V
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->updateItemValue()V

    const/4 v0, 0x1

    .line 974
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomForWideToNormal(Z)V

    const/4 v0, 0x0

    .line 975
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomForWideToNormal(Z)V

    return-void
.end method

.method private updateZoomValueToUI(I)V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 922
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 923
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->sendZoomUIMessage(Z)V

    const/4 v0, 0x0

    .line 924
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->sendZoomUIMessage(Z)V

    .line 926
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsZoomChanging:Z

    .line 927
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 928
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 931
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->updateItemValue()V

    return-void
.end method


# virtual methods
.method protected doOrientationChanged(I)V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 728
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 730
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 733
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->updateGradationRootLayout(II)V

    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected hideZoomUI()V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_zoomwheel_view_hide"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 534
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mActionZoomWheelBegin:Z

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x1a

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mActionZoomWheelBegin:Z

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideZoomUI, action_zoom_ui_end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 545
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method hideZoomUI(II)V
    .locals 0

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->calculateZoomStep(II)V

    .line 551
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomUI()V

    return-void
.end method

.method protected hideZoomWheel()V
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_zoomwheel_view_hide"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected loadEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c01ec

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09052e

    .line 250
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    const p2, 0x7f0904d6

    .line 251
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    const p2, 0x7f0904d5

    .line 253
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const p2, 0x7f0904dc

    .line 254
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const p2, 0x7f0901f0

    .line 255
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const p2, 0x7f0901ef

    .line 256
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/GraduationView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    .line 257
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setInteractiveListener(Lcom/transsion/camera/app/ui/widget/GraduationView$IInteractiveListener;)V

    .line 258
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setOnProgressChangeListener(Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;)V

    .line 259
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->updateGradationRootLayout(II)V

    return-object p1
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    .line 454
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 456
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsModeSwitch:Z

    :cond_0
    const/16 v1, 0x1b

    const/4 v2, 0x0

    if-eq p1, v1, :cond_6

    const/16 v1, 0x24

    if-eq p1, v1, :cond_5

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_5

    const/16 v1, 0x4c

    if-eq p1, v1, :cond_3

    const/16 v1, 0x50

    if-eq p1, v1, :cond_2

    const/16 v1, 0x5f

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8e

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 475
    :pswitch_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-nez p1, :cond_7

    .line 476
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomWheel()V

    goto :goto_0

    .line 472
    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomWheel()V

    goto :goto_0

    .line 466
    :pswitch_2
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-eqz p1, :cond_7

    .line 467
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 461
    :pswitch_3
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-eqz p1, :cond_7

    .line 462
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 499
    :cond_1
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->updateCenterZoomView(Z)V

    goto :goto_0

    .line 488
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomUI()V

    goto :goto_0

    .line 480
    :cond_3
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-eqz p1, :cond_4

    .line 481
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomWheel()V

    goto :goto_0

    .line 483
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomWheel()V

    goto :goto_0

    .line 493
    :cond_5
    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomUI(Z)V

    goto :goto_0

    .line 496
    :cond_6
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsTouchingWheelView:Z

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x48
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 0

    .line 587
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->consumeBackPressed()Z

    move-result p0

    return p0
.end method

.method public onMainCameraSelected()V
    .locals 2

    .line 895
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 896
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsTouchingWheelView:Z

    .line 897
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomWheel()V

    .line 899
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_1

    const-string v0, "key_zoom_limit_monitor"

    .line 900
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_zoom_disable_wide"

    .line 901
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onSatCameraSelected()V
    .locals 2

    .line 864
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 865
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsTouchingWheelView:Z

    .line 866
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomWheel()V

    .line 868
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_1

    const-string v0, "key_zoom_limit_monitor"

    .line 869
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_zoom_disable_wide"

    .line 870
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 3

    .line 755
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 756
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz v0, :cond_0

    .line 757
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 762
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->updateGradationRootLayout(II)V

    .line 763
    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->setLayoutPadding(Z)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->isReachPreviewBoundary(FF)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "onScroll point is out of preview rect!"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 378
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    goto :goto_0

    .line 380
    :cond_0
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    :goto_0
    return p2
.end method

.method public onTeleCameraSelected()V
    .locals 2

    .line 906
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 907
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsTouchingWheelView:Z

    .line 908
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomWheel()V

    .line 910
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_1

    const-string v0, "key_zoom_limit_monitor"

    .line 911
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_zoom_enable_tele"

    .line 912
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onWideCameraSelected()V
    .locals 2

    .line 875
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 876
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsTouchingWheelView:Z

    .line 877
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomWheel()V

    .line 879
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_1

    const-string v0, "key_zoom_limit_monitor"

    .line 880
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_zoom_enable_wide"

    .line 881
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected sendZoomUIMessage(Z)V
    .locals 3

    .line 691
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-eqz v0, :cond_0

    .line 692
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomForWideToNormal(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 695
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsZoomChanging:Z

    .line 696
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 697
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 699
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsTouchingWheelView:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 700
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsZoomChanging:Z

    .line 701
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 702
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 441
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 442
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_show_center_zoom_ratio"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 445
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mTouchEventTransmitter:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_wide_camera_move_event"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 447
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method setLayoutPadding(Z)V
    .locals 14

    .line 266
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setLayoutPadding(Z)V

    .line 267
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ", mOffsetPadding: "

    const-string v2, ", mBottomPadding: "

    const-string v3, "setLayoutPadding mTopPadding: "

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 271
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    .line 272
    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v6

    iput v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBottomPadding:I

    .line 273
    iget v7, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    add-int/2addr v6, v7

    .line 274
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    .line 276
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    .line 279
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 280
    iget v10, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    const v10, 0x7f0702be

    .line 282
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v12, 0x7f0702bd

    .line 283
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move v12, v4

    goto :goto_0

    .line 285
    :cond_0
    iget-object v10, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v10

    const v12, 0x7f0702bf

    .line 286
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move v12, v10

    move v10, v9

    move v9, v4

    .line 289
    :goto_0
    iget v13, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    if-ltz v13, :cond_1

    add-int/2addr v10, v13

    goto :goto_1

    :cond_1
    sub-int/2addr v9, v13

    .line 294
    :goto_1
    iput v12, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTopPadding:I

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array v1, p1, [I

    aput v0, v1, v4

    const/4 v0, 0x1

    aput v12, v1, v0

    const-string v2, "topPadding"

    .line 297
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, p1, [I

    aput v5, v2, v4

    aput v6, v2, v0

    const-string v3, "bottomPadding"

    .line 299
    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, p1, [I

    aput v7, v3, v4

    aput v10, v3, v0

    const-string v5, "zoomRatioTopPadding"

    .line 300
    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v5, p1, [I

    aput v8, v5, v4

    aput v9, v5, v0

    const-string v6, "zoomRatioBottomPadding"

    .line 302
    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v4

    aput-object v2, v6, v0

    aput-object v3, v6, p1

    aput-object v5, v6, v11

    .line 304
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    .line 306
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 318
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4, v12, v4, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4, v10, v4, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_2

    .line 324
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTopPadding:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBottomPadding:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 328
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    add-int/2addr v1, v2

    .line 327
    invoke-virtual {p1, v4, v0, v4, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 330
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    if-ltz p1, :cond_4

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4, p1, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_2

    .line 333
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    neg-int p1, p1

    invoke-virtual {p0, v4, v4, v4, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_2
    return-void
.end method

.method protected setSeekBarEnable(Z)V
    .locals 0

    .line 738
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_0

    .line 739
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected setWheelViewShowFlag(Z)V
    .locals 0

    .line 745
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsWheelShowByFilter:Z

    if-eqz p1, :cond_0

    .line 747
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p1, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomWheel()V

    :cond_0
    return-void
.end method

.method public setupEntryView()V
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setupEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 389
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const/16 v3, 0x65

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomWheel()V

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    .line 398
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v3

    .line 397
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setProgress(I)V

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->isSwitchCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 402
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->isZoomChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 403
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsLongTouchToNormal:Z

    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->updateZoomValueToUI()V

    .line 405
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->sendZoomUIMessage(Z)V

    .line 406
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->sendZoomUIMessage(Z)V

    .line 407
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsLongTouchToNormal:Z

    goto :goto_1

    .line 409
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsModeSwitch:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraFacingFront()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    if-nez v0, :cond_3

    goto :goto_0

    .line 412
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->hideZoomWheel()V

    .line 413
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomForWideToNormal(Z)V

    .line 414
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomForWideToNormal(Z)V

    goto :goto_1

    .line 410
    :cond_4
    :goto_0
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setupEntryView()V

    goto :goto_1

    .line 418
    :cond_5
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setupEntryView()V

    .line 421
    :goto_1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsModeSwitch:Z

    .line 422
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSimulateDownEvent:Z

    return-void
.end method

.method protected showZoomUI(Z)V
    .locals 10

    .line 609
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 614
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->isNeedShowWheelView()Z

    move-result v0

    const-wide/16 v1, 0x12c

    const-string v3, "alpha"

    const-string v4, "scaleX"

    const/4 v5, 0x1

    const-string v6, "key_conflict_ui_state"

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz p1, :cond_3

    .line 616
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 619
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v6}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v9, "value_zoomwheel_view_show"

    invoke-virtual {p1, v6, v9}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 621
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x19

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 623
    iput-boolean v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mActionZoomWheelBegin:Z

    .line 625
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {p1, v5}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(Z)V

    .line 627
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 629
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-array v0, v7, [F

    fill-array-data v0, :array_0

    .line 630
    invoke-static {p1, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-array v4, v7, [F

    fill-array-data v4, :array_1

    .line 632
    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 634
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 635
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 636
    invoke-virtual {v3, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    aput-object p1, v1, v8

    aput-object v0, v1, v5

    .line 637
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 638
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 641
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 644
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v6}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v9, "value_zoomwheel_view_hide"

    invoke-virtual {p1, v6, v9}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    .line 646
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {p1, v8}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(Z)V

    .line 648
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 650
    iput-boolean v8, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mActionZoomWheelBegin:Z

    .line 652
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-array v0, v7, [F

    fill-array-data v0, :array_2

    .line 653
    invoke-static {p1, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 654
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-array v4, v7, [F

    fill-array-data v4, :array_3

    .line 655
    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 656
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 657
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 658
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 659
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v7, [Landroid/animation/Animator;

    aput-object p1, v2, v8

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 660
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 661
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 676
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 677
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 680
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected showZoomWheel()V
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_zoomwheel_view_show"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 814
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mIsWheelShowByFilter:Z

    const/4 v0, 0x1

    .line 815
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSimulateDownEvent:Z

    .line 816
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->unInit()V

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 818
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_show_center_zoom_ratio"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 820
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mTouchEventTransmitter:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_move_event"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 822
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mUIStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V
    .locals 1

    .line 427
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V

    .line 428
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->updateMacroIconVisibility()V

    .line 429
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    .line 430
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getGraduationStyle()Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    move-result-object v0

    .line 429
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setStyle(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)V

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;

    .line 432
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->access$600(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 363
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->updateGradationRootLayout(II)V

    return-void
.end method

.method protected updateZoomValueToUI()V
    .locals 2

    .line 711
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v0

    .line 712
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->updateItemValue()V

    .line 716
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 717
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    if-eqz v1, :cond_0

    .line 719
    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->valueToProgress(I)I

    move-result v0

    .line 721
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setProgress(I)V

    :cond_1
    return-void
.end method
