.class public final Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;
.super Ljava/lang/Object;
.source "SVGACanvasDrawer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShareValues"
.end annotation


# instance fields
.field private shareMatteCanvas:Landroid/graphics/Canvas;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shareMattePaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedMatrix2:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sharedMatteBitmap:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sharedPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedPath:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedPath2:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint:Landroid/graphics/Paint;

    .line 479
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath:Landroid/graphics/Path;

    .line 480
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2:Landroid/graphics/Path;

    .line 481
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix:Landroid/graphics/Matrix;

    .line 482
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix2:Landroid/graphics/Matrix;

    .line 484
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMattePaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final shareMatteCanvas(II)Landroid/graphics/Canvas;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMatteCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 524
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatteBitmap:Landroid/graphics/Bitmap;

    .line 530
    :cond_0
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatteBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public final shareMattePaint()Landroid/graphics/Paint;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMattePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 515
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMattePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final sharedMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 505
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final sharedMatrix2()Landroid/graphics/Matrix;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix2:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 510
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix2:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final sharedMatteBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 519
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatteBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.graphics.Bitmap"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sharedPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 490
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final sharedPath()Landroid/graphics/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 495
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public final sharedPath2()Landroid/graphics/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 500
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2:Landroid/graphics/Path;

    return-object p0
.end method
