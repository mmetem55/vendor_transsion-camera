.class public Lcom/cdv/text/NvAndroidTextCacheGenerator;
.super Ljava/lang/Object;
.source "NvAndroidTextCacheGenerator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NvAndroidTextCacheGenerator"

.field private static final m_verbose:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private selectPaint(Lcom/cdv/text/NvAndroidTextLayout;Z)Landroid/graphics/Paint;
    .locals 0

    .line 293
    invoke-virtual {p1}, Lcom/cdv/text/NvAndroidTextLayout;->getLayout()Landroid/text/Layout;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 297
    :cond_0
    invoke-virtual {p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    if-nez p2, :cond_1

    return-object p0

    .line 301
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 302
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 303
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 304
    invoke-virtual {p0}, Landroid/graphics/Paint;->isFakeBoldText()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 305
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 307
    invoke-virtual {p0}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    return-object p1
.end method


# virtual methods
.method public drawColorGlyph(Lcom/cdv/text/NvAndroidTextLayout;IIFFLandroid/graphics/Canvas;IZZ)Z
    .locals 13

    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v9, p6

    const/4 v10, 0x0

    if-nez v9, :cond_0

    return v10

    .line 56
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p3}, Lcom/cdv/text/NvAndroidTextLayout;->getGlyphInfo(II)Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return v10

    :cond_1
    move-object v3, p0

    move-object v4, p1

    move/from16 v5, p9

    .line 60
    invoke-direct {p0, p1, v5}, Lcom/cdv/text/NvAndroidTextCacheGenerator;->selectPaint(Lcom/cdv/text/NvAndroidTextLayout;Z)Landroid/graphics/Paint;

    move-result-object v8

    if-nez v8, :cond_2

    return v10

    :cond_2
    const/4 v11, 0x1

    if-nez p8, :cond_3

    move v3, v11

    goto :goto_0

    :cond_3
    move v3, v10

    .line 64
    :goto_0
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    invoke-static/range {p7 .. p7}, Lcom/cdv/utils/NvAndroidPlatformImage;->getXferMode(I)Landroid/graphics/Xfermode;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    cmpl-float v5, v0, v3

    if-nez v5, :cond_5

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v12, v10

    goto :goto_2

    :cond_5
    :goto_1
    move v12, v11

    :goto_2
    if-eqz v12, :cond_6

    .line 69
    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    :cond_6
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    invoke-virtual {p1}, Lcom/cdv/text/NvAndroidTextLayout;->getText()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    iget v5, v2, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->endCharIdx:I

    iget-object v2, v2, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v2, p6

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    if-eqz v12, :cond_7

    neg-float v0, v0

    neg-float v1, v1

    .line 75
    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return v11

    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NvAndroidTextCacheGenerator"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v10
.end method

.method public drawGlyphBodyWithColor(Lcom/cdv/text/NvAndroidTextLayout;IIILandroid/graphics/LinearGradient;FFLandroid/graphics/Canvas;IZZ)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p8, :cond_0

    return v0

    .line 102
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/cdv/text/NvAndroidTextLayout;->getGlyphInfo(II)Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    .line 105
    :cond_1
    iget-object p3, p2, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    const/4 v1, 0x1

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Landroid/graphics/Path;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_5

    .line 108
    :cond_2
    invoke-direct {p0, p1, p11}, Lcom/cdv/text/NvAndroidTextCacheGenerator;->selectPaint(Lcom/cdv/text/NvAndroidTextLayout;Z)Landroid/graphics/Paint;

    move-result-object p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    if-nez p10, :cond_4

    move p1, v1

    goto :goto_0

    :cond_4
    move p1, v0

    .line 112
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz p10, :cond_5

    if-nez p9, :cond_5

    .line 114
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    .line 116
    :cond_5
    invoke-static {p9}, Lcom/cdv/utils/NvAndroidPlatformImage;->getXferMode(I)Landroid/graphics/Xfermode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_1
    const/4 p1, 0x0

    cmpl-float p3, p6, p1

    if-nez p3, :cond_7

    cmpl-float p1, p7, p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move p1, v0

    goto :goto_3

    :cond_7
    :goto_2
    move p1, v1

    :goto_3
    if-eqz p1, :cond_8

    .line 120
    invoke-virtual {p8, p6, p7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    :cond_8
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-nez p5, :cond_9

    .line 124
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 126
    :cond_9
    invoke-virtual {p0, p5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 128
    :goto_4
    iget-object p2, p2, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {p8, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p5, :cond_a

    const/4 p2, 0x0

    .line 131
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_a
    if-eqz p1, :cond_b

    neg-float p0, p6

    neg-float p1, p7

    .line 134
    invoke-virtual {p8, p0, p1}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_5
    return v1

    :catch_0
    move-exception p0

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NvAndroidTextCacheGenerator"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public drawGlyphDoubleOutlineWithSolidColor(Lcom/cdv/text/NvAndroidTextLayout;IIFIFFLandroid/graphics/Canvas;IZZ)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p8, :cond_0

    return v0

    .line 161
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/cdv/text/NvAndroidTextLayout;->getGlyphInfo(II)Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    .line 164
    :cond_1
    iget-object p3, p2, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    const/4 v1, 0x1

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroid/graphics/Path;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_4

    .line 167
    :cond_2
    invoke-direct {p0, p1, p11}, Lcom/cdv/text/NvAndroidTextCacheGenerator;->selectPaint(Lcom/cdv/text/NvAndroidTextLayout;Z)Landroid/graphics/Paint;

    move-result-object p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    if-nez p10, :cond_4

    move p1, v1

    goto :goto_0

    :cond_4
    move p1, v0

    .line 171
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz p10, :cond_5

    if-nez p9, :cond_5

    .line 173
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    .line 175
    :cond_5
    invoke-static {p9}, Lcom/cdv/utils/NvAndroidPlatformImage;->getXferMode(I)Landroid/graphics/Xfermode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_1
    const/4 p1, 0x0

    cmpl-float p3, p6, p1

    if-nez p3, :cond_7

    cmpl-float p1, p7, p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move p1, v0

    goto :goto_3

    :cond_7
    :goto_2
    move p1, v1

    :goto_3
    if-eqz p1, :cond_8

    .line 179
    invoke-virtual {p8, p6, p7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    :cond_8
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p4, p3

    .line 183
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    sget-object p3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 185
    invoke-virtual {p0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object p2, p2, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {p8, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p1, :cond_9

    neg-float p0, p6

    neg-float p1, p7

    .line 189
    invoke-virtual {p8, p0, p1}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_4
    return v1

    :catch_0
    move-exception p0

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NvAndroidTextCacheGenerator"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public drawGlyphOutlineWithColor(Lcom/cdv/text/NvAndroidTextLayout;IIFILandroid/graphics/LinearGradient;ZFFLandroid/graphics/Canvas;IZZ)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p10, :cond_0

    return v0

    .line 218
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/cdv/text/NvAndroidTextLayout;->getGlyphInfo(II)Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    .line 221
    :cond_1
    iget-object p3, p2, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    const/4 v1, 0x1

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Landroid/graphics/Path;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    goto/16 :goto_6

    .line 224
    :cond_2
    invoke-direct {p0, p1, p13}, Lcom/cdv/text/NvAndroidTextCacheGenerator;->selectPaint(Lcom/cdv/text/NvAndroidTextLayout;Z)Landroid/graphics/Paint;

    move-result-object p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    if-nez p12, :cond_4

    move p1, v1

    goto :goto_0

    :cond_4
    move p1, v0

    .line 228
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz p12, :cond_5

    if-nez p11, :cond_5

    .line 230
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    .line 232
    :cond_5
    invoke-static {p11}, Lcom/cdv/utils/NvAndroidPlatformImage;->getXferMode(I)Landroid/graphics/Xfermode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_1
    const/4 p1, 0x0

    cmpl-float p3, p8, p1

    if-nez p3, :cond_7

    cmpl-float p1, p9, p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move p1, v0

    goto :goto_3

    :cond_7
    :goto_2
    move p1, v1

    :goto_3
    if-eqz p1, :cond_8

    .line 236
    invoke-virtual {p10, p8, p9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    const/4 p3, 0x0

    const/high16 p11, 0x40000000    # 2.0f

    if-eqz p7, :cond_c

    .line 240
    sget-object p7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-float/2addr p4, p11

    .line 241
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    sget-object p4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    if-nez p6, :cond_9

    .line 245
    invoke-virtual {p0, p5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 247
    :cond_9
    invoke-virtual {p0, p6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 249
    :goto_4
    iget-object p2, p2, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {p10, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p6, :cond_a

    .line 252
    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_a
    if-eqz p1, :cond_b

    neg-float p0, p8

    neg-float p1, p9

    .line 255
    invoke-virtual {p10, p0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_b
    return v1

    .line 261
    :cond_c
    sget-object p7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-float/2addr p4, p11

    .line 262
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 263
    sget-object p4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    if-nez p6, :cond_d

    .line 266
    invoke-virtual {p0, p5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 268
    :cond_d
    invoke-virtual {p0, p6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 270
    :goto_5
    iget-object p4, p2, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {p10, p4, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 273
    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 274
    new-instance p4, Landroid/graphics/PorterDuffXfermode;

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 275
    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 p3, -0x1

    .line 276
    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    iget-object p2, p2, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {p10, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p1, :cond_e

    neg-float p0, p8

    neg-float p1, p9

    .line 281
    invoke-virtual {p10, p0, p1}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    :goto_6
    return v1

    :catch_0
    move-exception p0

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NvAndroidTextCacheGenerator"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
