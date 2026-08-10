.class public Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static mCurrentRefreshRate:F = 60.0f


# instance fields
.field public z1OoOdo:Landroid/view/View;

.field public z1OoOfor:Z

.field public z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

.field public z1OoOint:F


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v4, 0x2

    const/high16 v5, -0x40800000    # -1.0f

    if-eq p2, v4, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_2

    :cond_0
    iput v5, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    goto :goto_2

    :cond_3
    iput v3, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    :goto_1
    iput-boolean v2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    :goto_2
    const/high16 p2, 0x43480000    # 200.0f

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    invoke-direct {v0, p1, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;-><init>(Ljava/lang/Object;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOif;)V

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    invoke-direct {v0, p1, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;-><init>(Ljava/lang/Object;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOif;)V

    :goto_3
    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    new-instance p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    invoke-direct {p1, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;-><init>(F)V

    invoke-virtual {p1, p2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOif(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    move-result-object p1

    invoke-virtual {p1, v3}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOdo(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->setSpring(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v4, 0x2

    const/high16 v5, -0x40800000    # -1.0f

    if-eq p2, v4, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_2

    :cond_0
    iput v5, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    goto :goto_2

    :cond_3
    iput v3, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    :goto_1
    iput-boolean v2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    :goto_2
    const/high16 p2, 0x43480000    # 200.0f

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    invoke-direct {v0, p1, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;-><init>(Ljava/lang/Object;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOif;)V

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    invoke-direct {v0, p1, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;-><init>(Ljava/lang/Object;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOif;)V

    :goto_3
    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    invoke-direct {v0, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;-><init>(F)V

    invoke-virtual {v0, p2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOif(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    move-result-object p2

    invoke-virtual {p2, v3}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOdo(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->setSpring(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    new-instance p2, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;

    invoke-direct {p2, p0, p3}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;-><init>(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    invoke-virtual {p1, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    return-void
.end method


# virtual methods
.method public cancelBounceAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->cancel()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAbsorb(I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on absorb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BounceEdgeEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view tanslation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_3

    const v2, -0x800001

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    if-nez v0, :cond_4

    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    .line 3
    :goto_3
    sput v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->mCurrentRefreshRate:F

    const/16 v0, 0xfa0

    if-gt p1, v0, :cond_5

    const/high16 v0, 0x42200000    # 40.0f

    goto :goto_4

    :cond_5
    const/16 v0, 0x2710

    if-le p1, v0, :cond_6

    const/high16 v0, 0x43480000    # 200.0f

    goto :goto_4

    :cond_6
    const/high16 v0, 0x42c80000    # 100.0f

    :goto_4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    iget-object v3, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v3, :cond_7

    new-instance v4, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;-><init>(F)V

    invoke-virtual {v4, v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOif(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    move-result-object v4

    invoke-virtual {v4, v2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOdo(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->setSpring(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDampingParameters stiffness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " damping="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    int-to-float p1, p1

    iget v1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setStartVelocity(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->start()V

    :cond_8
    return-void
.end method

.method public onPull(F)V
    .locals 0

    const-string p0, "BounceEdgeEffect"

    const-string p1, "onPull"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPull(FF)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPull2\uff1a"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BounceEdgeEffect"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRelease()V
    .locals 1

    const-string p0, "BounceEdgeEffect"

    const-string v0, "onRelease"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
