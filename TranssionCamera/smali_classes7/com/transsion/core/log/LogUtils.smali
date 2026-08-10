.class public final Lcom/transsion/core/log/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final FILE_SEP:Ljava/lang/String;

.field private static final FORMAT:Ljava/text/Format;

.field private static final LINE_SEP:Ljava/lang/String;

.field private static final T:[C

.field private static defaultDir:Ljava/lang/String;

.field private static dir:Ljava/lang/String;

.field private static executor:Ljava/util/concurrent/ExecutorService;

.field private static sConsoleFilter:I

.field private static sFileFilter:I

.field private static sGlobalTag:Ljava/lang/String;

.field private static sLog2ConsoleSwitch:Z

.field private static sLog2FileSwitch:Z

.field private static sLogBorderSwitch:Z

.field private static sLogHeadSwitch:Z

.field private static sLogSwitch:Z

.field private static sTagIsSpace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 65
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/core/log/LogUtils;->T:[C

    const/4 v0, 0x0

    .line 74
    sput-boolean v0, Lcom/transsion/core/log/LogUtils;->sLogSwitch:Z

    const/4 v1, 0x1

    .line 75
    sput-boolean v1, Lcom/transsion/core/log/LogUtils;->sLog2ConsoleSwitch:Z

    const-string v2, "TAG"

    .line 76
    sput-object v2, Lcom/transsion/core/log/LogUtils;->sGlobalTag:Ljava/lang/String;

    .line 77
    sput-boolean v1, Lcom/transsion/core/log/LogUtils;->sTagIsSpace:Z

    .line 78
    sput-boolean v1, Lcom/transsion/core/log/LogUtils;->sLogHeadSwitch:Z

    .line 79
    sput-boolean v0, Lcom/transsion/core/log/LogUtils;->sLog2FileSwitch:Z

    .line 80
    sput-boolean v1, Lcom/transsion/core/log/LogUtils;->sLogBorderSwitch:Z

    const/4 v0, 0x2

    .line 81
    sput v0, Lcom/transsion/core/log/LogUtils;->sConsoleFilter:I

    .line 82
    sput v0, Lcom/transsion/core/log/LogUtils;->sFileFilter:I

    const-string v0, "file.separator"

    .line 84
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/core/log/LogUtils;->FILE_SEP:Ljava/lang/String;

    const-string v0, "line.separator"

    .line 85
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/core/log/LogUtils;->LINE_SEP:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/core/log/LogUtils;->FORMAT:Ljava/text/Format;

    return-void

    nop

    :array_0
    .array-data 2
        0x56s
        0x44s
        0x49s
        0x57s
        0x45s
        0x41s
    .end array-data
.end method

.method private static addLeftBorder(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 430
    sget-boolean v0, Lcom/transsion/core/log/LogUtils;->sLogBorderSwitch:Z

    if-nez v0, :cond_0

    return-object p0

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    sget-object v1, Lcom/transsion/core/log/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 433
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, "| "

    .line 434
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/core/log/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createOrExistsDir(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 497
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static createOrExistsFile(Ljava/lang/String;)Z
    .locals 2

    .line 485
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 487
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/core/log/LogUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    .line 489
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 491
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method private static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "{"

    .line 366
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "["

    .line 368
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 372
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static formatXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ">"

    .line 379
    :try_start_0
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 380
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 381
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    const-string v4, "indent"

    const-string v5, "yes"

    .line 382
    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "{http://xml.apache.org/xslt}indent-amount"

    const-string v5, "4"

    .line 383
    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v3, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 385
    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/core/log/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 387
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 3

    .line 201
    sget-object v0, Lcom/transsion/core/log/LogUtils;->sGlobalTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x4

    invoke-static {p0, v0, v1}, Lcom/transsion/core/log/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 502
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 503
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 282
    :goto_0
    invoke-static {}, Lcom/transsion/core/CoreUtil;->isLogForceOpen()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    sget-boolean v0, Lcom/transsion/core/log/LogUtils;->sLogSwitch:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/transsion/core/log/LogUtils;->sLog2ConsoleSwitch:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/transsion/core/log/LogUtils;->sLog2FileSwitch:Z

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    and-int/lit8 v0, p0, 0xf

    and-int/lit16 p0, p0, 0xf0

    .line 289
    sget v1, Lcom/transsion/core/log/LogUtils;->sConsoleFilter:I

    if-ge v0, v1, :cond_3

    sget v1, Lcom/transsion/core/log/LogUtils;->sFileFilter:I

    if-ge v0, v1, :cond_3

    return-void

    .line 293
    :cond_3
    invoke-static {p1}, Lcom/transsion/core/log/LogUtils;->processTagAndHead(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-static {p0, p2}, Lcom/transsion/core/log/LogUtils;->processBody(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 295
    sget-boolean v1, Lcom/transsion/core/log/LogUtils;->sLog2ConsoleSwitch:Z

    if-eqz v1, :cond_4

    sget v1, Lcom/transsion/core/log/LogUtils;->sConsoleFilter:I

    if-lt v0, v1, :cond_4

    .line 296
    aget-object v1, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v0, v1, v3, p2}, Lcom/transsion/core/log/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_4
    sget-boolean v1, Lcom/transsion/core/log/LogUtils;->sLog2FileSwitch:Z

    if-nez v1, :cond_5

    const/16 v1, 0x10

    if-ne p0, v1, :cond_6

    .line 299
    :cond_5
    sget p0, Lcom/transsion/core/log/LogUtils;->sFileFilter:I

    if-lt v0, p0, :cond_6

    .line 300
    aget-object p0, p1, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/core/log/LogUtils;->print2File(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 426
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static print2Console(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 393
    sget-boolean v0, Lcom/transsion/core/log/LogUtils;->sLogHeadSwitch:Z

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/transsion/core/log/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, " \n"

    .line 399
    invoke-static {p0, p1, p2}, Lcom/transsion/core/log/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_0
    sget-boolean p2, Lcom/transsion/core/log/LogUtils;->sLogBorderSwitch:Z

    const-string v0, "|---------------------------------------------------------------------------------------------------"

    if-eqz p2, :cond_1

    .line 403
    invoke-static {p0, p1, v0}, Lcom/transsion/core/log/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {p3}, Lcom/transsion/core/log/LogUtils;->addLeftBorder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 406
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    .line 407
    div-int/lit16 v1, p2, 0xfa0

    if-lez v1, :cond_5

    const/4 v2, 0x0

    const/16 v3, 0xfa0

    .line 409
    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/transsion/core/log/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_1
    const-string v4, "| "

    if-ge v2, v1, :cond_3

    add-int/lit16 v5, v3, 0xfa0

    .line 413
    invoke-virtual {p3, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 414
    sget-boolean v6, Lcom/transsion/core/log/LogUtils;->sLogBorderSwitch:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {p0, p1, v3}, Lcom/transsion/core/log/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    .line 417
    :cond_3
    invoke-virtual {p3, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 418
    sget-boolean p3, Lcom/transsion/core/log/LogUtils;->sLogBorderSwitch:Z

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-static {p0, p1, p2}, Lcom/transsion/core/log/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 420
    :cond_5
    invoke-static {p0, p1, p3}, Lcom/transsion/core/log/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 422
    :goto_2
    sget-boolean p2, Lcom/transsion/core/log/LogUtils;->sLogBorderSwitch:Z

    if-eqz p2, :cond_6

    invoke-static {p0, p1, v0}, Lcom/transsion/core/log/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private static print2File(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 440
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 441
    sget-object v1, Lcom/transsion/core/log/LogUtils;->FORMAT:Ljava/text/Format;

    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 442
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 443
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/transsion/core/log/LogUtils;->dir:Ljava/lang/String;

    if-nez v3, :cond_0

    sget-object v3, Lcom/transsion/core/log/LogUtils;->defaultDir:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v1}, Lcom/transsion/core/log/LogUtils;->createOrExistsFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 446
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "log to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed!"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 449
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/core/log/LogUtils;->T:[C

    add-int/lit8 p0, p0, -0x2

    aget-char p0, v0, p0

    .line 451
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "/"

    .line 452
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/core/log/LogUtils;->LINE_SEP:Ljava/lang/String;

    .line 455
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 457
    sget-object p2, Lcom/transsion/core/log/LogUtils;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_2

    .line 458
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    sput-object p2, Lcom/transsion/core/log/LogUtils;->executor:Ljava/util/concurrent/ExecutorService;

    .line 460
    :cond_2
    sget-object p2, Lcom/transsion/core/log/LogUtils;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/transsion/core/log/LogUtils$1;

    invoke-direct {v0, v1, p0, p1}, Lcom/transsion/core/log/LogUtils$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static varargs processBody(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_5

    .line 338
    array-length v0, p1

    const-string v1, "null"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 339
    aget-object p1, p1, v2

    if-nez p1, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 p1, 0x20

    if-ne p0, p1, :cond_1

    .line 342
    invoke-static {v1}, Lcom/transsion/core/log/LogUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_1
    const/16 p1, 0x30

    if-ne p0, p1, :cond_6

    .line 344
    invoke-static {v1}, Lcom/transsion/core/log/LogUtils;->formatXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 347
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_4

    .line 349
    aget-object v3, p1, v2

    const-string v4, "args"

    .line 350
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    .line 351
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    .line 353
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    .line 354
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_3

    move-object v3, v1

    goto :goto_2

    .line 355
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/core/log/LogUtils;->LINE_SEP:Ljava/lang/String;

    .line 356
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 358
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    const-string v1, "Log with null object."

    :cond_6
    :goto_3
    return-object v1
.end method

.method private static processTagAndHead(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 306
    sget-boolean v0, Lcom/transsion/core/log/LogUtils;->sTagIsSpace:Z

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/transsion/core/log/LogUtils;->sLogHeadSwitch:Z

    if-nez v0, :cond_0

    .line 307
    sget-object p0, Lcom/transsion/core/log/LogUtils;->sGlobalTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 309
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v5, 0x5

    aget-object v0, v0, v5

    .line 310
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    .line 311
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 312
    array-length v7, v6

    if-lez v7, :cond_1

    .line 313
    array-length v5, v6

    sub-int/2addr v5, v4

    aget-object v5, v6, v5

    :cond_1
    const-string v6, "$"

    .line 315
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "\\$"

    .line 316
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    .line 318
    :cond_2
    sget-boolean v6, Lcom/transsion/core/log/LogUtils;->sTagIsSpace:Z

    if-eqz v6, :cond_3

    .line 319
    invoke-static {p0}, Lcom/transsion/core/log/LogUtils;->isSpace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object p0, v5

    .line 321
    :cond_3
    sget-boolean v6, Lcom/transsion/core/log/LogUtils;->sLogHeadSwitch:Z

    if-eqz v6, :cond_4

    .line 322
    new-instance v6, Ljava/util/Formatter;

    invoke-direct {v6}, Ljava/util/Formatter;-><init>()V

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 324
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 325
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object v5, v7, v1

    .line 327
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    const-string v0, "%s, %s(%s.java:%d)"

    .line 323
    invoke-virtual {v6, v0, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    .line 329
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/core/log/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    return-object v2

    :cond_4
    :goto_0
    new-array v0, v2, [Ljava/lang/String;

    aput-object p0, v0, v3

    const-string p0, ""

    aput-object p0, v0, v4

    const-string p0, ": "

    aput-object p0, v0, v1

    return-object v0
.end method
