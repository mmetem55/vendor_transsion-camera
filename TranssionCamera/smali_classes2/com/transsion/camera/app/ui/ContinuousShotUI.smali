.class public Lcom/transsion/camera/app/ui/ContinuousShotUI;
.super Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;
.source "ContinuousShotUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppearAnimator:Landroid/animation/ObjectAnimator;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 3

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 39
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ContinuousShotUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private releaseAnimator()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ContinuousShotUI;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ContinuousShotUI;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/transsion/camera/app/ui/ContinuousShotUI;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method


# virtual methods
.method protected onContinuousShotProgressHide(Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onContinuousShotProgressHide(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ContinuousShotUI;->releaseAnimator()V

    return-void
.end method

.method protected onContinuousShotProgressShow(Landroid/view/View;)V
    .locals 8

    .line 44
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onContinuousShotProgressShow(Landroid/view/View;)V

    if-nez p1, :cond_0

    .line 47
    sget-object p0, Lcom/transsion/camera/app/ui/ContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070110

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 54
    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v1, [F

    .line 55
    fill-array-data v3, :array_1

    const-string v4, "scaleX"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v1, [F

    .line 56
    fill-array-data v4, :array_2

    const-string v5, "scaleY"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v1, [F

    int-to-float v0, v0

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x0

    const/4 v7, 0x1

    aput v0, v5, v7

    const-string v0, "translationY"

    .line 57
    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v5, v6

    aput-object v3, v5, v7

    aput-object v4, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    .line 58
    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ContinuousShotUI;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ContinuousShotUI;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ContinuousShotUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ContinuousShotUI;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unInit()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->unInit()V

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ContinuousShotUI;->releaseAnimator()V

    return-void
.end method
