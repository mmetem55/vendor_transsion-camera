.class Lcom/google/ar/core/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"


# annotations
.annotation build Lcom/google/ar/core/annotations/UsedByNative;
    value = "session_jni_wrapper.cc"
.end annotation


# static fields
.field public static final a:Lcom/google/ar/core/Quaternion;


# instance fields
.field private w:F
    .annotation build Lcom/google/ar/core/annotations/UsedByNative;
        value = "session_jni_wrapper.cc"
    .end annotation
.end field

.field private x:F
    .annotation build Lcom/google/ar/core/annotations/UsedByNative;
        value = "session_jni_wrapper.cc"
    .end annotation
.end field

.field private y:F
    .annotation build Lcom/google/ar/core/annotations/UsedByNative;
        value = "session_jni_wrapper.cc"
    .end annotation
.end field

.field private z:F
    .annotation build Lcom/google/ar/core/annotations/UsedByNative;
        value = "session_jni_wrapper.cc"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ar/core/Quaternion;

    invoke-direct {v0}, Lcom/google/ar/core/Quaternion;-><init>()V

    sput-object v0, Lcom/google/ar/core/Quaternion;->a:Lcom/google/ar/core/Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    iput v0, p0, Lcom/google/ar/core/Quaternion;->y:F

    iput v0, p0, Lcom/google/ar/core/Quaternion;->z:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/ar/core/Quaternion;->w:F

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/google/ar/core/Quaternion;->j(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .annotation build Lcom/google/ar/core/annotations/UsedByNative;
        value = "session_jni_wrapper.cc"
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    iput v0, p0, Lcom/google/ar/core/Quaternion;->y:F

    iput v0, p0, Lcom/google/ar/core/Quaternion;->z:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/ar/core/Quaternion;->w:F

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/ar/core/Quaternion;->j(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ar/core/Quaternion;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    iput v0, p0, Lcom/google/ar/core/Quaternion;->y:F

    iput v0, p0, Lcom/google/ar/core/Quaternion;->z:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/ar/core/Quaternion;->w:F

    iget v0, p1, Lcom/google/ar/core/Quaternion;->x:F

    iget v1, p1, Lcom/google/ar/core/Quaternion;->y:F

    iget v2, p1, Lcom/google/ar/core/Quaternion;->z:F

    iget p1, p1, Lcom/google/ar/core/Quaternion;->w:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/ar/core/Quaternion;->j(FFFF)V

    return-void
.end method

.method public static g(Lcom/google/ar/core/Quaternion;Lcom/google/ar/core/Quaternion;F)Lcom/google/ar/core/Quaternion;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/ar/core/Quaternion;

    invoke-direct {v0}, Lcom/google/ar/core/Quaternion;-><init>()V

    .line 2
    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    iget v2, p1, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->y:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->z:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->w:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    new-instance v2, Lcom/google/ar/core/Quaternion;

    .line 3
    invoke-direct {v2, p1}, Lcom/google/ar/core/Quaternion;-><init>(Lcom/google/ar/core/Quaternion;)V

    neg-float v1, v1

    iget p1, v2, Lcom/google/ar/core/Quaternion;->x:F

    neg-float p1, p1

    iput p1, v2, Lcom/google/ar/core/Quaternion;->x:F

    iget p1, v2, Lcom/google/ar/core/Quaternion;->y:F

    neg-float p1, p1

    iput p1, v2, Lcom/google/ar/core/Quaternion;->y:F

    iget p1, v2, Lcom/google/ar/core/Quaternion;->z:F

    neg-float p1, p1

    iput p1, v2, Lcom/google/ar/core/Quaternion;->z:F

    iget p1, v2, Lcom/google/ar/core/Quaternion;->w:F

    neg-float p1, p1

    iput p1, v2, Lcom/google/ar/core/Quaternion;->w:F

    move-object p1, v2

    :cond_0
    float-to-double v2, v1

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    float-to-double v4, v1

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    div-float v1, v3, v1

    sub-float/2addr v3, p2

    mul-float/2addr v3, v2

    float-to-double v3, v3

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v1

    mul-float/2addr p2, v2

    float-to-double v4, p2

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float p2, v4

    mul-float/2addr p2, v1

    goto :goto_0

    :cond_1
    sub-float/2addr v3, p2

    .line 9
    :goto_0
    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v1, v3

    iget v2, p1, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/google/ar/core/Quaternion;->x:F

    .line 10
    iget v2, p0, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v2, v3

    iget v4, p1, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    iput v2, v0, Lcom/google/ar/core/Quaternion;->y:F

    .line 11
    iget v4, p0, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v4, v3

    iget v5, p1, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    iput v4, v0, Lcom/google/ar/core/Quaternion;->z:F

    .line 12
    iget p0, p0, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v3, p0

    iget p0, p1, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr p2, p0

    add-float/2addr v3, p2

    iput v3, v0, Lcom/google/ar/core/Quaternion;->w:F

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v4, v4

    add-float/2addr v1, v4

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    float-to-double v1, v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr p0, v1

    double-to-float p0, p0

    iget p1, v0, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr p1, p0

    iput p1, v0, Lcom/google/ar/core/Quaternion;->x:F

    iget p1, v0, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr p1, p0

    iput p1, v0, Lcom/google/ar/core/Quaternion;->y:F

    iget p1, v0, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr p1, p0

    iput p1, v0, Lcom/google/ar/core/Quaternion;->z:F

    iget p1, v0, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr p1, p0

    iput p1, v0, Lcom/google/ar/core/Quaternion;->w:F

    return-object v0
.end method

.method public static i(Lcom/google/ar/core/Quaternion;[FI[FI)V
    .locals 8

    .line 1
    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 2
    aget v1, p1, v1

    add-int/lit8 p2, p2, 0x2

    .line 3
    aget p1, p1, p2

    iget p2, p0, Lcom/google/ar/core/Quaternion;->x:F

    iget v2, p0, Lcom/google/ar/core/Quaternion;->y:F

    iget v3, p0, Lcom/google/ar/core/Quaternion;->z:F

    iget p0, p0, Lcom/google/ar/core/Quaternion;->w:F

    mul-float v4, p0, v0

    mul-float v5, v2, p1

    add-float/2addr v4, v5

    mul-float v5, v3, v1

    sub-float/2addr v4, v5

    mul-float v5, p0, v1

    mul-float v6, v3, v0

    add-float/2addr v5, v6

    mul-float v6, p2, p1

    sub-float/2addr v5, v6

    mul-float v6, p0, p1

    mul-float v7, p2, v1

    add-float/2addr v6, v7

    mul-float v7, v2, v0

    sub-float/2addr v6, v7

    neg-float p2, p2

    mul-float/2addr v0, p2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr p1, v3

    sub-float/2addr v0, p1

    neg-float p1, v3

    neg-float v1, v2

    mul-float v2, v4, p0

    mul-float v3, v0, p2

    add-float/2addr v2, v3

    mul-float v3, v5, p1

    add-float/2addr v2, v3

    mul-float v3, v6, v1

    sub-float/2addr v2, v3

    .line 4
    aput v2, p3, p4

    add-int/lit8 v2, p4, 0x1

    mul-float v3, v5, p0

    mul-float v7, v0, v1

    add-float/2addr v3, v7

    mul-float v7, v6, p2

    add-float/2addr v3, v7

    mul-float v7, v4, p1

    sub-float/2addr v3, v7

    .line 5
    aput v3, p3, v2

    add-int/lit8 p4, p4, 0x2

    mul-float/2addr v6, p0

    mul-float/2addr v0, p1

    add-float/2addr v6, v0

    mul-float/2addr v4, v1

    add-float/2addr v6, v4

    mul-float/2addr v5, p2

    sub-float/2addr v6, v5

    .line 6
    aput v6, p3, p4

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lcom/google/ar/core/Quaternion;->w:F

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lcom/google/ar/core/Quaternion;->x:F

    return p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lcom/google/ar/core/Quaternion;->y:F

    return p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Lcom/google/ar/core/Quaternion;->z:F

    return p0
.end method

.method public final e(Lcom/google/ar/core/Quaternion;)Lcom/google/ar/core/Quaternion;
    .locals 11

    .line 1
    new-instance v0, Lcom/google/ar/core/Quaternion;

    invoke-direct {v0}, Lcom/google/ar/core/Quaternion;-><init>()V

    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    .line 2
    iget v2, p1, Lcom/google/ar/core/Quaternion;->w:F

    iget v3, p0, Lcom/google/ar/core/Quaternion;->y:F

    iget v4, p1, Lcom/google/ar/core/Quaternion;->z:F

    iget v5, p0, Lcom/google/ar/core/Quaternion;->z:F

    iget v6, p1, Lcom/google/ar/core/Quaternion;->y:F

    iget v7, p0, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v1, v2

    mul-float v8, v3, v4

    add-float/2addr v1, v8

    mul-float v8, v5, v6

    sub-float/2addr v1, v8

    iget v8, p1, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v8, v7

    add-float/2addr v1, v8

    iput v1, v0, Lcom/google/ar/core/Quaternion;->x:F

    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    neg-float v8, v1

    .line 3
    iget v9, p1, Lcom/google/ar/core/Quaternion;->x:F

    mul-float v10, v8, v4

    mul-float/2addr v3, v2

    add-float/2addr v10, v3

    mul-float v3, v5, v9

    add-float/2addr v10, v3

    mul-float/2addr v6, v7

    add-float/2addr v10, v6

    iput v10, v0, Lcom/google/ar/core/Quaternion;->y:F

    .line 4
    iget v3, p1, Lcom/google/ar/core/Quaternion;->y:F

    iget v6, p0, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v1, v3

    mul-float v10, v6, v9

    sub-float/2addr v1, v10

    mul-float/2addr v5, v2

    add-float/2addr v1, v5

    mul-float/2addr v4, v7

    add-float/2addr v1, v4

    iput v1, v0, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v8, v9

    mul-float/2addr v6, v3

    sub-float/2addr v8, v6

    iget p0, p0, Lcom/google/ar/core/Quaternion;->z:F

    .line 5
    iget p1, p1, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr p0, p1

    sub-float/2addr v8, p0

    mul-float/2addr v7, v2

    add-float/2addr v8, v7

    iput v8, v0, Lcom/google/ar/core/Quaternion;->w:F

    return-object v0
.end method

.method public final f()Lcom/google/ar/core/Quaternion;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/ar/core/Quaternion;

    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/google/ar/core/Quaternion;->y:F

    neg-float v2, v2

    iget v3, p0, Lcom/google/ar/core/Quaternion;->z:F

    neg-float v3, v3

    iget p0, p0, Lcom/google/ar/core/Quaternion;->w:F

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/ar/core/Quaternion;-><init>(FFFF)V

    return-object v0
.end method

.method public final h([FI)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/google/ar/core/Quaternion;->y:F

    .line 2
    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/google/ar/core/Quaternion;->z:F

    .line 3
    aput v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    iget p0, p0, Lcom/google/ar/core/Quaternion;->w:F

    .line 4
    aput p0, p1, p2

    return-void
.end method

.method public final j(FFFF)V
    .locals 0

    iput p1, p0, Lcom/google/ar/core/Quaternion;->x:F

    iput p2, p0, Lcom/google/ar/core/Quaternion;->y:F

    iput p3, p0, Lcom/google/ar/core/Quaternion;->z:F

    iput p4, p0, Lcom/google/ar/core/Quaternion;->w:F

    return-void
.end method

.method public final k([FI)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    iget v1, p0, Lcom/google/ar/core/Quaternion;->y:F

    iget v2, p0, Lcom/google/ar/core/Quaternion;->z:F

    iget p0, p0, Lcom/google/ar/core/Quaternion;->w:F

    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    mul-float v4, p0, p0

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    :cond_0
    mul-float v3, v0, v4

    mul-float v5, v1, v4

    mul-float/2addr v4, v2

    mul-float v6, p0, v3

    mul-float v7, p0, v5

    mul-float/2addr p0, v4

    mul-float/2addr v3, v0

    mul-float v8, v0, v5

    mul-float/2addr v0, v4

    mul-float/2addr v5, v1

    mul-float/2addr v1, v4

    mul-float/2addr v2, v4

    add-float v4, v5, v2

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v4, v9, v4

    aput v4, p1, p2

    add-int/lit8 v4, p2, 0x4

    sub-float v10, v8, p0

    .line 2
    aput v10, p1, v4

    add-int/lit8 v4, p2, 0x8

    add-float v10, v0, v7

    .line 3
    aput v10, p1, v4

    add-int/lit8 v4, p2, 0x1

    add-float/2addr v8, p0

    .line 4
    aput v8, p1, v4

    add-int/lit8 p0, p2, 0x5

    add-float/2addr v2, v3

    sub-float v2, v9, v2

    .line 5
    aput v2, p1, p0

    add-int/lit8 p0, p2, 0x9

    sub-float v2, v1, v6

    .line 6
    aput v2, p1, p0

    add-int/lit8 p0, p2, 0x2

    sub-float/2addr v0, v7

    .line 7
    aput v0, p1, p0

    add-int/lit8 p0, p2, 0x6

    add-float/2addr v1, v6

    .line 8
    aput v1, p1, p0

    add-int/lit8 p2, p2, 0xa

    add-float/2addr v3, v5

    sub-float/2addr v9, v3

    .line 9
    aput v9, p1, p2

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/ar/core/Quaternion;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/ar/core/Quaternion;->z:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/google/ar/core/Quaternion;->w:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string p0, "[%.3f, %.3f, %.3f, %.3f]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
