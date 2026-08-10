.class public Lcom/opensource/svgaplayer/drawer/SGVADrawer;
.super Ljava/lang/Object;
.source "SGVADrawer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSGVADrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SGVADrawer.kt\ncom/opensource/svgaplayer/drawer/SGVADrawer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1601#2,9:55\n1849#2:64\n1850#2:66\n1610#2:67\n1849#2,2:68\n1#3:65\n*S KotlinDebug\n*F\n+ 1 SGVADrawer.kt\ncom/opensource/svgaplayer/drawer/SGVADrawer\n*L\n28#1:55,9\n28#1:64\n28#1:66\n28#1:67\n46#1:68,2\n28#1:65\n*E\n"
.end annotation


# instance fields
.field private final scaleInfo:Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spritePool:Lcom/opensource/svgaplayer/utils/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opensource/svgaplayer/utils/Pools$SimplePool<",
            "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 2
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 17
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->scaleInfo:Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    .line 19
    new-instance v0, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSpriteList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->spritePool:Lcom/opensource/svgaplayer/utils/Pools$SimplePool;

    return-void
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView$ScaleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "canvas"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "scaleType"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->scaleInfo:Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float v2, p1

    iget-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide p1

    double-to-float v3, p1

    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide p0

    double-to-float v4, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->performScaleType(FFFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public final getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->scaleInfo:Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    return-object p0
.end method

.method public final getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    return-object p0
.end method

.method public final releaseFrameSprites$com_opensource_svgaplayer(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sprites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    check-cast p1, Ljava/lang/Iterable;

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    .line 46
    iget-object v1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->spritePool:Lcom/opensource/svgaplayer/utils/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final requestFrameSprites$com_opensource_svgaplayer(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSpriteList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1601
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1609
    check-cast v2, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;

    const/4 v3, 0x0

    if-ltz p1, :cond_3

    .line 29
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getFrames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_3

    .line 30
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getImageKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, ".matte"

    .line 31
    invoke-static {v4, v7, v5, v6, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getFrames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    iget-object v3, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->spritePool:Lcom/opensource/svgaplayer/utils/Pools$SimplePool;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    if-nez v3, :cond_2

    new-instance v3, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;-><init>(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    :cond_2
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getMatteKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->set_matteKey(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getImageKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->set_imageKey(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getFrames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    invoke-virtual {v3, v2}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->set_frameEntity(Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V

    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 1609
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method
