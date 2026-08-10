.class public Lcom/transsion/widgetscore/utils/CoreUtils;
.super Ljava/lang/Object;
.source "CoreUtils.java"


# static fields
.field public static IS_4D_VIBRATE_SUPPORT:Z

.field private static OLED_SCREEN_STATE:I

.field private static WATERFALL_SCREEN_STATE:I

.field public static final mOsType:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "hios"

    const-string v1, "xos"

    const-string v2, "itel"

    .line 49
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetscore/utils/CoreUtils;->mOsType:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 59
    sput v0, Lcom/transsion/widgetscore/utils/CoreUtils;->WATERFALL_SCREEN_STATE:I

    .line 65
    sput v0, Lcom/transsion/widgetscore/utils/CoreUtils;->OLED_SCREEN_STATE:I

    const-string v0, "ro.tran_vibrate_ontouch.support"

    .line 518
    invoke-static {v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/widgetscore/utils/CoreUtils;->IS_4D_VIBRATE_SUPPORT:Z

    return-void
.end method

.method public static bitmap2InputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;
    .locals 3

    .line 448
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 449
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 450
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1

    .line 454
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 455
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v0, p1, :cond_1

    if-le p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 458
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p0, p0

    int-to-float p2, p2

    div-float/2addr p0, p2

    .line 459
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 460
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static compressBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 385
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 386
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 387
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->drawable2InputStream(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Ljava/io/InputStream;

    move-result-object p0

    .line 388
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 389
    array-length p1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 390
    invoke-static {v0, p2, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    .line 391
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 392
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 393
    array-length v3, p0

    invoke-static {p0, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-ne p1, v1, :cond_1

    .line 394
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne p1, p2, :cond_0

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq p1, p2, :cond_1

    .line 395
    :cond_0
    invoke-static {p0, p2, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 565
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static drawable2Bitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 427
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    .line 428
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz p0, :cond_0

    move p0, p2

    :cond_0
    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 435
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 441
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 442
    invoke-virtual {p1, v2, v2, p0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 443
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static drawable2InputStream(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Ljava/io/InputStream;
    .locals 0

    .line 422
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->drawable2Bitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 423
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->bitmap2InputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 584
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 585
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 586
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 587
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 588
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 589
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getHardwareType()I
    .locals 2

    .line 534
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 535
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public static getReflectFieldInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 374
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 375
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 376
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 377
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 379
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 523
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 524
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 525
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 527
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSystemProperties Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "widgetslib.Utils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static inputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 4

    .line 401
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 405
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 406
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 412
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 413
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 415
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 409
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 413
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 418
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 412
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 413
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 415
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 417
    :goto_3
    throw v1
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 0

    .line 466
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isBoldTextAdjustment(Landroid/content/Context;)Z
    .locals 1

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/16 v0, 0x12c

    .line 553
    iget p0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDarkMode(Landroid/content/Context;)Z
    .locals 1

    .line 560
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOLED()Z
    .locals 4

    .line 504
    sget v0, Lcom/transsion/widgetscore/utils/CoreUtils;->OLED_SCREEN_STATE:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const-string v0, "ro.transsion.lcd.type"

    .line 505
    invoke-static {v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    sput v2, Lcom/transsion/widgetscore/utils/CoreUtils;->OLED_SCREEN_STATE:I

    return v2

    .line 510
    :cond_0
    sput v1, Lcom/transsion/widgetscore/utils/CoreUtils;->OLED_SCREEN_STATE:I

    return v1

    :cond_1
    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isRtl()Z
    .locals 2

    .line 470
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 471
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isRtlDigit()Z
    .locals 5

    .line 475
    invoke-static {}, Lcom/transsion/widgetscore/utils/CoreUtils;->isRtl()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%d"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isWaterfallScreen(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    .line 480
    :try_start_0
    sget v1, Lcom/transsion/widgetscore/utils/CoreUtils;->WATERFALL_SCREEN_STATE:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 482
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "waterfall_display_left_edge_size"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 484
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-lez p0, :cond_1

    .line 487
    sput v3, Lcom/transsion/widgetscore/utils/CoreUtils;->WATERFALL_SCREEN_STATE:I

    return v3

    .line 490
    :cond_1
    sput v0, Lcom/transsion/widgetscore/utils/CoreUtils;->WATERFALL_SCREEN_STATE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_2
    if-ne v1, v3, :cond_3

    move v0, v3

    :cond_3
    return v0

    :catch_0
    move-exception p0

    .line 497
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static measureTextHeight(Landroid/graphics/Paint;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 545
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 546
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    return v0
.end method

.method public static setMenuIconEnable(Landroid/view/Menu;Z)V
    .locals 6

    :try_start_0
    const-string v0, "com.android.internal.view.menu.MenuBuilder"

    .line 605
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setOptionalIconsVisible"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 606
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 607
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 609
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 611
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setMenuItemSelected(Landroid/view/Menu;II)V
    .locals 1

    const/4 v0, -0x1

    .line 650
    invoke-static {p0, p1, p2, v0, v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->setMenuItemSelected(Landroid/view/Menu;IIII)V

    return-void
.end method

.method public static setMenuItemSelected(Landroid/view/Menu;IIII)V
    .locals 4

    if-eqz p0, :cond_4

    if-gtz p1, :cond_0

    goto :goto_3

    :cond_0
    if-lez p3, :cond_3

    if-gtz p4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    .line 632
    invoke-static {p0, v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->setMenuIconEnable(Landroid/view/Menu;Z)V

    .line 634
    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 636
    invoke-interface {p0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 637
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 638
    invoke-interface {v2, p3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 641
    invoke-static {v2, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->setMenuItemTitleColor(Landroid/view/MenuItem;I)V

    goto :goto_1

    .line 643
    :cond_2
    invoke-interface {v2, p4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    :cond_3
    :goto_2
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->setMenuItemTitleColor(Landroid/view/MenuItem;I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static setMenuItemTitleColor(Landroid/view/MenuItem;I)V
    .locals 4

    if-eqz p0, :cond_1

    .line 654
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 658
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 659
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p1, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 660
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method public static sp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 571
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 570
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method
