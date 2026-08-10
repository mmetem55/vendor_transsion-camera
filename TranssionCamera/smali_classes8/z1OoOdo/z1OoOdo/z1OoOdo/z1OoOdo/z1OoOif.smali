.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;
.super Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;
    }
.end annotation


# direct methods
.method public constructor <init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V
    .locals 0

    invoke-direct {p0, p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    return-void
.end method


# virtual methods
.method public z1OoOdo(FFZ)F
    .locals 2

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "viewPortLength:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BounceEffect"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    if-nez p3, :cond_1

    const p0, 0x3f4ccccd    # 0.8f

    return p0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr p1, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(F)F

    move-result p0

    return p0
.end method

.method public z1OoOdo(Landroid/view/VelocityTracker;)F
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x3e8

    const/high16 v1, 0x44fa0000    # 2000.0f

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_0
    return p0
.end method

.method public z1OoOdo(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public z1OoOdo()V
    .locals 3

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->cancel()V

    const-string p0, "BounceEffect"

    const-string v0, "cancel animator"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    invoke-direct {v1, v0, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;-><init>(Ljava/lang/Object;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOif;)V

    iput-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    new-instance p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;-><init>(F)V

    const/high16 v0, 0x43c80000    # 400.0f

    invoke-virtual {p0, v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOif(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    move-result-object p0

    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {p0, v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOdo(F)Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->setSpring(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :goto_0
    return-void
.end method

.method public z1OoOdo(Landroid/view/View;F)V
    .locals 0

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthrow:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;->onOverScrollUpdated(F)V

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public z1OoOif()Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;
    .locals 1

    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;

    invoke-direct {v0, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;)V

    return-object v0
.end method

.method public z1OoOif(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_1

    const v0, -0x800001

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view tanslationX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BounceEffect"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    const/4 p0, 0x0

    return p0
.end method
