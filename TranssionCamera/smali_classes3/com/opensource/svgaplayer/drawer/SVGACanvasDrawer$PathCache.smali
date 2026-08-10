.class public final Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;
.super Ljava/lang/Object;
.source "SVGACanvasDrawer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PathCache"
.end annotation


# instance fields
.field private final cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private canvasHeight:I

.field private canvasWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->cache:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final buildPath(Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;)Landroid/graphics/Path;
    .locals 2
    .param p1    # Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 551
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getShapePath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 552
    iget-object v1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->cache:Ljava/util/HashMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_0
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->cache:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/graphics/Path;

    return-object p0
.end method

.method public final onSizeChanged(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    iget v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->canvasWidth:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->canvasHeight:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 544
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->canvasWidth:I

    .line 545
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->canvasHeight:I

    return-void
.end method
