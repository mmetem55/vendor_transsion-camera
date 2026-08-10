.class public final Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;
.super Ljava/lang/Object;
.source "BitmapSampleSizeCalculator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmapSampleSizeCalculator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapSampleSizeCalculator.kt\ncom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,33:1\n1#2:34\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;->INSTANCE:Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculate(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 2
    .param p1    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "options"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-lez p3, :cond_2

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    if-gt p1, p3, :cond_1

    if-le p0, p2, :cond_2

    .line 21
    :cond_1
    div-int/lit8 p1, p1, 0x2

    .line 22
    div-int/lit8 p0, p0, 0x2

    .line 26
    :goto_0
    div-int v1, p1, v0

    if-lt v1, p3, :cond_2

    div-int v1, p0, v0

    if-lt v1, p2, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method
