.class public Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "RingScreenLightUIManager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

.field private mHandler:Landroid/os/Handler;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIsFrontCamera:Z

.field private mMarginBottom:I

.field private mMarginTop:I

.field private mOldValue:Z

.field private mPreHeight:I

.field private mPreWidth:I

.field private mPreviewAspectRatio:D

.field private mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

.field private mPreviewUIRootView:Landroid/view/View;

.field private mScreenFlashEnter:Z

.field private mTargetHeight:I

.field private mViewRoot:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$aTn7OuIje_YIdDZmHE9XTQOrs4Y(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->lambda$setPreviewSize$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mIsFrontCamera:Z

    .line 41
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mMarginTop:I

    .line 42
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mMarginBottom:I

    .line 43
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mTargetHeight:I

    .line 45
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreWidth:I

    .line 46
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreHeight:I

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    .line 51
    new-instance v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewUIRootView:Landroid/view/View;

    .line 63
    iput-object p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 64
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->ringScreenLightUpdateUI()V

    return-void
.end method

.method private doSetPreviewSize(II)V
    .locals 4

    .line 220
    sget-object v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetPreviewSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double p1, p2

    div-double/2addr v0, p1

    .line 222
    iget-wide p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewAspectRatio:D

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-nez p1, :cond_0

    .line 223
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewAspectRatio:D

    .line 224
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateScreenFlashUILayout()V

    .line 225
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->setDisplaySquareAlpha()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setPreviewSize$0()V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateSize()V

    return-void
.end method

.method private processScreenFlashEnterOut(Z)V
    .locals 3

    .line 150
    sget-object v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processScreenFlashEnterOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-nez v1, :cond_0

    const-string p0, "mPreviewScreenSupplyView is null"

    .line 152
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mScreenFlashEnter:Z

    if-eq v0, p1, :cond_2

    .line 156
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mScreenFlashEnter:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 159
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 163
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->processScreenFlashEnterOut(Z)V

    .line 146
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateTopPaddingView()V

    return-void
.end method

.method private updateScreenFlashUILayout()V
    .locals 11

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewUIRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 232
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v9, v0

    .line 234
    iget-wide v3, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewAspectRatio:D

    mul-double v5, v9, v3

    double-to-int v0, v5

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mTargetHeight:I

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight()I

    move-result v6

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 237
    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result v7

    iget v8, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mTargetHeight:I

    move v5, v1

    .line 236
    invoke-static/range {v3 .. v8}, Lcom/transsion/camera/utils/CameraUtil;->getTopMargin(DIIII)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mMarginTop:I

    .line 238
    iget v2, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mTargetHeight:I

    sub-int v2, v1, v2

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mMarginBottom:I

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight()I

    move-result v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v9, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v9, v2

    double-to-int v2, v9

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 240
    invoke-interface {v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 239
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateTranslucentRectLayout(II)V

    return-void
.end method

.method private updateSize()V
    .locals 2

    .line 215
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreWidth:I

    iget v1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreHeight:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->doSetPreviewSize(II)V

    .line 216
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateTopPaddingView()V

    return-void
.end method

.method private updateTopPaddingView()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    if-nez v0, :cond_0

    .line 172
    sget-object p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mTopPaddingView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateTranslucentRectLayout(II)V
    .locals 3

    .line 244
    sget-object v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewLayout topOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",bottomOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->updateOffset(II)V

    .line 249
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p2

    .line 250
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 254
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getOriginTopBarHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    .line 255
    invoke-virtual {v0, p1, p1, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0903c9

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 70
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0903d6

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mViewRoot:Landroid/view/ViewGroup;

    const v0, 0x7f090389

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->onScreenFormChanged(IZ)V

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0903c8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    const v0, 0x7f09006b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/aperture/ApertureView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    .line 83
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateSize()V

    .line 84
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mViewRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 0

    .line 107
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->onOrientationChanged(IZ)V

    :cond_0
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onRelativePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->onRelativePreviewRectChanged(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 1

    .line 115
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/aperture/ApertureView;->onScreenFormChanged(I)V

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-eqz p0, :cond_1

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->onScreenFormChanged(IZ)V

    :cond_1
    return-void
.end method

.method protected onSetupViews()V
    .locals 0

    return-void
.end method

.method public setDisplaySquareAlpha()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-nez v0, :cond_0

    .line 187
    sget-object p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mPreviewScreenSupplyView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 190
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mIsFrontCamera:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 194
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x4

    .line 191
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3

    .line 201
    sget-object v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mViewRoot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreWidth:I

    .line 203
    iput p2, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreHeight:I

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mViewRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->setCurrentW(I)V

    .line 208
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->setCurrentH(I)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 94
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mIsFrontCamera:Z

    return-void
.end method
