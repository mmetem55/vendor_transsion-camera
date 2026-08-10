.class public final Lcom/opensource/svgaplayer/entities/SVGAPathEntity;
.super Ljava/lang/Object;
.source "SVGAPathEntity.kt"


# instance fields
.field private cachedPath:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final replacedValue:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "originValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ","

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, ","

    const-string v3, " "

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->replacedValue:Ljava/lang/String;

    return-void
.end method

.method private final operate(Landroid/graphics/Path;Ljava/lang/String;Ljava/util/StringTokenizer;)V
    .locals 15

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v0, 0x0

    const/4 v9, 0x0

    move v10, v0

    move v1, v9

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 47
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 48
    invoke-virtual/range {p3 .. p3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    const-string v12, "s"

    .line 49
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_1

    move v12, v13

    goto :goto_1

    :cond_1
    move v12, v0

    :goto_1
    if-nez v12, :cond_0

    if-nez v10, :cond_2

    .line 50
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_2
    if-ne v10, v13, :cond_3

    .line 51
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    :cond_3
    const/4 v12, 0x2

    if-ne v10, v12, :cond_4

    .line 52
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    :cond_4
    const/4 v12, 0x3

    if-ne v10, v12, :cond_5

    .line 53
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    :cond_5
    const/4 v12, 0x4

    if-ne v10, v12, :cond_6

    .line 54
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    :cond_6
    const/4 v12, 0x5

    if-ne v10, v12, :cond_7

    .line 55
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catch_0
    :cond_8
    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    .line 59
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGAPoint;

    invoke-direct {v0, v9, v9, v9}, Lcom/opensource/svgaplayer/utils/SVGAPoint;-><init>(FFF)V

    const-string v1, "M"

    .line 60
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 61
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 62
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGAPoint;

    invoke-direct {v0, v10, v11, v9}, Lcom/opensource/svgaplayer/utils/SVGAPoint;-><init>(FFF)V

    goto :goto_2

    :cond_9
    const-string v1, "m"

    .line 63
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 64
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 65
    new-instance v1, Lcom/opensource/svgaplayer/utils/SVGAPoint;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/SVGAPoint;->getX()F

    move-result v2

    add-float/2addr v2, v10

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/SVGAPoint;->getY()F

    move-result v0

    add-float/2addr v0, v11

    invoke-direct {v1, v2, v0, v9}, Lcom/opensource/svgaplayer/utils/SVGAPoint;-><init>(FFF)V

    move-object v14, v1

    goto :goto_3

    :cond_a
    :goto_2
    move-object v14, v0

    :goto_3
    const-string v0, "L"

    .line 67
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 68
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    :cond_b
    const-string v0, "l"

    .line 69
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 70
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_c
    :goto_4
    const-string v0, "C"

    .line 72
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v0, p1

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_5

    :cond_d
    const-string v0, "c"

    .line 74
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object/from16 v0, p1

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    :cond_e
    :goto_5
    const-string v0, "Q"

    .line 77
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 78
    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_6

    :cond_f
    const-string v0, "q"

    .line 79
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 80
    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    :cond_10
    :goto_6
    const-string v0, "H"

    .line 82
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 83
    invoke-virtual {v14}, Lcom/opensource/svgaplayer/utils/SVGAPoint;->getY()F

    move-result v0

    invoke-virtual {v7, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7

    :cond_11
    const-string v0, "h"

    .line 84
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 85
    invoke-virtual {v7, v10, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_12
    :goto_7
    const-string v0, "V"

    .line 87
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 88
    invoke-virtual {v14}, Lcom/opensource/svgaplayer/utils/SVGAPoint;->getX()F

    move-result v0

    invoke-virtual {v7, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8

    :cond_13
    const-string v0, "v"

    .line 89
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 90
    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_14
    :goto_8
    const-string v0, "Z"

    .line 92
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    goto :goto_9

    :cond_15
    const-string v0, "z"

    .line 95
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    :cond_16
    :goto_9
    return-void
.end method


# virtual methods
.method public final buildPath(Landroid/graphics/Path;)V
    .locals 8
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "toPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->cachedPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return-void

    .line 20
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 21
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->replacedValue:Ljava/lang/String;

    const-string v3, "MLHVCSQRAZmlhvcsqraz"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, ""

    move-object v3, v2

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 24
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "segment"

    .line 25
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_1

    .line 26
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAPathEntityKt;->access$getVALID_METHODS$p()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v3, "Z"

    .line 28
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "z"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v5, v3}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->operate(Landroid/graphics/Path;Ljava/lang/String;Ljava/util/StringTokenizer;)V

    :cond_4
    move-object v3, v5

    goto :goto_0

    .line 31
    :cond_5
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, " "

    invoke-direct {v6, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3, v6}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->operate(Landroid/graphics/Path;Ljava/lang/String;Ljava/util/StringTokenizer;)V

    goto :goto_0

    .line 34
    :cond_6
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->cachedPath:Landroid/graphics/Path;

    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return-void
.end method
