.class public Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;
.super Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;
.source "ExposureAnimator.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;-><init>()V

    return-void
.end method

.method private startShowAnimateImpl(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    .line 41
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "drawable is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    const/4 p0, 0x0

    .line 45
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic cancelDarkenAnimate(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->cancelDarkenAnimate(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic startDarkenAnimate(Landroid/view/View;J)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->startDarkenAnimate(Landroid/view/View;J)V

    return-void
.end method

.method public startShowAnimate(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    .line 29
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x7f090179

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->startShowAnimateImpl(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public startShowLockAnimate(Landroid/view/View;Z)V
    .locals 2

    const v0, 0x7f09017a

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    .line 51
    new-instance v1, Lcom/transsion/camera/ui/setting/exposure/LockBackground;

    invoke-direct {v1, v0}, Lcom/transsion/camera/ui/setting/exposure/LockBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;->setDrawBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;)V

    .line 52
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->startShowLockAnimate(Landroid/view/View;Z)V

    return-void
.end method
