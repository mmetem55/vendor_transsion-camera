.class public abstract Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;
.super Ljava/lang/Object;
.source "SVGABitmapDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decodeBitmapFrom(Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 16
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 18
    :goto_0
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 19
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;->onDecode(Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 22
    iget-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v3, :cond_1

    return-object v2

    .line 27
    :cond_1
    sget-object v2, Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;->INSTANCE:Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;

    invoke-virtual {v2, v0, p2, p3}, Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;->calculate(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 29
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;->onDecode(Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public abstract onDecode(Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .param p2    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
