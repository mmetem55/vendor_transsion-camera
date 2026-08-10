.class Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;
.super Lcom/transsion/camera/feature/common/BaseUI;
.source "WideSelfieUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;
    }
.end annotation


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

.field private volatile mDirection:I

.field private mHoverPreviewRect:Landroid/graphics/Rect;

.field private mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

.field mIsSupportFoldUI:Z

.field private mMarginTopHoverAnimator:Landroid/animation/ValueAnimator;

.field private mNormalPreviewRect:Landroid/graphics/Rect;

.field private mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

.field private mNotifyText:Landroid/widget/TextView;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private final mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;


# direct methods
.method public static synthetic $r8$lambda$l9KbLZwM7zPWCwTWzVEKPGmyS_o(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->lambda$readyUI$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 55
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;)V
    .locals 4

    .line 63
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x2d

    const/16 v2, 0x40b

    const/16 v3, 0x528

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mHoverPreviewRect:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x192

    const/16 v2, 0x438

    const/16 v3, 0x732

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNormalPreviewRect:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    .line 64
    iput-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    .line 65
    iget-object p2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType(Landroid/content/Context;)I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIsSupportFoldUI:Z

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;I)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->isLand(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method private isLand(I)Z
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    if-eqz p1, :cond_0

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$readyUI$0()V
    .locals 1

    .line 142
    iget v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateLayoutParams(I)V

    return-void
.end method

.method private stopIdleAnimation(Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0

    if-nez p1, :cond_0

    .line 131
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "stopIdleAnimation view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 135
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    const/16 p0, 0x8

    .line 136
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateLayoutParams(I)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mPreviewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    return-void

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    if-nez v0, :cond_3

    .line 183
    new-instance v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->updateArrowWidthAndHeight(I)V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->updateRootLayoutMargin(I)V

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->setNotifyViewsLayout(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;)V

    return-void

    .line 170
    :cond_4
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onOrientationChanged mRootView or mNotifyImageView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$layout;->wideselfie_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 103
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 104
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 105
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->wideselfie_notify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyText:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->wideselfie_notify_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->wideselfie_idle_arrow_vertical:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->wideselfie_idle_arrow_horizontal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public initView()V
    .locals 1

    .line 91
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->initView()V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateOrientation(I)V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    .line 281
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;->notifyCameraOperateAction(I)V

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mMarginTopHoverAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mMarginTopHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 161
    iget p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateLayoutParams(I)V

    return-void
.end method

.method public onCaptureEnd()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureEnd()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    return-void
.end method

.method public onCaptureFailed()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureFailed()V

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    return-void
.end method

.method public onDirectionUpdate(I)V
    .locals 3

    .line 70
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    if-eq v0, p1, :cond_0

    .line 71
    sget-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDirectionUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    .line 73
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    :cond_0
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    return-void
.end method

.method public readyUI()V
    .locals 1

    .line 142
    new-instance v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/common/BaseUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->readyUI()V

    return-void
.end method

.method public setNotifyViewsLayout(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 193
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 194
    iget v2, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowWidth:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 195
    iget v2, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowHeight:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 196
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v2, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mTextMaxLineWidth:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 201
    iget v0, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 202
    iget v0, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 203
    iget v0, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginLeft:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 204
    iget v0, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginRight:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 205
    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginBottom:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public unInitView()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->stopIdleAnimation(Lcom/opensource/svgaplayer/SVGAImageView;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->stopIdleAnimation(Lcom/opensource/svgaplayer/SVGAImageView;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    .line 126
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->unInitView()V

    return-void
.end method

.method public updateOrientation(I)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;->updateOrientation(I)V

    .line 149
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateLayoutParams(I)V

    .line 150
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method protected updateUI()V
    .locals 7

    .line 216
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 217
    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    .line 218
    iget v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    .line 220
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->isLand(I)Z

    move-result v3

    .line 222
    sget-object v4, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUI capturing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", direction: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLand: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v4, 0x8

    if-nez v0, :cond_2

    .line 227
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_wideselfie_tap_shutter:I

    .line 228
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    if-eqz v2, :cond_0

    const/4 v5, 0x4

    .line 229
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v2, :cond_a

    if-eqz v3, :cond_1

    .line 233
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_3

    .line 242
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_4

    .line 245
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    const/4 v0, 0x1

    if-eq v2, v0, :cond_8

    const/4 v0, 0x2

    if-eq v2, v0, :cond_6

    .line 262
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_wideselfie_rotaniton_left:I

    if-nez v3, :cond_5

    .line 263
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_right_animation:I

    goto :goto_0

    .line 264
    :cond_5
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_land_right_animation:I

    goto :goto_0

    .line 256
    :cond_6
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_wideselfie_rotaniton_left:I

    if-nez v3, :cond_7

    .line 257
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_right_animation:I

    goto :goto_0

    .line 258
    :cond_7
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_land_right_animation:I

    goto :goto_0

    .line 250
    :cond_8
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_wideselfie_rotaniton_right:I

    if-nez v3, :cond_9

    .line 251
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_left_animation:I

    goto :goto_0

    .line 252
    :cond_9
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_land_left_animation:I

    .line 268
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 269
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/AnimationRotationView;->setImageResource(I)V

    .line 274
    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyText:Landroid/widget/TextView;

    if-eqz p0, :cond_b

    if-eqz v0, :cond_b

    .line 275
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    return-void
.end method
