.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;
.implements Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;
.implements Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "z1OoOdo"
.end annotation


# instance fields
.field public final z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

.field public final synthetic z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;


# direct methods
.method public constructor <init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V
    .locals 0

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif()Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    move-result-object p1

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    return-void
.end method


# virtual methods
.method public z1OoOdo()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthrow:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {p2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Landroid/view/View;)F

    move-result p0

    invoke-interface {p1, p0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;->onOverScrollUpdated(F)V

    :cond_0
    return-void
.end method

.method public z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;ZFF)V
    .locals 0

    const-string p1, "BounceEffect"

    const-string p2, "onAnimationEnd"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget p2, p2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthis:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOtry:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;

    iget-object p2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;

    if-ne p1, p2, :cond_1

    iget-boolean p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOshort:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;

    invoke-virtual {p0, p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOshort:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)V
    .locals 2

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo()V

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {p1, p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addEndListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {p1, p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    iput v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthis:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {v0, p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v0, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iget-object v1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfloat:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Landroid/view/VelocityTracker;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setStartVelocity(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->start()V

    :cond_1
    return-void
.end method

.method public z1OoOdo(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOdo:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-object v4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v4, v4, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;

    invoke-virtual {v2, v0, p1, v4}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo(Landroid/view/View;Landroid/view/MotionEvent;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)Z

    iget-object v2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-static {v2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iget-object v2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v2, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfloat:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-boolean v2, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget v1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo:F

    iget p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOif:F

    add-float/2addr v1, p1

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iput-boolean v3, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOshort:Z

    iget-object p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->cancel()V

    :cond_2
    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v2, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget-boolean v2, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOfor:Z

    iget-object v4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-boolean v4, v4, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    const-string v5, "BounceEffect"

    if-ne v2, v4, :cond_3

    iget-object p0, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOint:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;

    invoke-virtual {p1, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)V

    const-string p0, "touch move bounceback handled"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out bounceback:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "orig:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v2, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget v2, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOif:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v2, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget-boolean v4, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOfor:Z

    if-eqz v4, :cond_4

    iget-object v5, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-boolean v5, v5, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    if-nez v5, :cond_4

    iget v5, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOif:F

    cmpg-float v5, v1, v5

    if-lez v5, :cond_5

    :cond_4
    if-nez v4, :cond_6

    iget-object v4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-boolean v4, v4, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    if-eqz v4, :cond_6

    iget v2, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOif:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_6

    :cond_5
    iget-object v1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;

    invoke-virtual {p1, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)V

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget v1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOif:F

    :cond_6
    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {p0, v0, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Landroid/view/View;F)V

    return v3
.end method

.method public z1OoOfor(Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "BounceEffect"

    const-string v1, "touch down bounceback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v1, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget v1, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOdo:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v1, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    aget v6, v3, v2

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    iput v5, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOvoid:I

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aget v3, v3, v4

    int-to-float v3, v3

    add-float/2addr v5, v3

    add-float/2addr v5, v6

    float-to-int v3, v5

    iput v3, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    iput v3, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObreak:I

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-static {v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v1, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfloat:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-boolean p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObyte:Z

    if-eqz p0, :cond_1

    const-string p0, "touch down bounceback not handle"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v4
.end method

.method public z1OoOif(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOdo:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    const-string v2, "BounceEffect"

    if-eqz v0, :cond_1

    const-string v0, "touch up bounceback start anim"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v4, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v4}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v4, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iget-object v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfloat:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v5}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Landroid/view/VelocityTracker;)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setStartVelocity(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfinal:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->start()V

    :cond_1
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-static {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfor(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-object v5, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v5, v5, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOint:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;

    invoke-virtual {v4, v0, p1, v5}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo(Landroid/view/View;Landroid/view/MotionEvent;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)Z

    const-string p1, "touch up bounceback"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v4, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget-boolean v4, v4, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOfor:Z

    iget-object v5, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-boolean v5, v5, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    if-eq v4, v5, :cond_2

    iget p0, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthis:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setOverScrollMode(I)V

    const-string p0, "touch up bounceback not handle"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1
    :cond_2
    iget-object p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object p1

    .line 2
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    .line 3
    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object p0

    .line 4
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_3
    return v3
.end method
