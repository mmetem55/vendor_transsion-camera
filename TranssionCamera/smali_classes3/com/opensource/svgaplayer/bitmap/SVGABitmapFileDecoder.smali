.class public final Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;
.super Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;
.source "SVGABitmapFileDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;->INSTANCE:Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDecode(Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;->onDecode(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public onDecode(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ops"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
