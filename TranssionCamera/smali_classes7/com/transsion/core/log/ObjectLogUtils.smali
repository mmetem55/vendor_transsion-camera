.class public final Lcom/transsion/core/log/ObjectLogUtils;
.super Ljava/lang/Object;
.source "ObjectLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/core/log/ObjectLogUtils$Builder;
    }
.end annotation


# static fields
.field private static final FILE_SEP:Ljava/lang/String;

.field private static final LINE_SEP:Ljava/lang/String;

.field private static final T:[C


# instance fields
.field private final ARGS:Ljava/lang/String;

.field private final BOTTOM_BORDER:Ljava/lang/String;

.field private final FILE:I

.field private final FORMAT:Ljava/text/Format;

.field private final JSON:I

.field private final LEFT_BORDER:Ljava/lang/String;

.field private final MAX_LEN:I

.field private final NULL:Ljava/lang/String;

.field private final NULL_TIPS:Ljava/lang/String;

.field private final TOP_BORDER:Ljava/lang/String;

.field private final XML:I

.field builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private invokeLayer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 66
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/core/log/ObjectLogUtils;->T:[C

    const-string v0, "file.separator"

    .line 67
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/core/log/ObjectLogUtils;->FILE_SEP:Ljava/lang/String;

    const-string v0, "line.separator"

    .line 68
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/core/log/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

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

.method private constructor <init>(Lcom/transsion/core/log/ObjectLogUtils$Builder;)V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 70
    iput v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->FILE:I

    const/16 v0, 0x20

    .line 71
    iput v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->JSON:I

    const/16 v0, 0x30

    .line 72
    iput v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->XML:I

    const-string v0, "|---------------------------------------------------------------------------------------------------"

    .line 76
    iput-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->TOP_BORDER:Ljava/lang/String;

    const-string v1, "| "

    .line 77
    iput-object v1, p0, Lcom/transsion/core/log/ObjectLogUtils;->LEFT_BORDER:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->BOTTOM_BORDER:Ljava/lang/String;

    const/16 v0, 0xfa0

    .line 79
    iput v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->MAX_LEN:I

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->FORMAT:Ljava/text/Format;

    const-string v0, "Log with null object."

    .line 82
    iput-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->NULL_TIPS:Ljava/lang/String;

    const-string v0, "null"

    .line 83
    iput-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->NULL:Ljava/lang/String;

    const-string v0, "args"

    .line 84
    iput-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->ARGS:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-direct {v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->invokeLayer:I

    .line 92
    iput-object p1, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/core/log/ObjectLogUtils$Builder;Lcom/transsion/core/log/ObjectLogUtils$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;-><init>(Lcom/transsion/core/log/ObjectLogUtils$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/transsion/core/log/ObjectLogUtils;->isSpace(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/transsion/core/log/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[C
    .locals 1

    .line 52
    sget-object v0, Lcom/transsion/core/log/ObjectLogUtils;->T:[C

    return-object v0
.end method

.method private addLeftBorder(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 442
    iget-object p0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {p0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1300(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    .line 443
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    sget-object v0, Lcom/transsion/core/log/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 445
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "| "

    .line 446
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/core/log/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createOrExistsDir(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 519
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

    .line 507
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 509
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/core/log/ObjectLogUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    .line 511
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 513
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method private static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "{"

    .line 378
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "["

    .line 380
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 384
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method private formatXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string p0, ">"

    .line 391
    :try_start_0
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 392
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 393
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    const-string v3, "indent"

    const-string v4, "yes"

    .line 394
    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "{http://xml.apache.org/xslt}indent-amount"

    const-string v4, "4"

    .line 395
    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v2, v0, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 397
    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/core/log/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 399
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 524
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 525
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

.method private varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 290
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    const/4 v1, 0x3

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$600(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$700(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$800(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    and-int/lit8 v0, p1, 0xf

    and-int/lit16 p1, p1, 0xf0

    .line 297
    iget-object v1, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v1}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$900(Lcom/transsion/core/log/ObjectLogUtils$Builder;)I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v1}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1000(Lcom/transsion/core/log/ObjectLogUtils$Builder;)I

    move-result v1

    if-ge v0, v1, :cond_3

    return-void

    .line 300
    :cond_3
    invoke-direct {p0, p2}, Lcom/transsion/core/log/ObjectLogUtils;->processTagAndHead(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 301
    invoke-direct {p0, p1, p3}, Lcom/transsion/core/log/ObjectLogUtils;->processBody(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 302
    iget-object v1, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v1}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$700(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v1}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$900(Lcom/transsion/core/log/ObjectLogUtils$Builder;)I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 303
    aget-object v1, p2, v2

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-direct {p0, v0, v1, v3, p3}, Lcom/transsion/core/log/ObjectLogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_4
    iget-object v1, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v1}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$800(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x10

    if-ne p1, v1, :cond_6

    .line 306
    :cond_5
    iget-object p1, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {p1}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1000(Lcom/transsion/core/log/ObjectLogUtils$Builder;)I

    move-result p1

    if-lt v0, p1, :cond_6

    .line 307
    aget-object p1, p2, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    aget-object p2, p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/core/log/ObjectLogUtils;->print2File(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 438
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private print2Console(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 405
    iget-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1200(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/transsion/core/log/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, " \n"

    .line 411
    invoke-static {p1, p2, p3}, Lcom/transsion/core/log/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_0
    iget-object p3, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {p3}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1300(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result p3

    const-string v0, "|---------------------------------------------------------------------------------------------------"

    if-eqz p3, :cond_1

    .line 415
    invoke-static {p1, p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-direct {p0, p4}, Lcom/transsion/core/log/ObjectLogUtils;->addLeftBorder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 418
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    .line 419
    div-int/lit16 v1, p3, 0xfa0

    if-lez v1, :cond_5

    const/4 v2, 0x0

    const/16 v3, 0xfa0

    .line 421
    invoke-virtual {p4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/transsion/core/log/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_1
    const-string v4, "| "

    if-ge v2, v1, :cond_3

    add-int/lit16 v5, v3, 0xfa0

    .line 425
    invoke-virtual {p4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 426
    iget-object v6, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v6}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1300(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {p1, p2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    .line 429
    :cond_3
    invoke-virtual {p4, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 430
    iget-object p4, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {p4}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1300(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result p4

    if-eqz p4, :cond_4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_4
    invoke-static {p1, p2, p3}, Lcom/transsion/core/log/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 432
    :cond_5
    invoke-static {p1, p2, p4}, Lcom/transsion/core/log/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 434
    :goto_2
    iget-object p0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {p0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1300(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p1, p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->print(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private print2File(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 452
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 453
    iget-object v1, p0, Lcom/transsion/core/log/ObjectLogUtils;->FORMAT:Ljava/text/Format;

    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 454
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 455
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    iget-object v2, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v2}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1400(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 458
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "log"

    if-eqz v2, :cond_0

    .line 459
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/core/utils/Commutil;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/core/utils/Commutil;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/transsion/core/log/ObjectLogUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1402(Lcom/transsion/core/log/ObjectLogUtils$Builder;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/transsion/core/log/ObjectLogUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1402(Lcom/transsion/core/log/ObjectLogUtils$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v3}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1500(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v3}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1400(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v3}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1500(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {v1}, Lcom/transsion/core/log/ObjectLogUtils;->createOrExistsFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 468
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "log to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 471
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/core/log/ObjectLogUtils;->T:[C

    add-int/lit8 p1, p1, -0x2

    aget-char p1, v0, p1

    .line 473
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "/"

    .line 474
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/transsion/core/log/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    .line 477
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 479
    iget-object p3, p0, Lcom/transsion/core/log/ObjectLogUtils;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez p3, :cond_4

    .line 480
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/core/log/ObjectLogUtils;->executor:Ljava/util/concurrent/ExecutorService;

    .line 482
    :cond_4
    iget-object p3, p0, Lcom/transsion/core/log/ObjectLogUtils;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/transsion/core/log/ObjectLogUtils$1;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/transsion/core/log/ObjectLogUtils$1;-><init>(Lcom/transsion/core/log/ObjectLogUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private varargs processBody(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_5

    .line 350
    array-length v0, p2

    const-string v1, "null"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 351
    aget-object p2, p2, v2

    if-nez p2, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 p2, 0x20

    if-ne p1, p2, :cond_1

    .line 354
    invoke-static {v1}, Lcom/transsion/core/log/ObjectLogUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_1
    const/16 p2, 0x30

    if-ne p1, p2, :cond_6

    .line 356
    invoke-direct {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->formatXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 359
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    array-length p1, p2

    :goto_1
    if-ge v2, p1, :cond_4

    .line 361
    aget-object v0, p2, v2

    const-string v3, "args"

    .line 362
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    .line 363
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    .line 365
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    .line 366
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 367
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/core/log/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    .line 368
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 370
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

.method private processTagAndHead(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 318
    iget-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1100(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1200(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object p0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {p0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$500(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 321
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iget v5, p0, Lcom/transsion/core/log/ObjectLogUtils;->invokeLayer:I

    add-int/lit8 v5, v5, 0x5

    aget-object v0, v0, v5

    .line 322
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    .line 323
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 324
    array-length v7, v6

    if-lez v7, :cond_1

    .line 325
    array-length v5, v6

    sub-int/2addr v5, v4

    aget-object v5, v6, v5

    :cond_1
    const-string v6, "$"

    .line 327
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "\\$"

    .line 328
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    .line 330
    :cond_2
    iget-object v6, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v6}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1100(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 331
    invoke-static {p1}, Lcom/transsion/core/log/ObjectLogUtils;->isSpace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object p1, v5

    .line 333
    :cond_3
    iget-object p0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {p0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$1200(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 334
    new-instance p0, Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/util/Formatter;-><init>()V

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 337
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v5, v6, v1

    .line 339
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    const-string v0, "%s, %s(%s.java:%d)"

    .line 335
    invoke-virtual {p0, v0, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .line 340
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    .line 341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/core/log/ObjectLogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0

    :cond_4
    move-object p0, p1

    :goto_0
    new-array p1, v2, [Ljava/lang/String;

    aput-object p0, p1, v3

    const-string p0, ""

    aput-object p0, p1, v4

    const-string p0, ": "

    aput-object p0, p1, v1

    return-object p1
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$500(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$500(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x6

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getBuilder()Lcom/transsion/core/log/ObjectLogUtils$Builder;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    return-object p0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$500(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/transsion/core/log/ObjectLogUtils;->builder:Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-static {v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->access$500(Lcom/transsion/core/log/ObjectLogUtils$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
