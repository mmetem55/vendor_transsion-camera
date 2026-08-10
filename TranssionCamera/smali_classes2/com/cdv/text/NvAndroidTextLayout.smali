.class public Lcom/cdv/text/NvAndroidTextLayout;
.super Ljava/lang/Object;
.source "NvAndroidTextLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;,
        Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;
    }
.end annotation


# static fields
.field public static final AlignBottom:I = 0x40

.field public static final AlignHCenter:I = 0x4

.field public static final AlignJustify:I = 0x8

.field public static final AlignLeft:I = 0x1

.field public static final AlignRight:I = 0x2

.field public static final AlignTop:I = 0x20

.field public static final AlignVCenter:I = 0x80

.field private static final TAG:Ljava/lang/String; = "NvAndroidTextLayout"

.field private static final m_verbose:Z


# instance fields
.field private m_align:I

.field private m_glyphInfoPrepared:Z

.field private m_glyphLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_glyphLinesBounding:[Landroid/graphics/RectF;

.field private m_innerAlign:I

.field private m_layout:Landroid/text/StaticLayout;

.field private m_text:Ljava/lang/String;

.field private m_textBounding:Landroid/graphics/RectF;

.field private m_verticalText:Z

.field private m_yOffset:F


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;Landroid/text/TextPaint;FZFIIZIIZ)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x81

    .line 56
    iput v2, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_align:I

    const/4 v2, 0x1

    .line 57
    iput v2, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_innerAlign:I

    const/4 v2, 0x0

    .line 59
    iput v2, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_yOffset:F

    const/4 v2, 0x0

    .line 60
    iput-boolean v2, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphInfoPrepared:Z

    move/from16 v2, p12

    .line 79
    iput-boolean v2, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_verticalText:Z

    if-nez v1, :cond_0

    return-void

    .line 83
    :cond_0
    iput-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_text:Ljava/lang/String;

    move/from16 v1, p7

    .line 84
    iput v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_align:I

    move/from16 v1, p8

    .line 85
    iput v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_innerAlign:I

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    .line 88
    :try_start_0
    invoke-direct/range {v1 .. v9}, Lcom/cdv/text/NvAndroidTextLayout;->initLayout(Landroid/graphics/Typeface;Landroid/text/TextPaint;FZFZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NvAndroidTextLayout"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initLayout(Landroid/graphics/Typeface;Landroid/text/TextPaint;FZFZII)V
    .locals 7

    if-eqz p6, :cond_0

    .line 175
    iget-boolean p1, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_verticalText:Z

    if-nez p1, :cond_0

    move p1, p7

    goto :goto_0

    :cond_0
    const/high16 p1, 0x20000

    .line 177
    :goto_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 178
    iget v1, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_align:I

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    .line 179
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 181
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 185
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_text:Ljava/lang/String;

    const/4 v2, 0x0

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 185
    invoke-static {v1, v2, v3, p2, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 192
    invoke-virtual {p1, p5, p2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 193
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    .line 206
    iget v0, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_align:I

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    int-to-float v0, p8

    sub-float/2addr v0, p2

    .line 207
    iput v0, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_yOffset:F

    goto :goto_2

    :cond_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    int-to-float v0, p8

    sub-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    .line 209
    iput v0, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_yOffset:F

    .line 211
    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    .line 213
    iget-boolean p1, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_verticalText:Z

    if-eqz p1, :cond_5

    .line 214
    invoke-direct {p0}, Lcom/cdv/text/NvAndroidTextLayout;->prepareGlyphLines()V

    int-to-float v5, p7

    int-to-float v6, p8

    move-object v0, p0

    move v1, p6

    move v2, p3

    move v3, p4

    move v4, p5

    .line 215
    invoke-direct/range {v0 .. v6}, Lcom/cdv/text/NvAndroidTextLayout;->layoutVertically(ZFZFFF)V

    :cond_5
    return-void
.end method

.method private isSuspectableColorGlyph(Ljava/lang/String;II)Z
    .locals 4

    :goto_0
    const/4 p0, 0x1

    if-ge p2, p3, :cond_12

    .line 515
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x200d

    if-eq v0, v1, :cond_11

    const/16 v1, 0x200c

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 526
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 527
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 528
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->VARIATION_SELECTORS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    .line 531
    :cond_1
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARROWS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->COMBINING_MARKS_FOR_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->DINGBATS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_ALPHANUMERICS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GEOMETRIC_SHAPES:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LETTERLIKE_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->MISCELLANEOUS_TECHNICAL:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->MISCELLANEOUS_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->MISCELLANEOUS_SYMBOLS_AND_ARROWS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->SUPPLEMENTAL_ARROWS_B:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_2

    goto/16 :goto_1

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v1, p3, -0x1

    if-lt p2, v1, :cond_4

    return v2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 556
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 557
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    .line 560
    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 561
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    .line 562
    sget-object v3, Ljava/lang/Character$UnicodeBlock;->VARIATION_SELECTORS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v3, :cond_11

    sget-object v3, Ljava/lang/Character$UnicodeBlock;->TAGS:Ljava/lang/Character$UnicodeBlock;

    if-ne v1, v3, :cond_6

    goto/16 :goto_1

    :cond_6
    const v1, 0x1f600

    if-lt v0, v1, :cond_7

    const v1, 0x1f64f

    if-gt v0, v1, :cond_7

    goto/16 :goto_1

    :cond_7
    const v1, 0x1f300

    if-lt v0, v1, :cond_8

    const v1, 0x1f5ff

    if-gt v0, v1, :cond_8

    goto :goto_1

    :cond_8
    const v1, 0x1f900

    if-lt v0, v1, :cond_9

    const v1, 0x1f9ff

    if-gt v0, v1, :cond_9

    goto :goto_1

    :cond_9
    const v1, 0x1f680

    if-lt v0, v1, :cond_a

    const v1, 0x1f6ff

    if-gt v0, v1, :cond_a

    goto :goto_1

    :cond_a
    const v1, 0x1f000

    if-lt v0, v1, :cond_b

    const v1, 0x1f02f

    if-gt v0, v1, :cond_b

    goto :goto_1

    :cond_b
    const v1, 0x1f0a0

    if-lt v0, v1, :cond_c

    const v1, 0x1f0ff

    if-gt v0, v1, :cond_c

    goto :goto_1

    :cond_c
    const v1, 0x1f100

    if-lt v0, v1, :cond_d

    const v1, 0x1f1ff

    if-gt v0, v1, :cond_d

    goto :goto_1

    :cond_d
    const v1, 0x1f200

    if-lt v0, v1, :cond_e

    const v1, 0x1f2ff

    if-gt v0, v1, :cond_e

    goto :goto_1

    :cond_e
    const v1, 0x1f780

    if-lt v0, v1, :cond_f

    const v1, 0x1f7ff

    if-gt v0, v1, :cond_f

    goto :goto_1

    :cond_f
    const v1, 0x1fa70

    if-lt v0, v1, :cond_10

    const v1, 0x1faff

    if-gt v0, v1, :cond_10

    goto :goto_1

    :cond_10
    return v2

    :cond_11
    :goto_1
    add-int/2addr p2, p0

    goto/16 :goto_0

    :cond_12
    return p0
.end method

.method private layoutVertically(ZFZFFF)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p6

    .line 255
    iget-object v3, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const-string v4, "X"

    .line 256
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    .line 257
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 258
    iget v6, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v6, v6

    iget v7, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    if-eqz p3, :cond_0

    cmpl-float v9, p2, v8

    if-nez v9, :cond_1

    :cond_0
    if-nez p3, :cond_3

    cmpl-float v9, p2, v7

    if-eqz v9, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    add-float v6, v6, p2

    goto :goto_0

    :cond_2
    div-float v7, p2, v7

    mul-float/2addr v6, v7

    .line 267
    :cond_3
    :goto_0
    new-instance v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;-><init>(Lcom/cdv/text/NvAndroidTextLayout$1;)V

    const/4 v9, 0x1

    .line 268
    iput-boolean v9, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->firstLine:Z

    const/4 v10, 0x0

    .line 269
    iput v10, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->currentGlyphCountInLine:I

    .line 270
    iput v8, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->currentLineHeight:F

    .line 271
    iput v8, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->width:F

    .line 272
    iput v8, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    sub-float v11, p5, v4

    .line 273
    iput v11, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->xOrigin:F

    div-float v11, v4, v5

    sub-float v11, p5, v11

    .line 274
    iput v11, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->xCenter:F

    .line 275
    iget v11, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v11, v11

    iput v11, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->yOrigin:F

    const/high16 v11, 0x48000000    # 131072.0f

    if-eqz p1, :cond_4

    .line 279
    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 281
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 282
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget-object v14, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 285
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;

    if-eqz p1, :cond_5

    .line 286
    iget v10, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->currentGlyphCountInLine:I

    if-eqz v10, :cond_5

    .line 288
    iget-object v10, v8, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iget-object v5, v8, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v5

    iget v5, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->yOrigin:F

    add-float/2addr v10, v5

    cmpl-float v5, v10, v11

    if-lez v5, :cond_5

    .line 289
    invoke-virtual {v7, v3, v4, v1}, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->moveToNextLine(Landroid/graphics/Paint$FontMetrics;FF)V

    .line 290
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    .line 296
    :cond_5
    iget v5, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->xCenter:F

    iget-object v10, v8, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    iget-object v9, v8, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    move/from16 v17, v11

    iget v11, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v11

    sub-float/2addr v5, v10

    .line 297
    iget v10, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->yOrigin:F

    sub-float v11, v5, v11

    move-object/from16 v18, v14

    .line 300
    iget v14, v9, Landroid/graphics/PointF;->y:F

    sub-float v14, v10, v14

    .line 301
    iput v5, v9, Landroid/graphics/PointF;->x:F

    .line 302
    iput v10, v9, Landroid/graphics/PointF;->y:F

    .line 303
    iget-object v5, v8, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v5, v11, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 304
    iget-object v5, v8, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    if-eqz v5, :cond_6

    .line 305
    invoke-virtual {v5, v11, v14}, Landroid/graphics/Path;->offset(FF)V

    .line 307
    :cond_6
    iget-object v5, v8, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iput v5, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->currentLineHeight:F

    .line 310
    iget v5, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->yOrigin:F

    add-float/2addr v5, v6

    iput v5, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->yOrigin:F

    .line 312
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget v5, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->currentGlyphCountInLine:I

    const/4 v8, 0x1

    add-int/2addr v5, v8

    iput v5, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->currentGlyphCountInLine:I

    move/from16 v11, v17

    move-object/from16 v14, v18

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_2

    :cond_7
    move/from16 v17, v11

    move-object/from16 v18, v14

    .line 316
    invoke-virtual {v7, v3, v4, v1}, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->moveToNextLine(Landroid/graphics/Paint$FontMetrics;FF)V

    .line 317
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    .line 321
    :cond_8
    iput-object v12, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    .line 327
    iget v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_align:I

    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_9

    .line 328
    iget v3, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->width:F

    sub-float v3, v3, p5

    goto :goto_3

    :cond_9
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_a

    .line 330
    iget v3, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->width:F

    sub-float v3, v3, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    :goto_3
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_b

    .line 333
    iget v1, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    sub-float v1, v2, v1

    goto :goto_4

    :cond_b
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c

    .line 335
    iget v1, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    sub-float v1, v2, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    .line 340
    :goto_4
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    .line 341
    iget-object v2, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/RectF;

    iput-object v2, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    .line 343
    iget-object v2, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v2, :cond_14

    .line 345
    iget-object v4, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 348
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 349
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;

    iget-object v5, v5, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    goto :goto_6

    :cond_d
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 352
    :goto_6
    iget v8, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_innerAlign:I

    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_e

    .line 353
    iget v8, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    sub-float/2addr v8, v5

    add-float/2addr v8, v1

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_7

    :cond_e
    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_f

    .line 355
    iget v8, v7, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    sub-float/2addr v8, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v8, v5

    add-float/2addr v8, v1

    goto :goto_7

    :cond_f
    const/high16 v5, 0x40000000    # 2.0f

    move v8, v1

    .line 357
    :goto_7
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 358
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;

    .line 359
    iget-object v12, v11, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v3

    iput v13, v12, Landroid/graphics/PointF;->x:F

    .line 360
    iget v13, v12, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v8

    iput v13, v12, Landroid/graphics/PointF;->y:F

    .line 361
    iget-object v12, v11, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v12, v3, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 362
    iget-object v12, v11, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    if-eqz v12, :cond_10

    .line 363
    invoke-virtual {v12, v3, v8}, Landroid/graphics/Path;->offset(FF)V

    .line 365
    :cond_10
    invoke-virtual {v9}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_11

    .line 366
    iget-object v11, v11, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v9, v11}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_8

    .line 368
    :cond_11
    iget-object v11, v11, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v9, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_8

    .line 371
    :cond_12
    iget-object v4, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aput-object v9, v4, v10

    .line 373
    iget-object v4, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 374
    iget-object v4, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    invoke-virtual {v4, v9}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_9

    .line 376
    :cond_13
    iget-object v4, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    invoke-virtual {v4, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    :cond_14
    return-void
.end method

.method private prepareGlyphLines()V
    .locals 23

    move-object/from16 v0, p0

    .line 382
    iget-boolean v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphInfoPrepared:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 385
    iput-boolean v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphInfoPrepared:Z

    .line 386
    iget-object v2, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    if-nez v2, :cond_1

    return-void

    .line 389
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    .line 393
    iget-object v2, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    .line 394
    new-array v3, v2, [Landroid/graphics/RectF;

    iput-object v3, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    .line 395
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v2, :cond_f

    .line 397
    iget-object v7, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    aput-object v8, v7, v5

    .line 398
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 399
    iget-object v8, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v8, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v5}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v8

    .line 402
    iget-object v9, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v5}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v9

    .line 403
    iget-object v10, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v10, v5}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v10

    sub-int v11, v10, v9

    .line 404
    new-array v12, v11, [F

    .line 405
    iget-object v13, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v13}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    iget-object v14, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_text:Ljava/lang/String;

    invoke-virtual {v13, v14, v9, v10, v12}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v13

    if-eq v13, v11, :cond_2

    const-string v11, "NvAndroidTextLayout"

    const-string v13, "Paint.getTextWidths() return unexpected value!"

    .line 407
    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v11, v9

    :goto_1
    if-ge v11, v10, :cond_b

    add-int/lit8 v13, v11, 0x1

    :goto_2
    if-ge v13, v10, :cond_3

    sub-int v14, v13, v9

    .line 414
    aget v14, v12, v14

    cmpl-float v14, v14, v4

    if-nez v14, :cond_3

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    sub-int v14, v13, v11

    if-ne v14, v1, :cond_4

    .line 418
    iget-object v14, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_text:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_4

    goto/16 :goto_5

    .line 421
    :cond_4
    new-instance v15, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;

    invoke-direct {v15}, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;-><init>()V

    .line 422
    iput v11, v15, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    .line 423
    iput v13, v15, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->endCharIdx:I

    .line 424
    iput-boolean v3, v15, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->colorGlyph:Z

    .line 425
    iget-object v14, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v14, v11}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v14

    .line 426
    new-instance v4, Landroid/graphics/PointF;

    int-to-float v1, v8

    iget v3, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_yOffset:F

    add-float/2addr v1, v3

    invoke-direct {v4, v14, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, v15, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    .line 427
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v15, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    .line 428
    iget-boolean v1, v15, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->colorGlyph:Z

    if-nez v1, :cond_6

    .line 429
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v15, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    .line 430
    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_text:Ljava/lang/String;

    iget-object v3, v15, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move/from16 v21, v8

    iget-object v8, v15, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    move/from16 v22, v9

    move-object v9, v15

    move-object v15, v1

    move/from16 v16, v11

    move/from16 v17, v13

    move/from16 v18, v4

    move/from16 v19, v3

    move-object/from16 v20, v8

    invoke-virtual/range {v14 .. v20}, Landroid/text/TextPaint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 431
    iget-object v1, v9, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 432
    iget-object v1, v9, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    iget-object v3, v9, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 438
    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_text:Ljava/lang/String;

    invoke-direct {v0, v1, v11, v13}, Lcom/cdv/text/NvAndroidTextLayout;->isSuspectableColorGlyph(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    .line 439
    iput-boolean v1, v9, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->colorGlyph:Z

    goto :goto_3

    :cond_6
    move/from16 v21, v8

    move/from16 v22, v9

    move-object v9, v15

    const/4 v4, 0x0

    .line 443
    :cond_7
    :goto_3
    iget-boolean v1, v9, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->colorGlyph:Z

    if-eqz v1, :cond_8

    .line 444
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 445
    iget-object v3, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v8, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_text:Ljava/lang/String;

    invoke-virtual {v3, v8, v11, v13, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 446
    iget-object v3, v9, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 447
    iget-object v1, v9, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget-object v3, v9, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v8, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 450
    :cond_8
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 453
    iget-object v1, v9, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 454
    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v5

    iget-object v3, v9, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_4

    .line 456
    :cond_9
    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v5

    iget-object v3, v9, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_a
    :goto_4
    move v3, v4

    move v11, v13

    move/from16 v8, v21

    move/from16 v9, v22

    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_b
    :goto_5
    move v4, v3

    .line 462
    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 463
    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 465
    :cond_c
    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 466
    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 467
    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_6

    .line 469
    :cond_d
    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_e
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v3, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_f
    move v4, v3

    .line 473
    iget v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_align:I

    and-int/lit8 v1, v1, 0x7

    iget v3, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_innerAlign:I

    if-eq v1, v3, :cond_1a

    move v3, v4

    :goto_7
    if-ge v3, v2, :cond_1a

    .line 476
    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_f

    .line 479
    :cond_10
    iget-object v1, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 481
    iget v4, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_align:I

    and-int/lit8 v5, v4, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v5, :cond_13

    .line 482
    iget v4, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_innerAlign:I

    if-ne v4, v8, :cond_11

    sub-float v1, v6, v1

    :goto_8
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_d

    :cond_11
    if-ne v4, v7, :cond_12

    sub-float v1, v6, v1

    div-float/2addr v1, v9

    goto :goto_8

    :cond_12
    const/4 v5, 0x1

    goto :goto_b

    :cond_13
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_15

    .line 487
    iget v4, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_innerAlign:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    sub-float v1, v6, v1

    neg-float v1, v1

    goto :goto_c

    :cond_14
    if-ne v4, v7, :cond_17

    goto :goto_9

    :cond_15
    const/4 v5, 0x1

    .line 492
    iget v4, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_innerAlign:I

    if-ne v4, v5, :cond_16

    :goto_9
    sub-float v1, v6, v1

    neg-float v1, v1

    :goto_a
    div-float/2addr v1, v9

    goto :goto_c

    :cond_16
    if-ne v4, v8, :cond_17

    sub-float v1, v6, v1

    goto :goto_a

    :cond_17
    :goto_b
    const/4 v1, 0x0

    :goto_c
    const/4 v4, 0x0

    :goto_d
    cmpl-float v7, v1, v4

    if-nez v7, :cond_18

    goto :goto_f

    .line 501
    :cond_18
    iget-object v7, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    aget-object v7, v7, v3

    invoke-virtual {v7, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 502
    iget-object v7, v0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 503
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;

    .line 504
    iget-object v9, v8, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    invoke-virtual {v9, v1, v4}, Landroid/graphics/PointF;->offset(FF)V

    .line 505
    iget-object v9, v8, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v9, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 506
    iget-object v8, v8, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v8, v1, v4}, Landroid/graphics/Path;->offset(FF)V

    goto :goto_e

    :cond_19
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_1a
    return-void
.end method


# virtual methods
.method public getBoundingRect()Landroid/graphics/RectF;
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/cdv/text/NvAndroidTextLayout;->prepareGlyphLines()V

    .line 113
    iget-object p0, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_textBounding:Landroid/graphics/RectF;

    if-eqz p0, :cond_0

    return-object p0

    .line 116
    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0
.end method

.method public getBoundingRectAtLine(I)Landroid/graphics/RectF;
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/cdv/text/NvAndroidTextLayout;->prepareGlyphLines()V

    if-ltz p1, :cond_1

    .line 131
    iget-object p0, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLinesBounding:[Landroid/graphics/RectF;

    if-eqz p0, :cond_1

    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 132
    :cond_1
    :goto_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0
.end method

.method public getGlyphCountInLine(I)I
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/cdv/text/NvAndroidTextLayout;->prepareGlyphLines()V

    if-ltz p1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object p0, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGlyphInfo(II)Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;
    .locals 2

    .line 148
    invoke-direct {p0}, Lcom/cdv/text/NvAndroidTextLayout;->prepareGlyphLines()V

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-ltz p2, :cond_2

    .line 153
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getLayout()Landroid/text/Layout;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method public getLineCount()I
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/cdv/text/NvAndroidTextLayout;->prepareGlyphLines()V

    .line 122
    iget-object p0, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_glyphLines:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_text:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/cdv/text/NvAndroidTextLayout;->m_layout:Landroid/text/StaticLayout;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public prepareDrawText()Z
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/cdv/text/NvAndroidTextLayout;->prepareGlyphLines()V

    const/4 p0, 0x1

    return p0
.end method
