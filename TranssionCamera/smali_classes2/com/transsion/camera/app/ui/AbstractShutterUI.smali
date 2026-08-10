.class public abstract Lcom/transsion/camera/app/ui/AbstractShutterUI;
.super Ljava/lang/Object;
.source "AbstractShutterUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IShutterUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;
    }
.end annotation


# static fields
.field private static final sBlackSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDrawableState:I

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

.field private mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsPreviewStarted:Z

.field private mIsResumed:Z

.field private mIsVideoRecording:Z

.field private mOldValue:Z

.field private mOrientation:I

.field private mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

.field private mRecordingOrientation:I

.field private mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

.field protected final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

.field private mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

.field private mShutterType:I

.field private mShutterTypeSelftimerOff:I

.field private mShutterTypeSelftimerOn:I

.field private mSizeState:I

.field private mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

.field private mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;


# direct methods
.method public static synthetic $r8$lambda$0sdAKOHO0a0vLUrR3TlNpKNQwDs(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$UMlqZnEfeVfZOEs0tukRyU8TCe4(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->lambda$transitionToVoice$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x5

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x7

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x8

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x9

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xa

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xb

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xe

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x12

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 45
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->sBlackSupport:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 66
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    const/4 v1, -0x1

    .line 70
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    .line 71
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOff:I

    .line 72
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOn:I

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPreviewStarted:Z

    .line 86
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    .line 87
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    .line 628
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 90
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->ringScreenLightUpdateUI()V

    return-void
.end method

.method private getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .locals 4

    .line 640
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-eqz v0, :cond_0

    .line 641
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    if-ge v0, v2, :cond_1

    sget-object v3, Lcom/transsion/camera/app/ui/AbstractShutterUI;->sBlackSupport:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterTypeImpl(IZ)V

    goto :goto_0

    .line 645
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    if-lt v0, v2, :cond_1

    sget-object v3, Lcom/transsion/camera/app/ui/AbstractShutterUI;->sBlackSupport:Ljava/util/List;

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterTypeImpl(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$transitionToVoice$0()V
    .locals 3

    .line 507
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    .line 508
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 509
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 510
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 511
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x28

    .line 512
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 513
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private loadAnimatorDrawables()V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadAnimatorDrawables(Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;)V

    return-void
.end method

.method private loadAnimatorDrawables(Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;)V
    .locals 4

    if-eqz p2, :cond_13

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPreviewStarted:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->stopAllAnimations()V

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 554
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    if-eq v2, v3, :cond_3

    .line 555
    :cond_1
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    if-lez v2, :cond_2

    .line 556
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 558
    :cond_2
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 562
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    if-eq v2, v3, :cond_6

    .line 563
    :cond_4
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    if-lez v2, :cond_5

    .line 564
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 566
    :cond_5
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    .line 570
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    if-eq v2, v3, :cond_9

    .line 571
    :cond_7
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    if-lez v2, :cond_8

    .line 572
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 574
    :cond_8
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    :cond_9
    :goto_2
    if-eqz p1, :cond_a

    .line 578
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    if-eq v2, v3, :cond_c

    .line 579
    :cond_a
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    if-lez v2, :cond_b

    .line 580
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 582
    :cond_b
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    :cond_c
    :goto_3
    if-eqz p1, :cond_d

    .line 586
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    if-eq v2, v3, :cond_f

    .line 587
    :cond_d
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    if-lez v2, :cond_e

    .line 588
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 590
    :cond_e
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    :cond_f
    :goto_4
    if-eqz p1, :cond_10

    .line 594
    iget p1, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToSmileDrawableId:I

    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToSmileDrawableId:I

    if-eq p1, v2, :cond_12

    .line 595
    :cond_10
    iget p1, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToSmileDrawableId:I

    if-lez p1, :cond_11

    .line 596
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 598
    :cond_11
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

    :cond_12
    :goto_5
    return-void

    .line 547
    :cond_13
    :goto_6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAnimatorDrawables return newSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_14

    move p2, v1

    goto :goto_7

    :cond_14
    move p2, v2

    :goto_7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mShutterButtonView: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez p2, :cond_15

    goto :goto_8

    :cond_15
    move v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsPreviewStarted: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPreviewStarted:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private loadSpecToView()V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_0
    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setImageResource(I)V
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private stopAllAnimations()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 163
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->stopAnimations([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private varargs stopAnimations([Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 621
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 623
    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateImageResourceByState()V
    .locals 3

    .line 517
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    iget v0, v0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageResource(I)V

    goto :goto_0

    .line 520
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    iget v0, v0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    if-lez v0, :cond_1

    .line 521
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageResource(I)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShutterButtonView isPressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isPressed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    iget v0, v0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLayout(IZ)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 119
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 120
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0x5a

    const v1, 0x7f070064

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    const/16 p1, 0x51

    .line 138
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x13

    .line 132
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x31

    .line 128
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x15

    .line 124
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 141
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070065

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method private updateShutterTypeImpl(IZ)V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateShutterTypeImpl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    if-eq v0, p1, :cond_2

    .line 281
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 284
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 286
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p2, :cond_1

    .line 287
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 289
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    .line 290
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getUISpecFromType(I)Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    .line 291
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadAnimatorDrawables(Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;)V

    .line 292
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadSpecToView()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getShutterType()I
    .locals 0

    .line 298
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    return p0
.end method

.method public getShutterTypeSelftimerOff()I
    .locals 0

    .line 308
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOff:I

    return p0
.end method

.method public getShutterTypeSelftimerOn()I
    .locals 0

    .line 318
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOn:I

    return p0
.end method

.method protected abstract getUISpecFromType(I)Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c019c

    const/4 v1, 0x1

    .line 97
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090428

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    const/4 p2, 0x5

    if-eq p2, p1, :cond_0

    .line 100
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    :cond_0
    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    return-object p0
.end method

.method public isPressed()Z
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecordingAndOrientation(ZI)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p2, v0, :cond_0

    .line 196
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    goto :goto_0

    .line 197
    :cond_0
    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 198
    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    goto :goto_0

    .line 201
    :cond_1
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    .line 203
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    .line 204
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateOrientation(IZ)V

    return-void
.end method

.method public loadAfterPreviewStarted()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadAfterPreviewStarted."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPreviewStarted:Z

    .line 151
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadAnimatorDrawables()V

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    .line 174
    :cond_1
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateOrientation(IZ)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "mShutterButtonView clear pressed"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 222
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsResumed:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_0

    .line 611
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    return-void
.end method

.method public setShutterTypeSelftimerOff(I)V
    .locals 0

    .line 303
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOff:I

    return-void
.end method

.method public setShutterTypeSelftimerOn(I)V
    .locals 0

    .line 313
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOn:I

    return-void
.end method

.method public setupViews()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;Lcom/transsion/camera/app/ui/AbstractShutterUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setOnShutterListener(Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;)V

    .line 109
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadSpecToView()V

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->ringScreenLightUpdateUI()V

    .line 111
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    return-void
.end method

.method public transitionToIdle()V
    .locals 6

    .line 431
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 432
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transitionToIdle, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 433
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 435
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    return-void

    .line 439
    :cond_1
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsResumed:Z

    if-eqz v3, :cond_2

    .line 441
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 442
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 444
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 445
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 446
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    .line 449
    :cond_2
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 450
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v2, :cond_3

    goto :goto_1

    .line 454
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 456
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    if-ne v2, v1, :cond_4

    .line 457
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 462
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    goto :goto_1

    .line 471
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_6
    :goto_1
    return-void
.end method

.method public transitionToProcessing()V
    .locals 5

    .line 394
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 395
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transitionToProcessing, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 397
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v2, :cond_1

    goto :goto_1

    .line 401
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    .line 402
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 404
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 405
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 406
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    .line 410
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 412
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "transitionToProcessing, cancel Animation"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    :cond_3
    if-eqz v0, :cond_4

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 417
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    goto :goto_1

    .line 425
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_5
    :goto_1
    return-void
.end method

.method public transitionToRegular()V
    .locals 6

    .line 366
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 367
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transitionToRegular, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 368
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    .line 369
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v2, :cond_1

    goto :goto_1

    .line 373
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "transitionToRegular, cancel Animation"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    :cond_2
    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 380
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    goto :goto_1

    .line 388
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_4
    :goto_1
    return-void
.end method

.method public transitionToSmall()V
    .locals 5

    .line 327
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 328
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transitionToSmall, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 329
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    .line 330
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v2, :cond_1

    goto :goto_1

    .line 334
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "transitionToSmall, cancel Animation"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    :cond_2
    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 341
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    goto :goto_1

    .line 360
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_4
    :goto_1
    return-void
.end method

.method public transitionToSmile()V
    .locals 4

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionToSmile, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSizeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 482
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 483
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 484
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 486
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 489
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 490
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 491
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public transitionToVoice()V
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionToVoice, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSizeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    .line 503
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 504
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x50

    .line 505
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v3, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 506
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    .line 507
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 513
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->stopAllAnimations()V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v1, v0, :cond_0

    .line 158
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    :cond_0
    return-void
.end method

.method public updateOrientation(IZ)V
    .locals 3

    .line 180
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    if-eqz v0, :cond_0

    .line 181
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const/4 v1, 0x5

    .line 185
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    .line 186
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    goto :goto_1

    .line 188
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    :goto_1
    return-void
.end method

.method public updateShutterType(IZ)V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateShutterType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->sBlackSupport:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit16 p1, p1, 0x2710

    .line 275
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterTypeImpl(IZ)V

    return-void
.end method
