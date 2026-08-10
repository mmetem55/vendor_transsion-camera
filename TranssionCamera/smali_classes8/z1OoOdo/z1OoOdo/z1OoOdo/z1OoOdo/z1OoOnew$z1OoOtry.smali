.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "z1OoOtry"
.end annotation


# instance fields
.field public final z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

.field public final synthetic z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

.field public z1OoOif:I


# direct methods
.method public constructor <init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V
    .locals 0

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif()Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    move-result-object p1

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    return-void
.end method


# virtual methods
.method public z1OoOdo()I
    .locals 0

    iget p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOif:I

    return p0
.end method

.method public z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)V
    .locals 0

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget-boolean p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOfor:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOif:I

    return-void
.end method

.method public z1OoOdo(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOdo:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    .line 1
    invoke-virtual {p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOint()V

    .line 2
    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;

    invoke-virtual {p0, p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)V

    return v3

    :cond_0
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-static {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfloat:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObyte:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcase:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOchar:Z

    if-nez v2, :cond_1

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aget v5, v2, v1

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    aget v0, v2, v3

    int-to-float v0, v0

    add-float/2addr p1, v0

    add-float/2addr p1, v5

    float-to-int p1, p1

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    return v1

    :cond_1
    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-object v4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v4, v4, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOint:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;

    invoke-virtual {v2, v0, p1, v4}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo(Landroid/view/View;Landroid/view/MotionEvent;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)Z

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget v2, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOif:F

    iget-object v4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget v5, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo:F

    iget-boolean p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    iget-object v6, v4, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget-boolean v6, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOfor:Z

    if-ne p1, v6, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v4, v5, v2, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(FFZ)F

    move-result p1

    mul-float/2addr v2, p1

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget v1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v4, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget-boolean v5, v4, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOfor:Z

    if-eqz v5, :cond_3

    iget-boolean v6, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    if-nez v6, :cond_3

    iget v6, v4, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOif:F

    cmpg-float v6, v1, v6

    if-lez v6, :cond_4

    :cond_3
    if-nez v5, :cond_5

    iget-boolean p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    if-eqz p1, :cond_5

    iget p1, v4, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOif:F

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_5

    :cond_4
    iget-object p1, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;

    invoke-virtual {v2, p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)V

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget v1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOif:F

    :cond_5
    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {p0, v0, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Landroid/view/View;F)V

    return v3
.end method

.method public z1OoOfor(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aget v4, v1, v2

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    iput v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOvoid:I

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    add-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v1, v2

    iput v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    iput v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObreak:I

    const-string v0, "BounceEffect"

    const-string v1, "touch down overscroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-static {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfloat:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return v3
.end method

.method public z1OoOif(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v0, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;

    invoke-virtual {p1, v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)V

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-static {p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfor(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    const-string p1, "BounceEffect"

    const-string v0, "touch up overscroll"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-boolean v0, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObyte:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOchar:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcase:Z

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 1
    :cond_1
    iget-object p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object p1

    .line 2
    instance-of p1, p1, Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    .line 3
    iget-object p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object p1

    .line 4
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    .line 5
    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object p0

    .line 6
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
