.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;
.super Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "z1OoOdo"
.end annotation


# instance fields
.field public final synthetic z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;


# direct methods
.method public constructor <init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;)V
    .locals 0

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;

    invoke-direct {p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;-><init>()V

    return-void
.end method


# virtual methods
.method public z1OoOdo(Landroid/view/View;Landroid/view/MotionEvent;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOif;)Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aget v3, v0, v1

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v0, v0

    add-float/2addr p2, v0

    add-float/2addr p2, v3

    float-to-int p2, p2

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;

    iget v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOvoid:I

    const v5, 0x7fffffff

    if-eq v3, v5, :cond_8

    iget v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObreak:I

    if-ne v3, v5, :cond_0

    goto :goto_4

    :cond_0
    iget v3, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    sub-int v3, v2, v3

    iget v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    sub-int v5, p2, v5

    iput v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    iput p2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    iget-object p2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOfor;

    const/4 v2, 0x0

    if-eq p2, p3, :cond_2

    iget-object p2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOdo;

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    goto :goto_2

    :cond_2
    :goto_0
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-le p2, p3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo:F

    int-to-float p1, v3

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOif:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    move v1, v4

    :cond_3
    iput-boolean v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    return v4

    :cond_4
    iget-boolean p2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    if-nez p2, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object p3, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif$z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;

    iget p3, p3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOconst:I

    if-le p2, p3, :cond_6

    if-eqz v3, :cond_6

    if-gez v3, :cond_5

    const/4 p2, -0x1

    goto :goto_1

    :cond_5
    move p2, v4

    :goto_1
    mul-int v3, p3, p2

    iput-boolean v4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOdo:F

    int-to-float p1, v3

    iput p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOif:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    goto :goto_3

    :cond_7
    move v4, v1

    :goto_3
    iput-boolean v4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOint:Z

    return v1

    :cond_8
    :goto_4
    iput v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOcatch:I

    iput v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOvoid:I

    iput p2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOclass:I

    iput p2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObreak:I

    iput-boolean v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew$z1OoOint;->z1OoOfor:Z

    const-string p0, "BounceEffect"

    const-string p1, "touch move but not down yet"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
