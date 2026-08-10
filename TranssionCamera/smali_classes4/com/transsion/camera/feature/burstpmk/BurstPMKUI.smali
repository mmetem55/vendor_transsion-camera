.class Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;
.super Lcom/transsion/camera/feature/common/BaseUI;
.source "BurstPMKUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI;
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final THUMBNAIL_HEIGHT_RATIO:I = 0x8


# instance fields
.field private mBridgeLayout:Landroid/widget/FrameLayout;

.field private mDirection:I

.field private mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

.field mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mNotifyText:Landroid/widget/TextView;

.field private mNotifyTextMarginTopHover:I

.field private mNotifyTextMarginTopNormal:I

.field private mOffset:Landroid/graphics/Point;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private mScreenFormType:I

.field private mSpeedWarn:Z

.field private final mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;


# direct methods
.method public static synthetic $r8$lambda$DVG9hNvGIWVUKLBJ0rAeUpe6JEM(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;Landroid/widget/RelativeLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->lambda$updateNotifyTextLayout$0(Landroid/widget/RelativeLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZHY_EFPBrR_d9ftGJYliK-0Cj2U(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateLayoutParams()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 89
    iput-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    .line 90
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mScreenFormType:I

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 39
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)Landroid/graphics/Rect;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateLayoutParams()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->changeDirection()V

    return-void
.end method

.method private changeDirection()V
    .locals 3

    .line 165
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "changeDirection"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 167
    iput v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    .line 169
    iput v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

    if-eqz v0, :cond_2

    .line 172
    iget p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;->onDirectionChange(I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateNotifyTextLayout$0(Landroid/widget/RelativeLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 252
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateLayoutParams()V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mBridgeLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 200
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 202
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 203
    iget-object v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-object v4, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v3, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v3, v2

    div-int/2addr v3, v1

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 204
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 205
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 206
    iget v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 207
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v2, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float v2, v2

    iget v3, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mHRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 209
    iget v2, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v2, v2

    iget v3, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mVRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 211
    iget-object v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 214
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mBridgeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 194
    :cond_2
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLayoutParams mBridgeLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mBridgeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", mTextContainer: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$layout;->burstpmk_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 141
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 144
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 145
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 146
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 147
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->id_burst_bridge_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mBridgeLayout:Landroid/widget/FrameLayout;

    .line 150
    new-instance v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$2;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->burstpmk_notify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_text_margin_top_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyTextMarginTopNormal:I

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$dimen;->wideselfie_notify_text_margin_top_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyTextMarginTopHover:I

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public initView()V
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->initView()V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateNotifyTextLayout()V

    return-void
.end method

.method public onCaptureEnd()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureEnd()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mOffset:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    return-void
.end method

.method public onCaptureFailed()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureFailed()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mOffset:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    return-void
.end method

.method public onMoveProgress(Landroid/graphics/Point;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mOffset:Landroid/graphics/Point;

    .line 101
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mScreenFormType:I

    const/4 p2, 0x1

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateNotifyTextLayout(IZ)V

    return-void
.end method

.method public onSpeedUpdate(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 107
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    if-eq v0, p1, :cond_1

    .line 108
    iput-boolean p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    .line 109
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    .line 110
    sget-object p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpeedUpdate speedWarn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public readyUI()V
    .locals 1

    .line 187
    new-instance v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/common/BaseUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    new-instance v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/common/BaseUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 189
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->readyUI()V

    return-void
.end method

.method public setDirectionListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

    return-void
.end method

.method public unInitView()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->unInitView()V

    return-void
.end method

.method public updateNotifyTextLayout()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateNotifyTextLayout(IZ)V

    :cond_0
    return-void
.end method

.method public updateNotifyTextLayout(IZ)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 238
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 242
    iget p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyTextMarginTopHover:I

    goto :goto_0

    .line 244
    :cond_1
    iget p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyTextMarginTopNormal:I

    .line 247
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 v2, 0x0

    aput v1, p2, v2

    const/4 v1, 0x1

    aput p1, p2, v1

    .line 248
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 249
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 257
    :cond_2
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public updateOrientation(I)V
    .locals 0

    .line 314
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateUI()V
    .locals 7

    .line 266
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 267
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mOffset:Landroid/graphics/Point;

    .line 268
    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    .line 269
    iget-boolean v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    .line 271
    sget-object v4, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUI capturing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", speedWarn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    if-eqz v1, :cond_5

    .line 276
    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 277
    iget v1, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0xb4

    if-lez v1, :cond_1

    iget-object v5, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v5, v5, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    if-lez v5, :cond_1

    if-le v0, v5, :cond_1

    if-ne v2, v4, :cond_0

    .line 281
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_up:I

    goto :goto_0

    .line 282
    :cond_0
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_down:I

    goto :goto_0

    :cond_1
    if-gez v1, :cond_3

    .line 283
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    if-lez v1, :cond_3

    if-le v0, v1, :cond_3

    if-ne v2, v4, :cond_2

    .line 287
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_down:I

    goto :goto_0

    .line 288
    :cond_2
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_up:I

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 291
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_warining_toast_pmk_trace_little_quick:I

    goto :goto_0

    .line 293
    :cond_4
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_ok:I

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 298
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_warining_toast_pmk_trace_little_quick:I

    goto :goto_0

    .line 300
    :cond_6
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_ok:I

    goto :goto_0

    .line 304
    :cond_7
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_tap_shutter:I

    .line 307
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    if-eqz p0, :cond_8

    if-lez v0, :cond_8

    .line 308
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    return-void
.end method
