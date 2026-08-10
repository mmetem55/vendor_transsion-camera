.class public Lcom/transsion/camera/app/ui/FullZoomUI;
.super Lcom/transsion/camera/app/ui/AbstractWideCameraUI;
.source "FullZoomUI.java"


# static fields
.field private static final ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private fadeAnimator:Landroid/animation/ObjectAnimator;

.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mCouldShow:Z

.field private mCurrentMode:Ljava/lang/String;

.field private final mFadeInterpolator:Landroid/view/animation/PathInterpolator;

.field private mFullZoomLayout:Landroid/widget/FrameLayout;

.field private mFullZoomLayoutRoot:Landroid/view/ViewGroup;

.field private mFullZoomView:Landroid/view/View;

.field private mIfNeedShow:Z

.field private mInMovieMode:Z

.field private mIndicator:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitIndex:I

.field private mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsCameraSwitching:Z

.field private mIsCapturing:Z

.field private mIsFacebeautyOn:Z

.field private mIsFilterUIOn:Z

.field private mIsModeSwitching:Z

.field private mIsMoreMode:Z

.field private mIsNeedAnimate:Z

.field private mIsPausing:Z

.field private mIsVideoPortraitBarOn:Z

.field private mItemsCount:I

.field private mOrientation:I

.field private mPreviousIndicator:Landroid/view/View;

.field private mRecording:Z

.field private mResources:Landroid/content/res/Resources;

.field private mSecondDefaultZoomValue:I

.field private mSelfTimerBegin:Z

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslateDis:I

.field private mXOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/FullZoomUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 3

    .line 173
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 47
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 48
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    .line 56
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPausing:Z

    .line 68
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    .line 69
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecording:Z

    .line 70
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsModeSwitching:Z

    const/4 v0, 0x3

    .line 76
    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    const/4 v0, 0x1

    .line 77
    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInitIndex:I

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    .line 87
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    const/16 p1, 0xc8

    .line 88
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSecondDefaultZoomValue:I

    .line 89
    new-instance p1, Lcom/transsion/camera/app/ui/FullZoomUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$1;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/FullZoomUI;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    return p1
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    return p1
.end method

.method static synthetic access$302(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/FullZoomUI;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecording:Z

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFacebeautyOn:Z

    return p1
.end method

.method static synthetic access$602(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/view/ViewGroup;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    return-object p0
.end method

.method private cancelAnimation()V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private computeTranslateX(I)F
    .locals 0

    .line 619
    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mXOffset:I

    mul-int/2addr p1, p0

    int-to-float p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method private notifyActionToItemUI(I)V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 665
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    if-eqz v0, :cond_1

    .line 667
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private printStatus()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsNeedShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIfNeedShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsFilterUIOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsFaceBeautyOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFacebeautyOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVideoPortraitBarOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mCouldShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsZoomWheelShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsCameraSwitching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelfTimerBegin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsCapturing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private startTranslateX(I)V
    .locals 0

    .line 657
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result p1

    .line 658
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private startTranslateXWithAnimation(I)V
    .locals 13

    .line 623
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startTranslateXWithAnimation] nextIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 626
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 628
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    const/4 v1, 0x2

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 629
    sget-object v3, Lcom/transsion/camera/app/ui/FullZoomUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 630
    iget-object v7, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    const-string v9, "scaleX"

    invoke-static {v7, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 631
    iget-object v8, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    new-array v10, v1, [F

    fill-array-data v10, :array_2

    const-string v11, "scaleY"

    invoke-static {v8, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 632
    invoke-virtual {v7, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 633
    invoke-virtual {v8, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 635
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->computeTranslateX(I)F

    move-result p1

    .line 636
    iget-object v10, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v10, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 637
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    new-array v10, v1, [F

    fill-array-data v10, :array_3

    invoke-static {p1, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 638
    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 639
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    const/4 v5, 0x3

    new-array v6, v5, [F

    fill-array-data v6, :array_4

    invoke-static {v4, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v9, 0x12c

    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 640
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    new-array v12, v5, [F

    fill-array-data v12, :array_5

    invoke-static {v6, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 641
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 642
    invoke-virtual {v6, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 644
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v9, 0x6

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v0, v9, v2

    const/4 v0, 0x1

    aput-object v7, v9, v0

    aput-object v8, v9, v1

    aput-object p1, v9, v5

    const/4 p1, 0x4

    aput-object v4, v9, p1

    const/4 p1, 0x5

    aput-object v6, v9, p1

    .line 645
    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 646
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 647
    new-instance p1, Lcom/transsion/camera/app/ui/FullZoomUI$6;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$6;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public couldShow(Z)V
    .locals 3

    .line 324
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->couldShow(Z)V

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldShow show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 326
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->resetIndicatorPosition()V

    :cond_0
    return-void
.end method

.method public hideWideCamera()V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideWideCamera"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->cancelAnimation()V

    .line 416
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    .line 418
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/FullZoomUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$3;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 446
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 448
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected loadWideCameraUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 178
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00a2

    const/4 v1, 0x1

    .line 179
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901cd

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const p2, 0x7f09051f

    .line 182
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0901cc

    .line 183
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    const p2, 0x7f0901cb

    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f09038a

    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    .line 187
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f07021b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mXOffset:I

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "wide_camera_translation_distance"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTranslateDis:I

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 3

    .line 704
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyCameraOperateActionToUI] action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mIsNeedShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsZoomWheelShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setZoomWheelShow(I)V

    .line 706
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->notifyActionToItemUI(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_13

    const/4 v1, 0x0

    if-eq p1, v0, :cond_12

    const/4 v2, 0x2

    if-eq p1, v2, :cond_11

    const/4 v2, 0x3

    if-eq p1, v2, :cond_10

    const/4 v2, 0x5

    if-eq p1, v2, :cond_10

    const/4 v2, 0x7

    if-eq p1, v2, :cond_10

    const/16 v2, 0x14

    if-eq p1, v2, :cond_e

    const/16 v2, 0x1f

    if-eq p1, v2, :cond_d

    const/16 v2, 0x38

    if-eq p1, v2, :cond_c

    const/16 v2, 0x4c

    if-eq p1, v2, :cond_c

    const/16 v2, 0x5e

    if-eq p1, v2, :cond_10

    const/16 v2, 0x60

    if-eq p1, v2, :cond_b

    const/16 v2, 0x9b

    if-eq p1, v2, :cond_a

    const/16 v2, 0xf

    if-eq p1, v2, :cond_8

    const/16 v2, 0x10

    if-eq p1, v2, :cond_6

    const/16 v2, 0x2d

    if-eq p1, v2, :cond_9

    const/16 v2, 0x2e

    if-eq p1, v2, :cond_7

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_5

    const/16 v2, 0x5b

    if-eq p1, v2, :cond_4

    const/16 v2, 0x7c

    if-eq p1, v2, :cond_2

    const/16 v2, 0x7d

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_3

    .line 709
    :pswitch_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsMoreMode:Z

    goto/16 :goto_3

    .line 795
    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    goto/16 :goto_3

    .line 749
    :pswitch_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    .line 750
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    .line 751
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsModeSwitching:Z

    .line 752
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecording:Z

    .line 753
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    .line 754
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPausing:Z

    goto/16 :goto_3

    .line 843
    :pswitch_3
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    .line 844
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    .line 845
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    goto/16 :goto_3

    .line 839
    :pswitch_4
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    .line 840
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    goto/16 :goto_3

    .line 820
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_14

    .line 821
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 822
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 p1, v1, -0x1

    if-ltz p1, :cond_1

    .line 824
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 825
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 808
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_14

    .line 809
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 810
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/lit8 p1, v1, 0x1

    .line 811
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 812
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 813
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 835
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    .line 836
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    goto/16 :goto_3

    .line 832
    :cond_5
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    goto/16 :goto_3

    .line 762
    :cond_6
    :pswitch_5
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecording:Z

    .line 763
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    .line 766
    :cond_7
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    .line 767
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    goto/16 :goto_3

    .line 737
    :cond_8
    :pswitch_7
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecording:Z

    .line 738
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    .line 739
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    .line 741
    :pswitch_8
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-eqz p1, :cond_9

    .line 742
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    .line 745
    :cond_9
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    .line 746
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    goto/16 :goto_3

    .line 712
    :cond_a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsMoreMode:Z

    goto/16 :goto_3

    .line 715
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    goto/16 :goto_3

    .line 801
    :cond_c
    :pswitch_9
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_14

    .line 802
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 803
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 804
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    goto :goto_3

    .line 758
    :cond_d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPausing:Z

    goto :goto_3

    .line 718
    :cond_e
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_14

    .line 719
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFacebeautyOn:Z

    .line 720
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 721
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 722
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    .line 723
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateX(I)V

    .line 725
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_14

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    if-eqz p1, :cond_f

    .line 728
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->restoreDefaultValue()V

    goto :goto_2

    .line 777
    :cond_10
    :pswitch_a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsModeSwitching:Z

    .line 778
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    .line 780
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_14

    .line 781
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 782
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 783
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    goto :goto_3

    .line 770
    :cond_11
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsModeSwitching:Z

    goto :goto_3

    .line 791
    :cond_12
    :pswitch_b
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    .line 792
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWhenCamSwitchEnd()V

    goto :goto_3

    .line 787
    :cond_13
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    :cond_14
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x48
        :pswitch_1
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x90
        :pswitch_7
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public onOrientationChanged(IZ)V
    .locals 3

    .line 292
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onOrientationChanged], orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    iget p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    if-eq p2, p1, :cond_2

    iget-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    if-nez p2, :cond_0

    goto :goto_1

    .line 296
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    .line 298
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 300
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 301
    instance-of v2, v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v2, :cond_1

    .line 302
    check-cast v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public pause()V
    .locals 1

    .line 612
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->pause()V

    .line 613
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsPausing:Z

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    :cond_0
    return-void
.end method

.method protected resetIndicatorPosition()V
    .locals 5

    const/4 v0, 0x0

    .line 674
    :goto_0
    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-ge v0, v1, :cond_1

    .line 675
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 676
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    .line 677
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetIndicatorPosition,selected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 679
    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInitIndex:I

    sub-int/2addr v0, v1

    .line 680
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateX(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setSecondDefaultZoomValue(I)V
    .locals 0

    .line 309
    iput p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSecondDefaultZoomValue:I

    return-void
.end method

.method protected setSettingUIList()V
    .locals 8

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFacebeautyOn:Z

    .line 203
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v3, "key_wide_camera_item_seleccted"

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 204
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v3, "key_conflict_ui_state"

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 205
    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 206
    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    .line 209
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 210
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hasTeleItem()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 211
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 216
    :cond_3
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    goto :goto_3

    .line 212
    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    .line 213
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 214
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    .line 218
    :goto_3
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setSettingUIList] mIsNeedShowUI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " needShow:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSettingUIList:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 220
    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v4

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    add-int/2addr v4, v5

    .line 219
    invoke-virtual {v1, v0, v3, v0, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 222
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 223
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 225
    invoke-interface {v3}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v4

    sget-object v5, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    if-ne v4, v5, :cond_6

    const v4, 0x7f0c00a3

    goto :goto_5

    .line 227
    :cond_6
    invoke-interface {v3}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v4

    sget-object v5, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_IMAGE:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    if-ne v4, v5, :cond_7

    const v4, 0x7f0c00a1

    goto :goto_5

    :cond_7
    move v4, v0

    :goto_5
    if-nez v4, :cond_8

    return-void

    .line 233
    :cond_8
    iget v5, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSecondDefaultZoomValue:I

    invoke-interface {v3, v5}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->setSecondZoomDefaultValue(I)V

    .line 234
    iget-object v5, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-interface {v3, v5, v6, v4}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    .line 235
    move-object v5, v4

    check-cast v5, Lcom/transsion/camera/app/ui/widget/IRotatable;

    iget v6, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mOrientation:I

    invoke-interface {v5, v6, v0}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    .line 236
    invoke-interface {v3}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->needShowEntryView()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 237
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 241
    :cond_9
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 242
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 243
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 244
    iget-object v5, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    iput v5, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    .line 245
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 246
    iget v5, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eq v5, v6, :cond_d

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b

    if-eq v5, v7, :cond_a

    goto/16 :goto_7

    .line 248
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070228

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_7

    .line 251
    :cond_b
    iput v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInitIndex:I

    .line 252
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070227

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 253
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_c

    .line 254
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    const/16 v2, 0x11

    .line 256
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 257
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 258
    iget-object v5, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 260
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    const v2, 0x7f080674

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .line 265
    :cond_d
    iput v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInitIndex:I

    .line 266
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070226

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 267
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    const v5, 0x7f080673

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 268
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v7, :cond_e

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hasTeleItem()Z

    move-result v2

    if-nez v2, :cond_e

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 270
    :cond_e
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hasTeleItem()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 271
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_6
    const/16 v0, 0x10

    .line 273
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 274
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f07021d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 275
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIndicator:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mPreviousIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 282
    :cond_10
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_7
    const/16 v0, 0x51

    .line 285
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070222

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSettingUIList] settingUIList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " currentCameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    .line 197
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public show(Z)V
    .locals 2

    .line 565
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show mIsNeedShowUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAllowSetAlpha:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFacebeautyOn:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecording:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 568
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    if-eqz p1, :cond_1

    .line 572
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 575
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    if-eqz p1, :cond_3

    .line 576
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->cancelAnimation()V

    .line 577
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    if-eqz p1, :cond_2

    .line 578
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    .line 579
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 580
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/transsion/camera/app/ui/FullZoomUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 581
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/FullZoomUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$5;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 588
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected showWhenCamSwitchEnd()V
    .locals 2

    .line 314
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    const/4 v1, 0x1

    .line 316
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    .line 317
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    .line 318
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    :cond_0
    return-void
.end method

.method public showWideCamera()V
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWideCamera mIsNeedShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mAllowSetAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecording:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFacebeautyOn:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsMoreMode:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCameraSwitching:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 348
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateEntryValue(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->resetIndicatorPosition()V

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->fadeAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->fadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 361
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInMovieMode:Z

    if-eqz v1, :cond_4

    .line 362
    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mTranslateDis:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_1

    .line 364
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 369
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    .line 370
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 378
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    if-eqz v0, :cond_8

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 380
    fill-array-data v0, :array_0

    const-string v2, "alpha"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 381
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 383
    sget-object v1, Lcom/transsion/camera/app/ui/FullZoomUI;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 384
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->cancelAnimation()V

    .line 385
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsNeedAnimate:Z

    if-eqz v1, :cond_7

    .line 386
    new-instance v1, Lcom/transsion/camera/app/ui/FullZoomUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/FullZoomUI$2;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 406
    :cond_7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_8
    return-void

    .line 344
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->printStatus()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public translateWideCamera(IZ)V
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translateWideCamera distance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mItemsCount:I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 527
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mSelfTimerBegin:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 531
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 533
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public translateWideCamera(Z)V
    .locals 11

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translateWideCamera fadeOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCouldShow:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsCapturing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 459
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsModeSwitching:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mRecording:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    .line 462
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIfNeedShow:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "alpha"

    const-string v2, "scaleY"

    const-string v3, "scaleX"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_3

    new-array v0, v5, [F

    .line 469
    fill-array-data v0, :array_0

    .line 470
    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v3, v5, [F

    .line 471
    fill-array-data v3, :array_1

    .line 472
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v5, [F

    .line 473
    fill-array-data v3, :array_2

    .line 474
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-array v6, v5, [F

    .line 476
    fill-array-data v6, :array_3

    .line 477
    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v6, v5, [F

    .line 478
    fill-array-data v6, :array_4

    .line 479
    invoke-static {v2, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v6, v5, [F

    .line 480
    fill-array-data v6, :array_5

    .line 481
    invoke-static {v1, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 482
    iget-object v6, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object v0, v3

    .line 485
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomView:Landroid/view/View;

    const/4 v6, 0x3

    new-array v7, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v7, v4

    const/4 v8, 0x1

    aput-object v2, v7, v8

    aput-object v1, v7, v5

    .line 486
    invoke-static {v3, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->fadeAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v9, 0x12c

    .line 487
    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 488
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->fadeAnimator:Landroid/animation/ObjectAnimator;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 490
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayout:Landroid/widget/FrameLayout;

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v4

    aput-object v2, v6, v8

    aput-object v1, v6, v5

    .line 491
    invoke-static {v3, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 492
    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 493
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 494
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->fadeAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/FullZoomUI$4;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/ui/FullZoomUI$4;-><init>(Lcom/transsion/camera/app/ui/FullZoomUI;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 519
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->fadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 520
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unInit()V
    .locals 3

    .line 601
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->unInit()V

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 603
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    .line 604
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFacebeautyOn:Z

    .line 605
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateItemValue()V
    .locals 3

    .line 539
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFilterUIOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFacebeautyOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsVideoPortraitBarOn:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 544
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateEntryValue(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->resetIndicatorPosition()V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateWideCameraAlpha(FZ)V
    .locals 8

    .line 551
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 552
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p2

    float-to-double v4, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, v4, v6

    if-eqz p2, :cond_0

    .line 553
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v3, v0, v2

    aput p1, v0, v1

    const-string v4, "alpha"

    invoke-static {p2, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v4, 0x12c

    .line 554
    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 555
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 557
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mFullZoomLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_0
    cmpl-float p1, p1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 559
    :goto_1
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    :cond_2
    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 688
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateWideCameraUI], preCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " nextCameraId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 690
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFacebeautyOn:Z

    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateWideCameraUIByMode], preModeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nextModeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 696
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 697
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mIsFacebeautyOn:Z

    const-string p1, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    .line 698
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mInMovieMode:Z

    .line 699
    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI;->mCurrentMode:Ljava/lang/String;

    return-void
.end method
