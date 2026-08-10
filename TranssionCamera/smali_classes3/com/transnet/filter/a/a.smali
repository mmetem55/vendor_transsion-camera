.class public final Lcom/transnet/filter/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x10

.field private static final b:I = -0x10000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p0, 0x41800000    # 16.0f

    mul-float/2addr v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    const/high16 p0, -0x10000

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, -0x1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v1, p0, p0, p1, v0}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {v1}, Landroid/widget/TextView;->buildDrawingCache()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v1, 0x14

    div-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    invoke-static {p1, v2, v1, p0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    const/high16 p2, -0x10000

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, -0x1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, p2, p2, v0, v2}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {v1}, Landroid/widget/TextView;->buildDrawingCache()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0x14

    div-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    invoke-static {v0, v3, v2, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {v0, p0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return p2

    :goto_3
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    throw p0
.end method
