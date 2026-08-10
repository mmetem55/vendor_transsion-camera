.class public Lcom/transsion/camera/app/ui/FrontWideCameraUI;
.super Lcom/transsion/camera/app/ui/AbstractWideCameraUI;
.source "FrontWideCameraUI.java"


# instance fields
.field private final mFadeInterpolator:Landroid/view/animation/PathInterpolator;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsFacebeautyOn:Z

.field private mIsFilterUIOn:Z

.field private mIsVideoPortraitBarOn:Z

.field private mNeedBreak:Z

.field private mObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mOrientation:I

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

.field private mSupportAutoWideChange:Z

.field private mVideoRecordBegin:Z

.field private mWideCameraIndicator:Landroid/view/View;

.field private mWideCameraLayout:Landroid/widget/FrameLayout;

.field private mWideCameraLayoutBackground:Landroid/widget/FrameLayout;

.field private mWideCameraLayoutRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 3

    .line 149
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    .line 59
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 60
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mNeedBreak:Z

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSupportAutoWideChange:Z

    .line 67
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    .line 68
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecordBegin:Z

    .line 70
    new-instance p1, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/ViewGroup;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/widget/FrameLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/FrontWideCameraUI;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->animateIndicator(I)V

    return-void
.end method

.method private animateIndicator(I)V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 158
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 159
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aget v4, v0, v1

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 160
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 161
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr v4, v0

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sub-float/2addr v2, v4

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public hideWideCamera()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideWideCamera"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected loadWideCameraUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadWideCameraUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00a0

    const/4 v1, 0x1

    .line 172
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901c9

    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const p2, 0x7f0901c7

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0901c8

    .line 176
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutBackground:Landroid/widget/FrameLayout;

    const p2, 0x7f0901ca

    .line 177
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 6

    .line 415
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->notifyCameraOperateActionToUI(I)V

    const-string v0, "value_horizon_switch_wide_pause"

    const-string v1, "key_horizon_switch_wide"

    const/4 v2, 0x1

    if-eqz p1, :cond_a

    const/16 v3, 0x1b

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq p1, v3, :cond_8

    const/16 v3, 0x1f

    if-eq p1, v3, :cond_7

    const/16 v3, 0x35

    if-eq p1, v3, :cond_6

    const/16 v3, 0x37

    if-eq p1, v3, :cond_5

    const/16 v3, 0x4c

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_a

    const/4 v3, 0x3

    if-eq p1, v3, :cond_7

    const/4 v3, 0x4

    if-eq p1, v3, :cond_a

    const/4 v3, 0x5

    if-eq p1, v3, :cond_7

    const/16 v3, 0xb

    if-eq p1, v3, :cond_3

    const/16 v3, 0xc

    if-eq p1, v3, :cond_2

    const/16 v3, 0x23

    if-eq p1, v3, :cond_a

    const/16 v3, 0x24

    if-eq p1, v3, :cond_7

    const/16 v3, 0x55

    if-eq p1, v3, :cond_a

    const/16 v3, 0x56

    if-eq p1, v3, :cond_7

    const/16 v3, 0x90

    if-eq p1, v3, :cond_1

    const/16 v3, 0x91

    if-eq p1, v3, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    .line 472
    :pswitch_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    goto/16 :goto_2

    .line 432
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 454
    :cond_0
    :pswitch_2
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecordBegin:Z

    goto :goto_0

    .line 429
    :cond_1
    :pswitch_3
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecordBegin:Z

    goto :goto_2

    .line 468
    :cond_2
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    .line 469
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mNeedBreak:Z

    goto :goto_2

    .line 462
    :cond_3
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    .line 463
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mNeedBreak:Z

    .line 464
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 465
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 477
    :cond_4
    :pswitch_4
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecordBegin:Z

    if-nez p1, :cond_b

    .line 478
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    .line 479
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    goto :goto_2

    .line 456
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_b

    .line 457
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    .line 458
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    goto :goto_2

    .line 483
    :cond_6
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    goto :goto_2

    .line 450
    :cond_7
    :pswitch_5
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mNeedBreak:Z

    goto :goto_2

    .line 418
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 419
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 421
    :cond_9
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mNeedBreak:Z

    .line 422
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerBegin:Z

    .line 423
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecordBegin:Z

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 425
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 439
    :cond_a
    :goto_1
    :pswitch_6
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mNeedBreak:Z

    .line 440
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 441
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x48
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onOrientationChanged(IZ)V
    .locals 3

    .line 501
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onOrientationChanged], orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 502
    iget p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    if-eq p2, p1, :cond_6

    iget-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    if-nez p2, :cond_0

    goto :goto_3

    .line 506
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    .line 508
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 510
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 511
    instance-of v2, v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v2, :cond_1

    .line 512
    check-cast v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_3

    const p1, 0x800013

    .line 518
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_3
    const p1, 0x800015

    .line 520
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 522
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mNeedBreak:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSupportAutoWideChange:Z

    if-eqz p1, :cond_6

    .line 525
    iget p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    const/16 p2, 0x5a

    const-string v1, "key_horizon_switch_wide"

    if-eq p1, p2, :cond_5

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 529
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_horizon_switch_wide_id_single"

    .line 530
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 526
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_horizon_switch_wide_id_multiple"

    .line 527
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public setSecondDefaultZoomValue(I)V
    .locals 0

    return-void
.end method

.method protected setSettingUIList()V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_normal_camera_item_long_click"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_ai_group_photo_camera_id"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutBackground:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 201
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 202
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 206
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    goto :goto_2

    .line 203
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    .line 204
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    .line 209
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setSettingUIList] mIsNeedShowFrontUI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasFrontWideCamera:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mSettingUIList:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 215
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    if-ne v3, v4, :cond_5

    const v3, 0x7f0c01ea

    goto :goto_4

    .line 217
    :cond_5
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_IMAGE:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    if-ne v3, v4, :cond_6

    const v3, 0x7f0c009f

    goto :goto_4

    :cond_6
    move v3, v2

    :goto_4
    if-nez v3, :cond_7

    return-void

    .line 224
    :cond_7
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-interface {v1, v4, v5, v3}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    .line 225
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->needShowEntryView()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 227
    instance-of v1, v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v1, :cond_4

    .line 228
    check-cast v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    iget v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    invoke-interface {v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_3

    .line 233
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    goto :goto_5

    .line 236
    :cond_9
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 237
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutBackground:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080964

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 240
    :cond_a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 241
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutBackground:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080963

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 244
    :goto_5
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
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

    .line 183
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    .line 184
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public show(Z)V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[show] mRootView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsNeedShowFrontUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isNeedResetLayout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 318
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected showWhenCamSwitchEnd()V
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 493
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 494
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    :cond_0
    const/4 v0, 0x0

    .line 496
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mNeedBreak:Z

    return-void
.end method

.method public showWideCamera()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWideCamera mFrontSettingUIList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsNeedShowFrontUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 330
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 333
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 338
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xa

    .line 341
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 352
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    const/4 v1, 0x0

    .line 353
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateEntryValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public translateWideCamera(IZ)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 307
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    int-to-float p0, p1

    .line 309
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public translateWideCamera(Z)V
    .locals 7

    if-nez p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "alpha"

    const-string v1, "scaleY"

    const-string v2, "scaleX"

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    new-array v4, v3, [F

    .line 257
    fill-array-data v4, :array_0

    .line 258
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v4, v3, [F

    .line 259
    fill-array-data v4, :array_1

    .line 260
    invoke-static {v1, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, v3, [F

    .line 261
    fill-array-data v4, :array_2

    .line 262
    invoke-static {v0, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v4, v3, [F

    .line 264
    fill-array-data v4, :array_3

    .line 265
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v4, v3, [F

    .line 266
    fill-array-data v4, :array_4

    .line 267
    invoke-static {v1, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, v3, [F

    .line 268
    fill-array-data v4, :array_5

    .line 269
    invoke-static {v0, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 271
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutBackground:Landroid/widget/FrameLayout;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v1, v5, v2

    aput-object v0, v5, v3

    .line 272
    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 273
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 274
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mFadeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    new-instance v1, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 300
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

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

    const/4 v0, 0x0

    .line 369
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    .line 370
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    .line 371
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsVideoPortraitBarOn:Z

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_normal_camera_item_long_click"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_ai_group_photo_camera_id"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateWideCameraAlpha(FZ)V
    .locals 6

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    new-array p2, p2, [F

    aput v2, p2, v3

    aput p1, p2, v1

    const-string v4, "alpha"

    .line 382
    invoke-static {v0, v4, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v4, 0x12c

    .line 383
    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 384
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 386
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 387
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 389
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    cmpl-float p1, p1, v2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 391
    :goto_1
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    :cond_3
    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 397
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 398
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 403
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

    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 404
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSupportAutoWideChange:Z

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 406
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 407
    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 410
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    return-void
.end method
