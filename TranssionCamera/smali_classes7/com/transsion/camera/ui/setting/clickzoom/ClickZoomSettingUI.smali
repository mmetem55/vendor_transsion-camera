.class public Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "ClickZoomSettingUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "key_camera_click_zoom"

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private clickZoomRoot:Landroid/view/ViewGroup;

.field private mChangeByVolumeKey:Z

.field private mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsConflictUIOn:Z

.field private final mMarginBottom:I

.field private final mOnZoomStateChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;

.field private mOrientation:I

.field private mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

.field private mScaling:Z

.field private mSelftimerCapturing:Z

.field private final mStateValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSupported:Z

.field private final mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;


# direct methods
.method public static synthetic $r8$lambda$8sIHmp3MK5PvuVBZ64W3JaYO4wc(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->lambda$updateLayoutParams$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NipJV5ThkYGS7zDUyWE_s8ezxzY(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->onZoomStateChangedFromClick(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zvW0a_1k-Wy8h75wbfJayiy6VPc(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->lambda$updateUIStateBySettingValue$1(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 68
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ClickZoomSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 84
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    .line 92
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mOrientation:I

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mScaling:Z

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsConflictUIOn:Z

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mChangeByVolumeKey:Z

    .line 82
    new-instance v2, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    .line 83
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStateValueMap:Ljava/util/Map;

    .line 88
    new-instance v3, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mOnZoomStateChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;

    .line 175
    new-instance v3, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    const v3, 0x7f0700f5

    .line 93
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mMarginBottom:I

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "state_zoom_in"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "state_zoom_out"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeZoomStateByVolumeClick(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;II)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateLayoutParams(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Ljava/lang/String;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIStateBySettingValue(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 67
    sget-object v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$602(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsConflictUIOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    return-void
.end method

.method private changeSetting(I)V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStateValueMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 513
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private changeZoomStateByOrientation(I)V
    .locals 2

    .line 457
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mScaling:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 464
    :cond_0
    rem-int/lit16 p1, p1, 0xb4

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 470
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    .line 471
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    :goto_0
    return-void

    .line 458
    :cond_2
    :goto_1
    sget-object p1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeZoomStateByOrientation return. mSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mScaling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSelftimerCapturing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private changeZoomStateByScaleFactor(F)V
    .locals 2

    .line 476
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    const/4 p1, 0x0

    .line 482
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    .line 483
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    goto :goto_0

    :cond_1
    const v0, 0x3f866666    # 1.05f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 485
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    .line 486
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    :cond_2
    :goto_0
    return-void

    .line 477
    :cond_3
    :goto_1
    sget-object p1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeZoomStateByScaleFactor return. mSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSelftimerCapturing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private changeZoomStateByVolumeClick(Z)V
    .locals 2

    .line 490
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mChangeByVolumeKey:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 497
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    .line 498
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 500
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    .line 501
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    :goto_0
    return-void

    .line 491
    :cond_2
    :goto_1
    sget-object p1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeZoomStateByVolumeClick return. mSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSelftimerCapturing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChangeByVolumeKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mChangeByVolumeKey:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$updateLayoutParams$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "topMargin"

    .line 390
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "bottomMargin"

    .line 391
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    .line 390
    invoke-virtual {p0, v1, v0, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 392
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateUIStateBySettingValue$1(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 527
    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 528
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIState(IZ)V

    :cond_0
    return-void
.end method

.method private onZoomStateChangedFromClick(I)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeSetting(I)V

    return-void
.end method

.method private showEntryViewIfNeed()V
    .locals 3

    .line 345
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsConflictUIOn:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    .line 346
    :cond_2
    :goto_0
    sget-object v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEntryViewIfNeed return. mSelftimerCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsConflictUIOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsConflictUIOn:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateLayoutParams(II)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    move p1, v0

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 417
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f7

    .line 418
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0700f6

    .line 419
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v5, 0x7f0700f4

    .line 420
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 421
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 422
    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v6, 0x1

    if-ne p2, v6, :cond_5

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_4

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_3

    const/16 p0, 0x10e

    if-eq p1, p0, :cond_2

    .line 440
    invoke-virtual {v5, v3, v0, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 p0, 0x53

    .line 441
    iput p0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {v5, v2, v3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 p0, 0x33

    .line 435
    iput p0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 430
    :cond_3
    invoke-virtual {v5, v0, v4, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 p0, 0x35

    .line 431
    iput p0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 426
    :cond_4
    invoke-virtual {v5, v0, v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 p0, 0x55

    .line 427
    iput p0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 445
    :cond_5
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p2

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 446
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    iget v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mMarginBottom:I

    add-int/2addr v2, v3

    .line 445
    invoke-virtual {v5, v0, p2, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 p2, 0x51

    .line 447
    iput p2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 448
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz p0, :cond_6

    .line 450
    invoke-virtual {p0, p1, v6}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 453
    :cond_6
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateLayoutParams(IIZ)V
    .locals 8

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 365
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 366
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v3

    .line 367
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 368
    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v5

    iget v6, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mMarginBottom:I

    add-int/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    const/4 v7, 0x1

    if-ne p2, v7, :cond_2

    new-array v1, v7, [F

    const/4 v2, 0x0

    aput v2, v1, p3

    const-string v2, "alpha"

    .line 372
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v7, [F

    aput v6, v1, p3

    .line 373
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p3, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 374
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$2;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;II)V

    invoke-virtual {p3, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x2

    new-array p2, p1, [I

    aput v4, p2, p3

    aput v5, p2, v7

    const-string v4, "bottomMargin"

    .line 384
    invoke-static {v4, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array v4, p1, [I

    aput v2, v4, p3

    aput v3, v4, v7

    const-string v2, "topMargin"

    .line 385
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, p1, p3

    aput-object v2, p1, v7

    .line 386
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    .line 387
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 388
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 389
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, v1, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$$ExternalSyntheticLambda0;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 396
    :cond_3
    invoke-virtual {v1, p3, v3, p3, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 p2, 0x51

    .line 397
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 398
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz p0, :cond_5

    .line 400
    invoke-virtual {p0, p1, v7}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    goto :goto_0

    .line 404
    :cond_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 405
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateLayoutParams(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateUIState(IZ)V
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz p0, :cond_0

    .line 520
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->setState(IZ)V

    .line 521
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickZoomValue(I)V

    :cond_0
    return-void
.end method

.method private updateUIStateBySettingValue(Ljava/lang/String;Z)V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStateValueMap:Ljava/util/Map;

    new-instance v1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 107
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    const v0, 0x7f09023e

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->clickZoomRoot:Landroid/view/ViewGroup;

    const v0, 0x7f0c0052

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900ec

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mOnZoomStateChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;

    invoke-virtual {p2, p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->setOnStateChangeListener(Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;)V

    return-object p1
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->clickZoomRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_camera_click_zoom"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 1

    .line 337
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 338
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 340
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 4

    .line 225
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->notifyCameraOperateAction(I)V

    .line 226
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-nez v0, :cond_0

    .line 227
    sget-object p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "notifyCameraOperateAction return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "click_zoom_ui_state"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    const/4 v3, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb

    if-eq p1, v0, :cond_7

    const/16 v0, 0xc

    if-eq p1, v0, :cond_6

    const/16 v0, 0x11

    if-eq p1, v0, :cond_5

    const/16 v0, 0x12

    if-eq p1, v0, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x23

    if-eq p1, v0, :cond_2

    const/16 v0, 0x24

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x55

    if-eq p1, v0, :cond_5

    const/16 v0, 0x56

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    goto :goto_0

    .line 270
    :cond_3
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    .line 271
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mChangeByVolumeKey:Z

    goto :goto_0

    .line 242
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mChangeByVolumeKey:Z

    goto :goto_0

    .line 237
    :cond_5
    :pswitch_0
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mChangeByVolumeKey:Z

    goto :goto_0

    .line 255
    :cond_6
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    .line 256
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_8

    .line 258
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_click_zoom_ui_conflict_off"

    .line 259
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    .line 247
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_8

    .line 249
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_click_zoom_ui_conflict_on"

    .line 250
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onModePanelDistanceChanged(FZ)V
    .locals 0

    .line 278
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onModePanelDistanceChanged(FZ)V

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz p0, :cond_0

    .line 281
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 287
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 289
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 290
    iget v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mOrientation:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 294
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz v2, :cond_1

    .line 295
    invoke-virtual {v2, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 297
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeZoomStateByOrientation(I)V

    .line 298
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateLayoutParams(IIZ)V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 320
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 321
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->changeZoomStateByScaleFactor(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mScaling:Z

    .line 315
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mScaling:Z

    .line 332
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .locals 1

    .line 303
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 305
    iget v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mOrientation:I

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateLayoutParams(IIZ)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 157
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 159
    sget-object p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 167
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;->registerZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .locals 4

    .line 121
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 123
    iget v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mOrientation:I

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateLayoutParams(IIZ)V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mClickZoomView:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;

    if-eqz v0, :cond_2

    .line 125
    iget v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mOrientation:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_2

    .line 130
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateUIStateBySettingValue(Ljava/lang/String;Z)V

    .line 132
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSupported:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->showEntryViewIfNeed()V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    :cond_2
    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 212
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mScaling:Z

    .line 214
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mSelftimerCapturing:Z

    .line 215
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mIsConflictUIOn:Z

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;->unregisterZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
