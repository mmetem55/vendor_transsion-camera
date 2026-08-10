.class public Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;
.super Lcom/transsion/camera/app/ui/mode/video/VideoUI;
.source "TimeLapseVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$VideoProgressListener;
    }
.end annotation


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDownAnimator:Landroid/animation/AnimatorSet;

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

.field private final mShutterPanel:Landroid/view/View;

.field private final mSingleRateMode:Z

.field private mTimeLapseRate:I

.field private mTotalDuration:J

.field private final mUpAnimator:Landroid/animation/AnimatorSet;

.field private final mVideoProgressListener:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$VideoProgressListener;


# direct methods
.method public static synthetic $r8$lambda$Uc82m-fUc055Gg7S9FKRujO84SM(Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->lambda$updateLayout$0(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$VideoProgressListener;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    const/4 p3, 0x0

    .line 29
    iput p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mTimeLapseRate:I

    .line 33
    new-instance p3, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-wide/16 p3, 0x0

    .line 35
    iput-wide p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mTotalDuration:J

    .line 40
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    .line 41
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    const p3, 0x7f0c018b

    .line 53
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090429

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    const p2, 0x7f09042c

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050073

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->initAnimator()V

    .line 59
    :cond_0
    iput-object p5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mVideoProgressListener:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$VideoProgressListener;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mSingleRateMode:Z

    return-void
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 8

    long-to-int v0, p1

    .line 277
    div-int/lit16 v0, v0, 0x3e8

    const-wide/16 v1, 0x3e8

    .line 278
    rem-long/2addr p1, v1

    long-to-int p1, p1

    .line 279
    rem-int/lit8 p2, v0, 0x3c

    .line 280
    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 281
    div-int/lit16 v0, v0, 0xe10

    .line 283
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    div-int/lit8 p1, p1, 0x64

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const-string p1, "%02d:%02d:%02d.%1d"

    .line 283
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 285
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mSingleRateMode:Z

    if-eqz p0, :cond_0

    new-array p0, v4, [Ljava/lang/Object;

    .line 286
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v7

    const-string p1, "%02d:%02d:%02d"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getRecordResultDuring(J)Ljava/lang/String;
    .locals 2

    .line 242
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mTimeLapseRate:I

    if-eqz v0, :cond_0

    int-to-long v0, v0

    .line 243
    div-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->formatTime(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-wide/32 v0, 0x927c0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const/16 v0, 0xf

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x124f80

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    const/16 v0, 0x1e

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x249f00

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    const/16 v0, 0x3c

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0x493e00

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    const/16 v0, 0x78

    goto :goto_0

    :cond_4
    const/16 v0, 0x12c

    :goto_0
    int-to-long v0, v0

    .line 257
    div-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mSingleRateMode:Z

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    .line 259
    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method private initAnimator()V
    .locals 10

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 66
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x15e

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3e800000    # 0.25f

    const v8, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v8, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    invoke-static {v2, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v8, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_2
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$updateLayout$0(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "padding"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    const-string p1, "height"

    .line 122
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const-string p1, "bottomMargin"

    .line 123
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hideInfo()V
    .locals 1

    .line 272
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected onHideRecordingUI()V
    .locals 0

    .line 176
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onHideRecordingUI()V

    .line 177
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->stopProgressView()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 141
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onScreenFormChanged(IZ)V

    .line 142
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->updateLayout(Z)V

    return-void
.end method

.method protected onShowRecordingUI()V
    .locals 4

    .line 162
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onShowRecordingUI()V

    .line 164
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mSingleRateMode:Z

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->getRecordResultDuring(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "00:00:00.0/00:00:00.0"

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    if-eqz v0, :cond_1

    .line 169
    sget-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProgressView.start()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->start()V

    :cond_1
    return-void
.end method

.method public onShutterDown()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onShutterUp()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onTimeLapseWheelHide()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mSingleRateMode:Z

    if-eqz p0, :cond_0

    .line 310
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onTimeLapseWheelShow()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mSingleRateMode:Z

    if-eqz p0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .locals 0

    .line 234
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onUpdateRecordingUI(Z)V

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->pause(Z)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProgressView.reset()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->reset()V

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected ringScreenLightUpdateUI()V
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->ringScreenLightUpdateUI()V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    if-eqz v0, :cond_0

    .line 195
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->updateLowLight(Z)V

    :cond_0
    return-void
.end method

.method public setTimeLapseDuration(J)V
    .locals 0

    .line 229
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mTotalDuration:J

    return-void
.end method

.method public setTimeLapseRate(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mTimeLapseRate:I

    return-void
.end method

.method public showFileTooShortInfo()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f1001cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showTime(JZ)V
    .locals 4

    .line 147
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const-wide/16 v0, 0x1f4

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    sub-long/2addr p1, v0

    .line 150
    :cond_0
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mTotalDuration:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    iget p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mTimeLapseRate:I

    if-eqz p3, :cond_1

    .line 151
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mVideoProgressListener:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$VideoProgressListener;

    invoke-interface {p3}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$VideoProgressListener;->onProgressEnd()V

    .line 153
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->formatTime(J)Ljava/lang/String;

    move-result-object p3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->getRecordResultDuring(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 156
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public stopProgressView()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProgressView.stop()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->stop()V

    :cond_0
    return-void
.end method

.method public unInitVideoUI()V
    .locals 2

    .line 201
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->unInitVideoUI()V

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method

.method public updateLayout(Z)V
    .locals 12

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 83
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    .line 84
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 86
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x51

    .line 87
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-gez v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 95
    :cond_1
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v6

    sub-int/2addr v0, v6

    .line 100
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v6

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v3

    move v0, v5

    .line 106
    :goto_0
    iget-object v7, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v7, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v7

    const/4 v8, 0x1

    if-ltz v7, :cond_4

    move v9, v8

    goto :goto_1

    :cond_4
    move v9, v5

    .line 108
    :goto_1
    iget-object v10, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    new-array v10, p1, [I

    if-eqz v9, :cond_5

    .line 109
    iget-object v11, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    goto :goto_2

    .line 110
    :cond_5
    iget-object v11, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    :goto_2
    aput v11, v10, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    aput v7, v10, v8

    const-string v7, "padding"

    .line 109
    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    new-array v10, p1, [I

    aput v2, v10, v5

    aput v0, v10, v8

    const-string v0, "height"

    .line 111
    invoke-static {v0, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v2, p1, [I

    aput v3, v2, v5

    aput v6, v2, v8

    const-string v3, "bottomMargin"

    .line 112
    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v5

    aput-object v2, v3, v8

    aput-object v7, v3, p1

    .line 113
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 114
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v9, v1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;ZLandroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_6
    if-eqz v9, :cond_7

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p1, v5, v5, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 131
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p1, v5, v2, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 133
    :goto_3
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 134
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    return-void
.end method

.method protected updateTimeInterval()J
    .locals 2

    .line 182
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getUIState()Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 183
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateTimeInterval()J

    move-result-wide v0

    return-wide v0

    .line 185
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->mSingleRateMode:Z

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x3e8

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x64

    return-wide v0
.end method
