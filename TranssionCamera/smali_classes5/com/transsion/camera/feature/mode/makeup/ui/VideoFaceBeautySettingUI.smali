.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "VideoFaceBeautySettingUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$MySettingChangeListener;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0xc8

.field private static final PRECISION:F = 0.01f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private final mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;

.field private final mBottomUIDefaultHeight:I

.field private final mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

.field private mCurrentUIType:I

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mLowLight:Z

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mNeedShow:Z

.field private mNeedUpdateOptionValue:Z

.field private mRecording:Z

.field private final mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;

.field private final mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarStatusListener;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private final mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private mSettingDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;"
        }
    .end annotation
.end field

.field private final mSinkTranslateDistance:I

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mTranslateDistance:F

.field private final mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

.field private mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

.field private mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mZoomWheelShowing:Z


# direct methods
.method public static synthetic $r8$lambda$1E5fUFoZDO3ni-0BNGw0go2fjBE(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->lambda$new$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$B28czqtmFic5gFYsQINUnPr_Asg(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->resetUI()V

    return-void
.end method

.method public static synthetic $r8$lambda$E8o3yoKM8tIRGVf-VVxusJtas_Y(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->lambda$ringScreenLightUpdateUI$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Px4ezHXHyuPOyg-Oxh_ogVAySAA(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QEAlNyrBQTCpnjSIf13AxQ-TyI8(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->lambda$new$1(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wKzWPg9VYnnw6y20dZtVzZeczD8(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->notifyConflictUI(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 7

    .line 258
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 68
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mNeedUpdateOptionValue:Z

    .line 74
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 88
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 100
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;

    .line 105
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;

    .line 115
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

    .line 148
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarStatusListener;

    .line 305
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 459
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 479
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 259
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "constructor"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    sget v1, Lcom/transsion/camera/feature/makeup/R$dimen;->bottom_ui_translate_anim_distance:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateDistance:F

    .line 262
    sget v2, Lcom/transsion/camera/feature/makeup/R$dimen;->sink_shutter_translate_distance:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSinkTranslateDistance:I

    .line 263
    sget v2, Lcom/transsion/camera/feature/makeup/R$dimen;->mu_rv_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mBottomUIDefaultHeight:I

    .line 264
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 265
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    .line 266
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 267
    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v6, 0x0

    aput v6, v2, v3

    aput v1, v2, v0

    .line 268
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 269
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;FF)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->isFloatEqual(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->computeFilterRootVisibility()V

    return-void
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mNeedUpdateOptionValue:Z

    return p0
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private computeFilterRootVisibility()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    if-eqz v0, :cond_1

    .line 190
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAnimShow:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    .line 191
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private faceBeautyOn(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "aiv2"

    .line 174
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "custom"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private hideEntryRootView()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 384
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mNeedShow:Z

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideSettingUI()V
    .locals 2

    .line 283
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideSettingUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 287
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->cancelAnimation()V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateDistance:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 293
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    .line 294
    invoke-interface {p0, v0, v0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_4
    return-void
.end method

.method private isFloatEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 197
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0(I)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 102
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->settingUIAnimShowOrHide(I)Z

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Object;I)V
    .locals 0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    .line 461
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->resetUI()V

    goto :goto_0

    .line 463
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 464
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Z)V
    .locals 1

    .line 480
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mLowLight:Z

    if-eq v0, p1, :cond_0

    .line 481
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mLowLight:Z

    .line 482
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->ringScreenLightUpdateUI()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$3()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    if-eqz v0, :cond_0

    .line 490
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->updateLowLight(Z)V

    :cond_0
    return-void
.end method

.method private notifyConflictUI(Z)V
    .locals 1

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "value_facebeauty_ui_on"

    goto :goto_0

    :cond_0
    const-string p1, "value_facebeauty_ui_off"

    .line 301
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private registerKeyToMonitor(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 527
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 528
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private resetUI()V
    .locals 1

    .line 470
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 471
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showEntryRootView()V

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    :cond_0
    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 488
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private settingUIAnimShowOrHide(I)Z
    .locals 7

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->updateFeatureRv(I)V

    .line 244
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mCurrentUIType:I

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_2

    goto :goto_0

    .line 252
    :cond_2
    :goto_1
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mCurrentUIType:I

    .line 254
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showOrHide(Z)V

    return v2

    :cond_3
    :goto_2
    return v1
.end method

.method private showEntryRootView()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 429
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mNeedShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 430
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mNeedShow:Z

    .line 431
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showOrHide(Z)V
    .locals 7

    if-eqz p1, :cond_4

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 217
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAnimShow:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v1, v0

    .line 219
    :goto_1
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput p1, v6, v3

    aput v1, v6, v2

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result p1

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    goto :goto_2

    .line 222
    :cond_2
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateDistance:F

    neg-float v0, v0

    .line 223
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v5, [F

    aput p1, v4, v3

    aput v0, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 224
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 225
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_4

    .line 226
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAnimShow:Z

    if-eqz v0, :cond_3

    .line 227
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSinkTranslateDistance:I

    invoke-interface {p1, v2, p0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto :goto_3

    .line 230
    :cond_3
    invoke-interface {p1, v3, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    invoke-virtual {p0, v3, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    :cond_4
    :goto_3
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 532
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 533
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 3

    .line 324
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 325
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->video_facebeauty_main_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    .line 326
    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->top_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->facebeauty_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    .line 328
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 329
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 331
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p2

    .line 332
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 333
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarStatusListener;

    invoke-virtual {p1, p3, v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->setListener(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarStatusListener;)V

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/makeup/R$id;->bottom_ui:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    .line 337
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 338
    iget p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mBottomUIDefaultHeight:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 339
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 342
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 343
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mLowLight:Z

    .line 344
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->ringScreenLightUpdateUI()V

    .line 345
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[createEntryView] , mLowLight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mLowLight:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->addAnimatorListener()V

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public doFaceBeautyValueChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "off"

    .line 142
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "video_facebeauty_off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "video_facebeauty_on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

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

    const-string p0, "key_mu_face_beauty"

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 448
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_mu_face_beauty"

    .line 449
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_video_facebeauty"

    .line 450
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public hideEntryView()V
    .locals 2

    .line 408
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 409
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 411
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideEntryRootView()V

    return-void
.end method

.method public needShowOptionBar()Z
    .locals 1

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->currentState()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/16 v2, 0x9

    if-eq p1, v2, :cond_6

    const/16 v2, 0x13

    if-eq p1, v2, :cond_4

    const/16 v2, 0x1f

    if-eq p1, v2, :cond_3

    const/16 v2, 0x36

    if-eq p1, v2, :cond_7

    const/16 v2, 0x37

    if-eq p1, v2, :cond_6

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 600
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p1, :cond_0

    .line 601
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideDialog()V

    .line 603
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    .line 604
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->setEnable(Z)V

    .line 605
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mNeedUpdateOptionValue:Z

    goto :goto_0

    .line 586
    :pswitch_1
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mZoomWheelShowing:Z

    if-eqz p1, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 588
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showEntryRootView()V

    .line 589
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p1, :cond_1

    .line 590
    invoke-virtual {p1, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    .line 593
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mZoomWheelShowing:Z

    goto :goto_0

    .line 581
    :pswitch_2
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mZoomWheelShowing:Z

    .line 582
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 583
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 572
    :pswitch_3
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    .line 573
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->setEnable(Z)V

    .line 574
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 575
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showEntryRootView()V

    .line 576
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p0, :cond_8

    .line 577
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    goto :goto_0

    .line 563
    :pswitch_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p1, :cond_2

    .line 564
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideDialog()V

    .line 566
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    .line 567
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->setEnable(Z)V

    .line 568
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 569
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 559
    :cond_3
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->setEnable(Z)V

    .line 560
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showEntryRootView()V

    goto :goto_0

    .line 621
    :cond_4
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mNeedUpdateOptionValue:Z

    goto :goto_0

    .line 596
    :cond_5
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mNeedUpdateOptionValue:Z

    .line 597
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 617
    :cond_6
    :pswitch_5
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    .line 618
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->setEnable(Z)V

    goto :goto_0

    .line 610
    :cond_7
    :pswitch_6
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mNeedUpdateOptionValue:Z

    .line 611
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->setEnable(Z)V

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz v0, :cond_2

    .line 547
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->onBackPressed()Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    .line 550
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    :cond_3
    return v1
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 156
    :goto_0
    sget-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSettingOptionToggle sourceKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isCollapse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_video_facebeauty"

    .line 157
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 158
    sput-boolean v2, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 159
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->settingUIAnimShowOrHide(I)Z

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_1

    .line 161
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingOptionToggle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", switchValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "video_facebeauty_off"

    .line 165
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->faceBeautyOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "video_facebeauty_on"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 498
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 499
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingDataList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 501
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 502
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_mu_face_beauty"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    .line 504
    :cond_1
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_video_facebeauty"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 507
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->setEnabled(Z)V

    .line 375
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    if-eqz p0, :cond_1

    .line 376
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    .line 520
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->registerKeyToMonitor(Ljava/util/List;)V

    goto :goto_0

    .line 522
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setupEntryView()V
    .locals 4

    .line 392
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 393
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[setupEntryView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    .line 395
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mZoomWheelShowing:Z

    const/4 v1, 0x1

    .line 396
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mNeedUpdateOptionValue:Z

    .line 398
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 399
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showEntryRootView()V

    .line 400
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingDataList:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->registerSettingData(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/util/List;)V

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p0, :cond_0

    .line 402
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 416
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 417
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->unregisterSettingData()V

    .line 419
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 420
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->removeAnimatorListener()V

    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    .line 422
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    .line 423
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    .line 424
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
