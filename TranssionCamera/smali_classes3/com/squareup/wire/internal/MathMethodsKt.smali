.class public final Lcom/squareup/wire/internal/MathMethodsKt;
.super Ljava/lang/Object;
.source "MathMethods.kt"


# static fields
.field public static final NANOS_PER_SECOND:J = 0x3b9aca00L


# direct methods
.method public static final addExactLong(JJ)J
    .locals 5

    add-long v0, p0, p2

    xor-long/2addr p2, p0

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    const/4 p3, 0x1

    const/4 v4, 0x0

    if-gez p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, v4

    :goto_0
    xor-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    move p3, v4

    :goto_1
    or-int p0, p2, p3

    if-eqz p0, :cond_2

    return-wide v0

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method

.method public static final floorDivLong(JJ)J
    .locals 6

    .line 42
    div-long v0, p0, p2

    mul-long v2, p2, v0

    sub-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    xor-long/2addr p0, p2

    const/16 p2, 0x3f

    shr-long/2addr p0, p2

    const-wide/16 p2, 0x1

    or-long/2addr p0, p2

    cmp-long p0, p0, v4

    if-gez p0, :cond_1

    sub-long/2addr v0, p2

    :cond_1
    return-wide v0
.end method

.method public static final floorModLong(JJ)J
    .locals 7

    .line 56
    rem-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    const-wide/16 v4, 0x1

    xor-long/2addr p0, p2

    const/16 v6, 0x3f

    shr-long/2addr p0, v6

    or-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    add-long/2addr v0, p2

    :goto_0
    return-wide v0
.end method
