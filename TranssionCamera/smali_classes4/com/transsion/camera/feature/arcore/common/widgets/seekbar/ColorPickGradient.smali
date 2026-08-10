.class public Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;
.super Ljava/lang/Object;
.source "ColorPickGradient.java"


# static fields
.field private static mColorArr:[I

.field private static mColorPosition:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAreaRadio(DDD)D
    .locals 0

    sub-double/2addr p0, p2

    sub-double/2addr p4, p2

    div-double/2addr p0, p4

    return-wide p0
.end method

.method public static getColor(D)[D
    .locals 12

    .line 83
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->mColorPosition:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    float-to-double v0, v0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 84
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->mColorArr:[I

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget p0, p0, p1

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->getColorForRGB(I)[D

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 86
    :goto_0
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->mColorPosition:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 87
    aget v3, v2, v1

    float-to-double v4, v3

    cmpg-double v4, p0, v4

    if-gtz v4, :cond_2

    if-nez v1, :cond_1

    .line 89
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->mColorArr:[I

    aget p0, p0, v0

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->getColorForRGB(I)[D

    move-result-object p0

    return-object p0

    .line 91
    :cond_1
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->mColorArr:[I

    add-int/lit8 v4, v1, -0x1

    aget v5, v0, v4

    .line 92
    aget v0, v0, v1

    .line 93
    aget v1, v2, v4

    float-to-double v8, v1

    float-to-double v10, v3

    move-wide v6, p0

    invoke-static/range {v6 .. v11}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->getAreaRadio(DDD)D

    move-result-wide p0

    .line 94
    invoke-static {v5, v0, p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->getColorFrom(IID)[D

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    new-array p0, p0, [D

    .line 97
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static getColorForRGB(I)[D
    .locals 5

    .line 127
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 128
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 129
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p0

    const/4 v2, 0x3

    new-array v2, v2, [D

    int-to-double v3, v0

    const/4 v0, 0x0

    aput-wide v3, v2, v0

    int-to-double v3, p0

    const/4 p0, 0x1

    aput-wide v3, v2, p0

    int-to-double v0, v1

    const/4 p0, 0x2

    aput-wide v0, v2, p0

    return-object v2
.end method

.method public static getColorFrom(IID)[D
    .locals 8

    .line 113
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 114
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 115
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p0

    .line 116
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 117
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 118
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    int-to-double v4, v0

    sub-int/2addr v2, v0

    int-to-double v6, v2

    mul-double/2addr v6, p2

    add-double/2addr v4, v6

    int-to-double v6, p0

    sub-int/2addr p1, p0

    int-to-double p0, p1

    mul-double/2addr p0, p2

    add-double/2addr v6, p0

    int-to-double p0, v1

    sub-int/2addr v3, v1

    int-to-double v0, v3

    mul-double/2addr v0, p2

    add-double/2addr p0, v0

    const/4 p2, 0x3

    new-array p2, p2, [D

    const/4 p3, 0x0

    aput-wide v4, p2, p3

    const/4 p3, 0x1

    aput-wide v6, p2, p3

    const/4 p3, 0x2

    aput-wide p0, p2, p3

    return-object p2
.end method

.method public static getRadio(I)F
    .locals 1

    .line 71
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->mColorPosition:[F

    aget p0, v0, p0

    return p0
.end method

.method public static init([[D)V
    .locals 12

    .line 29
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v0

    .line 30
    new-instance v3, Ljava/math/BigDecimal;

    float-to-double v4, v0

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x2

    const/4 v4, 0x5

    .line 31
    invoke-virtual {v3, v0, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    .line 32
    array-length v4, p0

    new-array v4, v4, [F

    sput-object v4, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->mColorPosition:[F

    .line 33
    array-length v4, p0

    new-array v4, v4, [I

    sput-object v4, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->mColorArr:[I

    const/4 v4, 0x0

    move v5, v4

    .line 34
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_1

    .line 35
    sget-object v6, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->mColorPosition:[F

    int-to-float v7, v5

    mul-float/2addr v7, v3

    aput v7, v6, v5

    cmpl-float v7, v7, v2

    if-ltz v7, :cond_0

    .line 37
    aput v2, v6, v5

    .line 39
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mColorPosition["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->mColorPosition:[F

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ColorPickGradient"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v6, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->mColorArr:[I

    aget-object v7, p0, v5

    aget-wide v8, v7, v4

    double-to-int v8, v8

    aget-wide v9, v7, v1

    double-to-int v9, v9

    aget-wide v10, v7, v0

    double-to-int v7, v10

    invoke-static {v8, v9, v7}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->toHex(III)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static to2Hex(I)Ljava/lang/String;
    .locals 2

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static toHex(III)I
    .locals 3

    .line 45
    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->to2Hex(I)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->to2Hex(I)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->to2Hex(I)Ljava/lang/String;

    move-result-object p2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "red="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--hg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--hb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorPickGradient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#FF"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "color="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
