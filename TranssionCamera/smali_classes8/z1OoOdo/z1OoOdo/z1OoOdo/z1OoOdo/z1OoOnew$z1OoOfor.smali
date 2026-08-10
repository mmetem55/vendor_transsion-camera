.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;
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
    name = "z1OoOfor"
.end annotation


# instance fields
.field public final z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

.field public final synthetic z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;


# direct methods
.method public constructor <init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V
    .locals 0

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif()Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    move-result-object p1

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    return-void
.end method


# virtual methods
.method public z1OoOdo()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)V
    .locals 0

    return-void
.end method

.method public z1OoOdo(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-boolean v3, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObyte:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcase:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOchar:Z

    if-nez v3, :cond_0

    iget-object v2, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    aget v7, v3, v5

    int-to-float v7, v7

    add-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    aget v2, v3, v4

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    return v5

    :cond_0
    iget-boolean v3, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOelse:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOgoto:Z

    if-eqz v3, :cond_2

    :cond_1
    iget v3, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    iput v3, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOvoid:I

    iget v3, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    iput v3, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObreak:I

    iput-boolean v5, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOelse:Z

    iput-boolean v5, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOgoto:Z

    :cond_2
    iget-object v2, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-object v6, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v6, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;

    invoke-virtual {v3, v2, v1, v6}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo(Landroid/view/View;Landroid/view/MotionEvent;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)Z

    move-result v3

    iget-object v6, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-static {v6}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iget-object v6, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v6, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfloat:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v6, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-boolean v7, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOwhile:Z

    if-eqz v7, :cond_3

    iget-boolean v8, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObyte:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcase:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdouble:Z

    if-eqz v8, :cond_3

    iput-boolean v5, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdouble:Z

    return v4

    :cond_3
    const/4 v8, 0x0

    const-string v9, "BounceEffect"

    if-eqz v7, :cond_7

    iget-boolean v7, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObyte:Z

    if-eqz v7, :cond_7

    iget-boolean v7, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcase:Z

    if-eqz v7, :cond_7

    iget-object v7, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-boolean v7, v7, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    if-nez v7, :cond_7

    iget-object v6, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v6}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->isInAbsoluteStart()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v6, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v6}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->isInAbsoluteEnd()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_4
    iget-object v6, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v6, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOsuper:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    if-eqz v6, :cond_7

    invoke-interface {v6}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;->z1OoOdo()V

    iget-object v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iput-boolean v5, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOwhile:Z

    iput-boolean v4, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdouble:Z

    iget-object v3, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOdo:I

    iget-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v3, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iput v8, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOif:F

    iget-object v6, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-boolean v6, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    xor-int/2addr v6, v4

    iput-boolean v6, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOfor:Z

    iget-object v3, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOint:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;

    invoke-virtual {v1, v3}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)V

    iget-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget v3, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOif:F

    iget-object v6, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget v7, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo:F

    iget-boolean v1, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    iget-object v8, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget-boolean v8, v8, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOfor:Z

    if-ne v1, v8, :cond_5

    move v5, v4

    :cond_5
    invoke-virtual {v6, v7, v3, v5}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(FFZ)F

    move-result v1

    mul-float/2addr v3, v1

    iget-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget v1, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo:F

    add-float/2addr v1, v3

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {v0, v2, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Landroid/view/View;F)V

    const/high16 v0, 0x42200000    # 40.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_6

    instance-of v0, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide v10, v12

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const-string v0, "Send action down event"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v4

    :cond_7
    iget-object v6, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-boolean v7, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    if-nez v7, :cond_8

    return v5

    :cond_8
    if-eqz v3, :cond_9

    return v5

    :cond_9
    iget-object v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-boolean v7, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObyte:Z

    if-eqz v7, :cond_c

    iget-boolean v7, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcase:Z

    if-eqz v7, :cond_a

    iget-boolean v7, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    if-eqz v7, :cond_b

    :cond_a
    iget-boolean v7, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOchar:Z

    if-eqz v7, :cond_c

    iget-boolean v6, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    if-eqz v6, :cond_c

    :cond_b
    return v5

    :cond_c
    iget-object v3, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v3}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->isInAbsoluteStart()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-boolean v3, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    if-nez v3, :cond_e

    :cond_d
    iget-object v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v3, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v3}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->isInAbsoluteEnd()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-boolean v3, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    if-nez v3, :cond_16

    :cond_e
    iget-object v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v3, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOdo:I

    iget-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v1, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iput v8, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOif:F

    iget-object v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget-boolean v3, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    iput-boolean v3, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOfor:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "about to switch to overscroll mode, start mDir:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v3, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget-boolean v3, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOfor:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "mAbsOffset:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v3, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget v3, v3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOif:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v1, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOsuper:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;->z1OoOdo()V

    iget-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iput-boolean v5, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOwhile:Z

    iput-boolean v4, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdouble:Z

    :cond_f
    iget-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v3, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOint:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOtry;

    invoke-virtual {v1, v3}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)V

    iget-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget v3, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOif:F

    iget-object v6, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget v7, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo:F

    iget-boolean v1, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    iget-object v8, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;

    iget-boolean v8, v8, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOnew;->z1OoOfor:Z

    if-ne v1, v8, :cond_10

    move v1, v4

    goto :goto_0

    :cond_10
    move v1, v5

    :goto_0
    invoke-virtual {v6, v7, v3, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(FFZ)F

    move-result v1

    mul-float/2addr v3, v1

    iget-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;

    iget v1, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo:F

    add-float/2addr v1, v3

    iget-object v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {v3, v2, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOdo(Landroid/view/View;F)V

    instance-of v1, v2, Landroid/widget/AbsListView;

    if-eqz v1, :cond_12

    move-object v1, v2

    check-cast v1, Landroid/widget/AbsListView;

    move v3, v5

    :goto_1
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_12

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6, v5}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setSelected(Z)V

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->cancelPendingInputEvents()V

    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-boolean v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObyte:Z

    if-eqz v1, :cond_13

    iget-boolean v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcase:Z

    if-eqz v3, :cond_13

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_13

    return v4

    :cond_13
    if-eqz v1, :cond_15

    iget-boolean v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOchar:Z

    if-nez v1, :cond_14

    iget-boolean v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcase:Z

    if-eqz v0, :cond_15

    :cond_14
    const-string v0, "report move to super"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_15
    return v4

    :cond_16
    return v5
.end method

.method public z1OoOfor(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;

    invoke-interface {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;->z1OoOdo()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

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

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/4 v5, 0x1

    aget v1, v1, v5

    int-to-float v1, v1

    add-float/2addr v3, v1

    add-float/2addr v3, v4

    float-to-int v1, v3

    iput v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    iput v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObreak:I

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-static {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOif(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfloat:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return v2
.end method

.method public z1OoOif(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-static {p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfor(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    const/4 p0, 0x0

    return p0
.end method
