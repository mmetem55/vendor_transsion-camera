.class public final Lcom/opensource/svgaplayer/SVGAParser;
.super Ljava/lang/Object;
.source "SVGAParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;,
        Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;,
        Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;,
        Lcom/opensource/svgaplayer/SVGAParser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAParser.kt\ncom/opensource/svgaplayer/SVGAParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,566:1\n1#2:567\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mShareParser:Lcom/opensource/svgaplayer/SVGAParser;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final threadNum:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static threadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private fileDownloader:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile mFrameHeight:I

.field private volatile mFrameWidth:I


# direct methods
.method public static synthetic $r8$lambda$CFkSFqDx6oaTn32v1Srioxni_4g(Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromSVGAFileCacheKey$lambda-6(Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RKGfJZQOSCpoFNxVr4HVuHzSsT0(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAParser;->invokeCompleteCallback$lambda-15(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZB5VKdYIB1CWIOWB4AWqlPrhCmg(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets$lambda-1(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fgw0ryocaxFwlCD28BfyHaZ4VY4(Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 0

    invoke-static {p0}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback$lambda-16(Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gjPrEU8NFdoZJlejKB9ULp3466Q(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;ZLjava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream$lambda-14(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;ZLjava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mkaDKnTd6mrfmcewYRTYfFJr2oY(Ljava/lang/String;[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream$lambda-14$lambda-13$lambda-11(Ljava/lang/String;[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$oEo-tiOiPx3JZZr11GnQJ8dQmt8(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromURL$lambda-2(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zfdHF0-oB3EUt-goCHNDKf944G8(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor$lambda-31(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/opensource/svgaplayer/SVGAParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/opensource/svgaplayer/SVGAParser;->Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 111
    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser;

    invoke-direct {v0, v1}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/opensource/svgaplayer/SVGAParser;->mShareParser:Lcom/opensource/svgaplayer/SVGAParser;

    .line 113
    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    .line 29
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGACache;->onCreate(Landroid/content/Context;)V

    .line 105
    new-instance p1, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    invoke-direct {p1}, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser;->fileDownloader:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    return-void
.end method

.method public static final synthetic access$getThreadPoolExecutor$cp()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 25
    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final synthetic access$invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$invokeErrorCallback(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic decodeFromAssets$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 136
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    return-void
.end method

.method private static final decodeFromAssets$lambda-1(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///assets/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v1, p0

    move-object v4, p2

    move-object v6, p3

    move-object v7, p1

    .line 149
    invoke-virtual/range {v1 .. v7}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 159
    invoke-direct {p0, p3, p2, p1}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private final decodeFromCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 10

    .line 402
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================ decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from cache ================"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SVGAParser"

    invoke-virtual {v0, v2, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeFromCacheKey called with cacheKey : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p0, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    .line 405
    invoke-virtual {v0, v2, p0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 409
    :cond_0
    :try_start_0
    sget-object v1, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v1, p1}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 410
    new-instance v1, Ljava/io/File;

    const-string v3, "movie.binary"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_2

    :try_start_1
    const-string v3, "binary change to entity"

    .line 412
    invoke-virtual {v0, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v5, "binary change to entity success"

    .line 414
    invoke-virtual {v0, v2, v5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v5, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 417
    sget-object v6, Lcom/opensource/svgaplayer/proto/MovieEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v3}, Lcom/squareup/wire/ProtoAdapter;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "ADAPTER.decode(it)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 419
    iget v7, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 420
    iget v8, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    .line 416
    invoke-direct {v5, v6, p1, v7, v8}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    .line 415
    invoke-direct {p0, v5, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    .line 425
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    :try_start_3
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 428
    :try_start_6
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v4, "binary change to entity fail"

    invoke-virtual {v3, v2, v4, v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 430
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 431
    throw v0

    .line 434
    :cond_2
    :goto_1
    new-instance v1, Ljava/io/File;

    const-string v3, "movie.spec"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v4

    :goto_2
    if-eqz v1, :cond_5

    :try_start_7
    const-string v3, "spec change to entity"

    .line 436
    invoke-virtual {v0, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 438
    :try_start_8
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/16 v5, 0x800

    :try_start_9
    new-array v6, v5, [B

    :goto_3
    const/4 v7, 0x0

    .line 441
    invoke-virtual {v0, v6, v7, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 447
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    .line 448
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 449
    sget-object v5, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v7, "spec change to entity success"

    invoke-virtual {v5, v2, v7}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance v5, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 454
    iget v7, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 455
    iget v8, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    .line 451
    invoke-direct {v5, v6, p1, v7, v8}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lorg/json/JSONObject;Ljava/io/File;II)V

    .line 450
    invoke-direct {p0, v5, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    .line 462
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 438
    :try_start_a
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 437
    :try_start_b
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    .line 445
    :cond_4
    :try_start_c
    invoke-virtual {v3, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v4

    .line 438
    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception v5

    :try_start_e
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v3

    .line 437
    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v4

    :try_start_10
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    :catch_1
    move-exception v0

    .line 465
    :try_start_11
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " movie.spec change to entity fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 467
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 468
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    :catch_2
    move-exception p1

    .line 472
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private static final decodeFromInputStream$lambda-14(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;ZLjava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cacheKey"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    :try_start_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAParser;->readAsBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 276
    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/SVGAParser;->isZipFile([B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    sget-object p6, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v2, "SVGAParser"

    const-string v3, "decode from zip file"

    invoke-virtual {p6, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v2, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v2, p5}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$isUnzipping$p()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    :cond_0
    invoke-static {}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$getFileLock$p()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 280
    :try_start_1
    invoke-virtual {v2, p5}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 281
    invoke-static {v2}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$setUnzipping$p(Z)V

    const-string v2, "SVGAParser"

    const-string v4, "no cached, prepare to unzip"

    .line 282
    invoke-virtual {p6, v2, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 284
    :try_start_2
    invoke-direct {p0, v2, p5}, Lcom/opensource/svgaplayer/SVGAParser;->unzip(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 285
    invoke-static {v0}, Lcom/opensource/svgaplayer/SVGAParserKt;->access$setUnzipping$p(Z)V

    const-string v0, "SVGAParser"

    const-string v4, "unzip success"

    .line 286
    invoke-virtual {p6, v0, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object p6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :try_start_3
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p5

    :try_start_4
    throw p5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p6

    :try_start_5
    invoke-static {v2, p5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p6

    .line 289
    :cond_1
    :goto_0
    sget-object p6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 279
    :try_start_6
    monitor-exit v3

    .line 291
    :cond_2
    invoke-direct {p0, p5, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    goto :goto_1

    :catchall_2
    move-exception p5

    .line 279
    monitor-exit v3

    throw p5

    .line 293
    :cond_3
    sget-object v2, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGACache;->isDefaultCache()Z

    move-result v2

    if-nez v2, :cond_4

    .line 295
    sget-object v2, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda7;

    invoke-direct {v3, p5, v0}, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 307
    :cond_4
    sget-object v2, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v3, "SVGAParser"

    const-string v4, "inflate start"

    invoke-virtual {v2, v3, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/SVGAParser;->inflate([B)[B

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "SVGAParser"

    const-string v3, "inflate complete"

    .line 309
    invoke-virtual {v2, v1, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v1, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 311
    sget-object v3, Lcom/opensource/svgaplayer/proto/MovieEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "ADAPTER.decode(it)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 312
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    iget p5, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 314
    iget v4, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    .line 310
    invoke-direct {v1, v0, v3, p5, v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    const-string p5, "SVGAParser"

    const-string v0, "SVGAVideoEntity prepare start"

    .line 316
    invoke-virtual {v2, p5, v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance p5, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$1$3$1;

    invoke-direct {p5, p0, v1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$1$3$1;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    invoke-virtual {v1, p5, p6}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->prepare$com_opensource_svgaplayer(Lkotlin/jvm/functions/Function0;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    .line 308
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_5
    if-nez v1, :cond_6

    .line 323
    new-instance p5, Ljava/lang/Exception;

    const-string p6, "inflate(bytes) cause exception"

    invoke-direct {p5, p6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0, p5, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    .line 275
    :cond_6
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_7
    if-nez v1, :cond_8

    .line 329
    new-instance p5, Ljava/lang/Exception;

    const-string p6, "readAsBytes(inputStream) cause exception"

    invoke-direct {p5, p6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, p5, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_8
    if-eqz p4, :cond_9

    .line 337
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 339
    :cond_9
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string p1, "SVGAParser"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catchall_3
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p5

    .line 334
    :try_start_7
    invoke-direct {p0, p5, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p4, :cond_a

    .line 337
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 339
    :cond_a
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string p1, "SVGAParser"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string p4, "================ decode "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " from input stream end ================"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_3
    if-eqz p4, :cond_b

    .line 337
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 339
    :cond_b
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string p2, "SVGAParser"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "================ decode "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " from input stream end ================"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method private static final decodeFromInputStream$lambda-14$lambda-13$lambda-11(Ljava/lang/String;[B)V
    .locals 3

    const-string v0, "$cacheKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v0, p0}, Lcom/opensource/svgaplayer/SVGACache;->buildSvgaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 298
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 299
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 301
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v1, "SVGAParser"

    const-string v2, "create cache file fail."

    invoke-virtual {v0, v1, v2, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :goto_1
    return-void
.end method

.method private static final decodeFromSVGAFileCacheKey$lambda-6(Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 10

    const-string v0, " from svga cachel file to entity end ================"

    const-string v1, "================ decode "

    const-string v2, "SVGAParser"

    const-string v3, "$cacheKey"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "this$0"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    :try_start_0
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from svga cachel file to entity ================"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v4, Ljava/io/FileInputStream;

    sget-object v5, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v5, p1}, Lcom/opensource/svgaplayer/SVGACache;->buildSvgaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 221
    :try_start_1
    invoke-direct {p2, v4}, Lcom/opensource/svgaplayer/SVGAParser;->readAsBytes(Ljava/io/InputStream;)[B

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 222
    invoke-direct {p2, v5}, Lcom/opensource/svgaplayer/SVGAParser;->isZipFile([B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 223
    invoke-direct {p2, p1, p3, p0}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v7, "inflate start"

    .line 225
    invoke-virtual {v3, v2, v7}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p2, v5}, Lcom/opensource/svgaplayer/SVGAParser;->inflate([B)[B

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v7, "inflate complete"

    .line 227
    invoke-virtual {v3, v2, v7}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v7, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 229
    sget-object v8, Lcom/opensource/svgaplayer/proto/MovieEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v5}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v5

    const-string v8, "ADAPTER.decode(it)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 230
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    iget p1, p2, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 232
    iget v9, p2, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    .line 228
    invoke-direct {v7, v5, v8, p1, v9}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    const-string p1, "SVGAVideoEntity prepare start"

    .line 234
    invoke-virtual {v3, v2, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance p1, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$1$1$1$1;

    invoke-direct {p1, p2, v7, p3, p0}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$1$1$1$1;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    invoke-virtual {v7, p1, p4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->prepare$com_opensource_svgaplayer(Lkotlin/jvm/functions/Function0;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    .line 226
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    move-object p1, v6

    :goto_0
    if-nez p1, :cond_2

    .line 241
    new-instance p1, Ljava/lang/Exception;

    const-string p4, "inflate(bytes) cause exception"

    invoke-direct {p1, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-direct {p2, p1, p3, p0}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    .line 221
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_3
    move-object p1, v6

    :goto_2
    if-nez p1, :cond_4

    .line 247
    new-instance p1, Ljava/lang/Exception;

    const-string p4, "readAsBytes(inputStream) cause exception"

    invoke-direct {p1, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-direct {p2, p1, p3, p0}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    .line 251
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :try_start_2
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v2, p0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 220
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p4

    :try_start_4
    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 253
    :try_start_5
    invoke-direct {p2, p1, p3, p0}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 255
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :goto_4
    sget-object p2, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v2, p0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic decodeFromURL$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;ILjava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 165
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromURL(Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method private static final decodeFromURL$lambda-2(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cacheKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$urlPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGACache;->isDefaultCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromSVGAFileCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final ensureUnzipSafety(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 559
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 560
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "outputFileCanonicalPath"

    .line 561
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dstDirCanonicalPath"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p0, p2, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 562
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found Zip Path Traversal Vulnerability with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final inflate([B)[B
    .locals 4

    .line 492
    new-instance p0, Ljava/util/zip/Inflater;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    .line 493
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    const/16 p1, 0x800

    new-array v0, p1, [B

    .line 495
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 497
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3

    if-gtz v3, :cond_0

    .line 504
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    .line 505
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    .line 501
    :cond_0
    :try_start_1
    invoke-virtual {v2, v0, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 505
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 1

    .line 378
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda6;

    invoke-direct {v0, p3, p2, p1}, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final invokeCompleteCallback$lambda-15(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 3

    const-string v0, "$videoItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " parser complete ================"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SVGAParser"

    invoke-virtual {v0, v1, p0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 380
    invoke-interface {p1, p2}, Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;->onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    :cond_0
    return-void
.end method

.method private final invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 2

    .line 389
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " parser error ================"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SVGAParser"

    invoke-virtual {p0, v1, v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " parse error"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v1, p3, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2}, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;-><init>(Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final invokeErrorCallback$lambda-16(Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 393
    invoke-interface {p0}, Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;->onError()V

    :cond_0
    return-void
.end method

.method private final isZipFile([B)Z
    .locals 4

    .line 511
    array-length p0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-le p0, v2, :cond_0

    aget-byte p0, p1, v1

    const/16 v3, 0x50

    if-ne p0, v3, :cond_0

    aget-byte p0, p1, v0

    const/16 v3, 0x4b

    if-ne p0, v3, :cond_0

    const/4 p0, 0x2

    aget-byte p0, p1, p0

    const/4 v3, 0x3

    if-ne p0, v3, :cond_0

    aget-byte p0, p1, v3

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method private final readAsBytes(Ljava/io/InputStream;)[B
    .locals 4

    .line 477
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x800

    :try_start_0
    new-array v1, v0, [B

    :goto_0
    const/4 v2, 0x0

    .line 480
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_0

    .line 487
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 484
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 487
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final threadPoolExecutor$lambda-31(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVGAParser-Thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/opensource/svgaplayer/SVGAParser;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private final unzip(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10

    const-string v0, "zipItem.name"

    const-string v1, "cacheDir.absolutePath"

    .line 516
    sget-object v2, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v3, "SVGAParser"

    const-string v4, "================ unzip prepare ================"

    invoke-virtual {v2, v3, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    sget-object v2, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v2, p2}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 518
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 520
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :try_start_1
    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-direct {p1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 523
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 546
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 521
    :try_start_3
    invoke-static {p1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 520
    :try_start_4
    invoke-static {v2, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_0
    :try_start_5
    const-string v6, "zipInputStream.nextEntry ?: break"

    .line 523
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "../"

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v6, v7, v9, v8, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 528
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "/"

    invoke-static {v6, v7, v9, v8, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 531
    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6, v4}, Lcom/opensource/svgaplayer/SVGAParser;->ensureUnzipSafety(Ljava/io/File;Ljava/lang/String;)V

    .line 533
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v6, 0x800

    :try_start_6
    new-array v6, v6, [B

    .line 536
    :goto_1
    invoke-virtual {p1, v6}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_3

    .line 542
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 533
    :try_start_7
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 543
    sget-object v4, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v5, "================ unzip complete ================"

    invoke-virtual {v4, v3, v5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    .line 540
    :cond_3
    :try_start_8
    invoke-virtual {v4, v6, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 533
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_a
    invoke-static {v4, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p0

    .line 521
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_c
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception p0

    .line 520
    :try_start_d
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception p1

    :try_start_e
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception p0

    .line 549
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v0, "================ unzip error ================"

    invoke-virtual {p1, v3, v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "error"

    .line 550
    invoke-virtual {p1, v3, v0, p0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    sget-object p1, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGACache;->clearDir$com_opensource_svgaplayer(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 553
    throw p0
.end method


# virtual methods
.method public final decodeFromAssets(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    const-string v1, "SVGAParser"

    if-nez v0, :cond_0

    .line 142
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string p1, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {p0, v1, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "================ decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from assets ================"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda1;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V
    .locals 11
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "inputStream"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKey"

    move-object v7, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 268
    iget-object v1, v0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    const-string v2, "SVGAParser"

    if-nez v1, :cond_0

    .line 269
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v1, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {v0, v2, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_0
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "================ decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from input stream ================"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v9, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda3;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v6, p4

    move-object v7, p2

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda3;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;ZLjava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final decodeFromSVGAFileCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "cacheKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p4

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final decodeFromURL(Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)Lkotlin/jvm/functions/Function0;
    .locals 9
    .param p1    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;",
            "Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "SVGAParser"

    if-nez v0, :cond_0

    .line 171
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string p1, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {p0, v2, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "url.toString()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "================ decode from url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ================"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v4, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v4, p1}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheKey(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-virtual {v4, v5}, Lcom/opensource/svgaplayer/SVGACache;->isCached(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p1, "this url cached"

    .line 178
    invoke-virtual {v3, v2, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object p1, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda0;

    move-object v3, v2

    move-object v4, p0

    move-object v6, p2

    move-object v7, v0

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda0;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v1

    :cond_1
    const-string v1, "no cached, prepare to download"

    .line 188
    invoke-virtual {v3, v2, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser;->fileDownloader:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    new-instance v2, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;

    move-object v3, v2

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V

    new-instance p3, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$3;

    invoke-direct {p3, p1, p0, p2, v0}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$3;-><init>(Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2, p3}, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;->resume(Ljava/net/URL;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method public final parse(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "assetsName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, p1, p2, v0}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    return-void
.end method
