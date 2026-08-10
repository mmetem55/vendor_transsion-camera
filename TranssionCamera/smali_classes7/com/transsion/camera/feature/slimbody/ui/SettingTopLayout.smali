.class public Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;
.super Landroid/widget/LinearLayout;
.source "SettingTopLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;,
        Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;,
        Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;,
        Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;
    }
.end annotation


# static fields
.field public static final CLEAR_SELECTED:I = 0x0

.field private static final DURATION:I = 0x12c

.field public static final SELECTED_FB_BAR:I = 0x1

.field public static final SELECTED_SB_BAR:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private alphaAnimator:Landroid/animation/ObjectAnimator;

.field private mContractBar:Landroid/view/View;

.field private mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mFaceBeautyBar:Landroid/view/View;

.field private final mFadeInInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsNeedAnimation:Z

.field private mListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

.field private mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

.field private mSeekBarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

.field private mSeekBarStatusListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;

.field private mSlimBodyBar:Landroid/view/View;

.field private mSwitchContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingTopLayout"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 282
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 42
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFadeInInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 286
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3e800000    # 0.25f

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 42
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, p2, v0, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFadeInInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    return-object p0
.end method

.method private hideAnimate(Landroid/view/View;)V
    .locals 3

    .line 243
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mIsNeedAnimation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 244
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->alphaAnimator:Landroid/animation/ObjectAnimator;

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->alphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->alphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->alphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 255
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 256
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isSlimbodyClosed()Z
    .locals 4

    .line 108
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getCloseDefaultSB()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "2"

    .line 118
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_slimbody_latested_featureid"

    .line 119
    invoke-virtual {p0, v3, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    move v1, p0

    :cond_2
    :goto_1
    return v1
.end method

.method private setSlimBodyIconState()V
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->isSlimbodyClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method private setTopBarTouchEvent()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFaceBeautyBar:Landroid/view/View;

    invoke-static {p0, v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private showAnimate(Landroid/view/View;)V
    .locals 3

    .line 262
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mIsNeedAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 264
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 265
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->alphaAnimator:Landroid/animation/ObjectAnimator;

    .line 266
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFadeInInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->alphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->alphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$2;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->alphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 277
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getContractBar()Landroid/view/View;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContractBar:Landroid/view/View;

    return-object p0
.end method

.method public getSeekBar()Landroid/view/View;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    return-object p0
.end method

.method public getSwitchContainer()Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSwitchContainer:Landroid/view/View;

    return-object p0
.end method

.method public hideContractView()V
    .locals 1

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContractBar:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 334
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isIconSelected(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public notifyProgress(II)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->updateSeekBarData(II)V

    :cond_0
    return-void
.end method

.method public notifyState(IZZ)V
    .locals 3

    .line 188
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyState], state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , needShowSwitchContainer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iput-boolean p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mIsNeedAnimation:Z

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    const/4 p2, 0x3

    const/16 v1, 0x8

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBarStatusListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;

    if-eqz p1, :cond_1

    .line 234
    invoke-interface {p1, p3}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;->onSeekBarVisible(Z)V

    .line 237
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    if-eqz p1, :cond_4

    .line 218
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBarStatusListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;

    if-eqz p1, :cond_4

    .line 220
    invoke-interface {p1, p3}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;->onSeekBarVisible(Z)V

    .line 223
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSwitchContainer:Landroid/view/View;

    if-eqz p0, :cond_a

    .line 224
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 205
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    if-eqz p1, :cond_6

    .line 206
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->showAnimate(Landroid/view/View;)V

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBarStatusListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;

    if-eqz p1, :cond_6

    .line 208
    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;->onSeekBarVisible(Z)V

    .line 211
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 212
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->showAnimate(Landroid/view/View;)V

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 192
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    .line 194
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->hideAnimate(Landroid/view/View;)V

    .line 196
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBarStatusListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;

    if-eqz p1, :cond_9

    .line 197
    invoke-interface {p1, p3}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;->onSeekBarVisible(Z)V

    .line 200
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 201
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->showAnimate(Landroid/view/View;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public notifySwitchBarSelected(I)V
    .locals 4

    .line 136
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifySwitchBarSelected], state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "key_slimbody_facebeauty_switch"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 152
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->isSlimbodyClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 155
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p0, :cond_4

    .line 157
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v2, "0"

    .line 156
    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->setSlimBodyIconState()V

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p0, :cond_4

    .line 147
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v2, "1"

    .line 146
    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;->barOnClick(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 291
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 292
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->face_beauty_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFaceBeautyBar:Landroid/view/View;

    .line 293
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->slimbody_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    .line 294
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->cw_btn_slimbody_south_asia:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->cw_btn_slimbody_universal:I

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 296
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->contrast:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContractBar:Landroid/view/View;

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContractBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->setTopBarTouchEvent()V

    .line 301
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->switch_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSwitchContainer:Landroid/view/View;

    .line 302
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    .line 303
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$3;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->setOnSeekBarChangeListener(Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    if-eqz p0, :cond_2

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->contrast:I

    if-ne v0, p2, :cond_2

    const/4 p2, 0x0

    .line 57
    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;->closeContrast(Z)V

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    if-eqz p0, :cond_2

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->contrast:I

    if-ne v0, p2, :cond_2

    .line 50
    invoke-interface {p0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;->openContrast()V

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    :goto_0
    return v1
.end method

.method public resetToInitState()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 316
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBarStatusListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;

    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;->onSeekBarVisible(Z)V

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSwitchContainer:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 322
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    .line 182
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    .line 183
    iput-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    .line 184
    iput-object p4, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBarStatusListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;

    return-void
.end method

.method public showContractView()V
    .locals 1

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContractBar:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
