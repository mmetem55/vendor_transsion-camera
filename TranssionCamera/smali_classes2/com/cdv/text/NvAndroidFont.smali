.class public Lcom/cdv/text/NvAndroidFont;
.super Ljava/lang/Object;
.source "NvAndroidFont.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NvAndroidFont"

.field private static final m_typefaceMutex:Ljava/lang/Object;

.field private static final m_verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cdv/text/NvAndroidFont;->m_typefaceMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTextPaint(Landroid/graphics/Typeface;FIZFZ)Landroid/text/TextPaint;
    .locals 3

    .line 97
    :try_start_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setHinting(I)V

    .line 100
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 101
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/16 p1, 0x1f4

    const/4 v2, 0x1

    if-le p2, p1, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/graphics/Typeface;->isBold()Z

    move-result p1

    if-nez p1, :cond_0

    .line 104
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_0
    if-eqz p3, :cond_1

    .line 106
    invoke-virtual {p0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result p0

    if-nez p0, :cond_1

    const/high16 p0, -0x41800000    # -0.25f

    .line 107
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :cond_1
    const/high16 p0, 0x42c80000    # 100.0f

    const/4 p1, 0x0

    if-eqz p5, :cond_2

    cmpl-float p2, p4, p1

    if-nez p2, :cond_3

    :cond_2
    if-nez p5, :cond_5

    cmpl-float p2, p4, p0

    if-eqz p2, :cond_5

    :cond_3
    if-eqz p5, :cond_4

    const-string p0, "X"

    .line 111
    invoke-virtual {v0, p0, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result p0

    goto :goto_0

    :cond_4
    sub-float/2addr p4, p0

    :goto_0
    div-float/2addr p4, p0

    goto :goto_1

    :cond_5
    move p4, p1

    :goto_1
    cmpl-float p0, p4, p1

    if-eqz p0, :cond_6

    .line 123
    invoke-virtual {v0, p4}, Landroid/text/TextPaint;->setLetterSpacing(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object v0

    :catch_0
    move-exception p0

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NvAndroidFont"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createTypeface(Ljava/lang/String;IZ)Landroid/graphics/Typeface;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    move-object p0, v0

    .line 36
    :cond_1
    invoke-static {p1, p2}, Lcom/cdv/text/NvAndroidFont;->getTypefaceStyle(IZ)I

    move-result v1

    .line 34
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 43
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 45
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NvAndroidFont"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static createTypefaceFromFile(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/graphics/Typeface;
    .locals 1

    :try_start_0
    const-string v0, "assets:/"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/16 v0, 0x8

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    .line 80
    :goto_0
    invoke-static {p0, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NvAndroidFont"

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTypefaceStyle(IZ)I
    .locals 1

    const/16 v0, 0x1f4

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 p0, p0, 0x2

    :cond_1
    return p0
.end method

.method public static measureCharWidth(Landroid/text/TextPaint;C)F
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    .line 142
    invoke-virtual {p0, v1, v2, v0}, Landroid/text/TextPaint;->measureText([CII)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
