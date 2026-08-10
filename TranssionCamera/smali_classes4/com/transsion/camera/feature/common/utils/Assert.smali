.class public Lcom/transsion/camera/feature/common/utils/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertEquals(BB)V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;BB)V

    return-void
.end method

.method public static assertEquals(CC)V
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;CC)V

    return-void
.end method

.method public static assertEquals(DDD)V
    .locals 7

    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .line 120
    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;DDD)V

    return-void
.end method

.method public static assertEquals(FFF)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-static {v0, p0, p1, p2}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;FFF)V

    return-void
.end method

.method public static assertEquals(II)V
    .locals 1

    const/4 v0, 0x0

    .line 230
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method public static assertEquals(JJ)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;BB)V
    .locals 1

    .line 178
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    new-instance p1, Ljava/lang/Byte;

    invoke-direct {p1, p2}, Ljava/lang/Byte;-><init>(B)V

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;CC)V
    .locals 1

    .line 193
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance p1, Ljava/lang/Character;

    invoke-direct {p1, p2}, Ljava/lang/Character;-><init>(C)V

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;DDD)V
    .locals 2

    .line 109
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-double v0, p1, p3

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double p5, v0, p5

    if-lez p5, :cond_1

    .line 112
    new-instance p5, Ljava/lang/Double;

    invoke-direct {p5, p1, p2}, Ljava/lang/Double;-><init>(D)V

    new-instance p1, Ljava/lang/Double;

    invoke-direct {p1, p3, p4}, Ljava/lang/Double;-><init>(D)V

    invoke-static {p0, p5, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;FFF)V
    .locals 1

    .line 129
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-float v0, p1, p2

    .line 131
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p3, v0, p3

    if-lez p3, :cond_1

    .line 132
    new-instance p3, Ljava/lang/Float;

    invoke-direct {p3, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance p1, Ljava/lang/Float;

    invoke-direct {p1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-static {p0, p3, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;II)V
    .locals 1

    .line 223
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;JJ)V
    .locals 1

    .line 148
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, p3, p4}, Ljava/lang/Long;-><init>(J)V

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 73
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/common/utils/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p0, :cond_2

    const-string p0, ""

    .line 93
    :cond_2
    new-instance v0, Lcom/transsion/camera/feature/common/utils/ComparisonFailure;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/feature/common/utils/ComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static assertEquals(Ljava/lang/String;SS)V
    .locals 1

    .line 208
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    new-instance p1, Ljava/lang/Short;

    invoke-direct {p1, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;ZZ)V
    .locals 0

    .line 163
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertEquals(SS)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;SS)V

    return-void
.end method

.method public static assertEquals(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static assertFalse(Ljava/lang/String;Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 36
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method public static assertFalse(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-static {v0, p0}, Lcom/transsion/camera/feature/common/utils/Assert;->assertFalse(Ljava/lang/String;Z)V

    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-static {v0, p0}, Lcom/transsion/camera/feature/common/utils/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 245
    :goto_0
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method public static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 301
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-ne p1, p2, :cond_0

    .line 293
    invoke-static {p0}, Lcom/transsion/camera/feature/common/utils/Assert;->failSame(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static assertNull(Ljava/lang/Object;)V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected: <null> but was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0, p0}, Lcom/transsion/camera/feature/common/utils/Assert;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 265
    :goto_0
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method public static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-ne p1, p2, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/common/utils/Assert;->failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertTrue(Ljava/lang/String;Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 20
    invoke-static {p0}, Lcom/transsion/camera/feature/common/utils/Assert;->fail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {v0, p0}, Lcom/transsion/camera/feature/common/utils/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method public static fail()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-static {v0}, Lcom/transsion/camera/feature/common/utils/Assert;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    .line 52
    new-instance p0, Lcom/transsion/camera/feature/common/utils/AssertionFailedError;

    invoke-direct {p0}, Lcom/transsion/camera/feature/common/utils/AssertionFailedError;-><init>()V

    throw p0

    .line 54
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/common/utils/AssertionFailedError;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/common/utils/AssertionFailedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 319
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/common/utils/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/feature/common/utils/Assert;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public static failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 315
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "expected same:<"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "> was not:<"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/feature/common/utils/Assert;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public static failSame(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 308
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "expected not same"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/feature/common/utils/Assert;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 326
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "expected:<"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "> but was:<"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
