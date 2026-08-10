.class public final Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;
.super Ljava/lang/Object;
.source "SVGAVideoSpriteFrameEntity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAVideoSpriteFrameEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAVideoSpriteFrameEntity.kt\ncom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1#2:96\n1547#3:97\n1618#3,3:98\n*S KotlinDebug\n*F\n+ 1 SVGAVideoSpriteFrameEntity.kt\ncom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity\n*L\n89#1:97\n89#1:98,3\n*E\n"
.end annotation


# instance fields
.field private alpha:D

.field private layout:Lcom/opensource/svgaplayer/utils/SVGARect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maskPath:Lcom/opensource/svgaplayer/entities/SVGAPathEntity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transform:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/proto/FrameEntity;)V
    .locals 12
    .param p1    # Lcom/opensource/svgaplayer/proto/FrameEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    .line 18
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    .line 61
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->alpha:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    float-to-double v2, v0

    iput-wide v2, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->alpha:D

    .line 62
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->layout:Lcom/opensource/svgaplayer/proto/Layout;

    if-eqz v0, :cond_5

    .line 63
    new-instance v11, Lcom/opensource/svgaplayer/utils/SVGARect;

    iget-object v2, v0, Lcom/opensource/svgaplayer/proto/Layout;->x:Ljava/lang/Float;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    float-to-double v3, v2

    iget-object v2, v0, Lcom/opensource/svgaplayer/proto/Layout;->y:Ljava/lang/Float;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    float-to-double v5, v2

    .line 64
    iget-object v2, v0, Lcom/opensource/svgaplayer/proto/Layout;->width:Ljava/lang/Float;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    float-to-double v7, v2

    iget-object v0, v0, Lcom/opensource/svgaplayer/proto/Layout;->height:Ljava/lang/Float;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    float-to-double v9, v0

    move-object v2, v11

    .line 63
    invoke-direct/range {v2 .. v10}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v11, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    .line 67
    :cond_5
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    const/16 v4, 0x9

    new-array v4, v4, [F

    .line 69
    iget-object v5, v0, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_6

    move v5, v6

    goto :goto_5

    :cond_6
    const-string v7, "it.a ?: 1.0f"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 70
    :goto_5
    iget-object v7, v0, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    if-nez v7, :cond_7

    move v7, v1

    goto :goto_6

    :cond_7
    const-string v8, "it.b ?: 0.0f"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 71
    :goto_6
    iget-object v8, v0, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    if-nez v8, :cond_8

    move v8, v1

    goto :goto_7

    :cond_8
    const-string v9, "it.c ?: 0.0f"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 72
    :goto_7
    iget-object v9, v0, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    if-nez v9, :cond_9

    move v9, v6

    goto :goto_8

    :cond_9
    const-string v10, "it.d ?: 1.0f"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 73
    :goto_8
    iget-object v10, v0, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    if-nez v10, :cond_a

    move v10, v1

    goto :goto_9

    :cond_a
    const-string v11, "it.tx ?: 0.0f"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 74
    :goto_9
    iget-object v0, v0, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_a

    :cond_b
    const-string v11, "it.ty ?: 0.0f"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_a
    aput v5, v4, v3

    aput v8, v4, v2

    const/4 v5, 0x2

    aput v10, v4, v5

    const/4 v5, 0x3

    aput v7, v4, v5

    const/4 v5, 0x4

    aput v9, v4, v5

    const/4 v5, 0x5

    aput v0, v4, v5

    const/4 v0, 0x6

    aput v1, v4, v0

    const/4 v0, 0x7

    aput v1, v4, v0

    const/16 v0, 0x8

    aput v6, v4, v0

    .line 84
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 86
    :cond_c
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->clipPath:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_d

    goto :goto_b

    :cond_d
    move v2, v3

    :goto_b
    if-eqz v2, :cond_e

    goto :goto_c

    :cond_e
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_f

    .line 87
    new-instance v1, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    invoke-direct {v1, v0}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->maskPath:Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    .line 89
    :cond_f
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->shapes:Ljava/util/List;

    const-string v0, "obj.shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/opensource/svgaplayer/proto/ShapeEntity;

    .line 90
    new-instance v2, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;-><init>(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 89
    :cond_10
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 15
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "obj"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v2, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v2, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    .line 16
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    .line 18
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    const-string v2, "alpha"

    const-wide/16 v3, 0x0

    .line 21
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->alpha:D

    const-string v2, "layout"

    .line 22
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 23
    new-instance v14, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-string v5, "x"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-string v5, "y"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v5, "width"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    const-string v5, "height"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v14, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    :cond_0
    const-string v2, "transform"

    .line 25
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v7, 0x9

    new-array v7, v7, [F

    const-string v8, "a"

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 27
    invoke-virtual {v2, v8, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    const-string v8, "b"

    .line 28
    invoke-virtual {v2, v8, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    const-string v8, "c"

    .line 29
    invoke-virtual {v2, v8, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v8, "d"

    .line 30
    invoke-virtual {v2, v8, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v10, "tx"

    .line 31
    invoke-virtual {v2, v10, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v10, "ty"

    .line 32
    invoke-virtual {v2, v10, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v4, v11

    const/4 v10, 0x0

    aput v4, v7, v10

    double-to-float v4, v5

    const/4 v5, 0x1

    aput v4, v7, v5

    const/4 v4, 0x2

    double-to-float v0, v0

    aput v0, v7, v4

    const/4 v0, 0x3

    double-to-float v1, v13

    aput v1, v7, v0

    const/4 v0, 0x4

    double-to-float v1, v8

    aput v1, v7, v0

    const/4 v0, 0x5

    double-to-float v1, v2

    aput v1, v7, v0

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v7, v0

    const/4 v0, 0x7

    aput v1, v7, v0

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v7, v0

    move-object v0, p0

    .line 42
    iget-object v1, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v7}, Landroid/graphics/Matrix;->setValues([F)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    const/4 v10, 0x0

    :goto_0
    const-string v1, "clipPath"

    move-object/from16 v2, p1

    .line 44
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 45
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    move v5, v10

    :goto_1
    if-eqz v5, :cond_3

    .line 46
    new-instance v3, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    invoke-direct {v3, v1}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->maskPath:Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    :cond_3
    const-string v1, "shapes"

    .line 49
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v6, v10

    :goto_2
    if-ge v6, v3, :cond_5

    .line 52
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "optJSONObject(i)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v5, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;

    invoke-direct {v5, v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 56
    :cond_5
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    :cond_6
    return-void
.end method


# virtual methods
.method public final getAlpha()D
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->alpha:D

    return-wide v0
.end method

.method public final getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    return-object p0
.end method

.method public final getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->maskPath:Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    return-object p0
.end method

.method public final getShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    return-object p0
.end method

.method public final getTransform()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final setShapes(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    return-void
.end method
