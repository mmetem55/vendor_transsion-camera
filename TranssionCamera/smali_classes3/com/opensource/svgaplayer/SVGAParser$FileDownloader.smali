.class public Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;
.super Ljava/lang/Object;
.source "SVGAParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/SVGAParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDownloader"
.end annotation


# instance fields
.field private noCache:Z


# direct methods
.method public static synthetic $r8$lambda$2ofIh8xzK3EHGYFNRMkuSWEPAFo(Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;Ljava/net/URL;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;->resume$lambda-4(Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;Ljava/net/URL;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final resume$lambda-4(Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;Ljava/net/URL;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    const-string v0, "SVGAParser"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$failure"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$cancelled"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$complete"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :try_start_0
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v2, "================ svga file download start ================"

    invoke-virtual {v1, v0, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v2

    if-nez v2, :cond_0

    iget-boolean p0, p0, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;->noCache:Z

    if-nez p0, :cond_0

    const-string p0, "SVGAParser can not handle cache before install HttpResponseCache. see https://github.com/yyued/SVGAPlayer-Android#cache"

    .line 60
    invoke-virtual {v1, v0, p0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "\u5728\u914d\u7f6e HttpResponseCache \u524d SVGAParser \u65e0\u6cd5\u7f13\u5b58. \u67e5\u770b https://github.com/yyued/SVGAPlayer-Android#cache "

    .line 61
    invoke-virtual {v1, v0, p0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    instance-of p1, p0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_5

    const/16 p1, 0x4e20

    .line 64
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string p1, "GET"

    .line 65
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p1, "Connection"

    const-string v2, "close"

    .line 66
    invoke-virtual {p0, p1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 68
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v2, 0x1000

    :try_start_2
    new-array v3, v2, [B

    .line 73
    :goto_1
    iget-boolean v4, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v5, "================ svga file download canceled ================"

    if-eqz v4, :cond_2

    .line 74
    :try_start_3
    sget-object v2, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    invoke-virtual {v2, v0, v5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 77
    invoke-virtual {p0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 83
    :goto_2
    iget-boolean p3, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p3, :cond_3

    .line 84
    sget-object p3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    invoke-virtual {p3, v0, v5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 85
    :try_start_4
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    .line 87
    :cond_3
    :try_start_6
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 88
    :try_start_7
    sget-object v2, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v3, "================ svga file download complete ================"

    invoke-virtual {v2, v0, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-interface {p4, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 87
    :try_start_8
    invoke-static {p3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 69
    :try_start_9
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 68
    :try_start_a
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p4

    .line 87
    :try_start_b
    throw p4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_c
    invoke-static {p3, p4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :cond_4
    invoke-virtual {p1, v3, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p3

    .line 69
    :try_start_d
    throw p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception p4

    :try_start_e
    invoke-static {p1, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception p1

    .line 68
    :try_start_f
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception p3

    :try_start_10
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :catch_0
    move-exception p0

    .line 95
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string p3, "================ svga file download fail ================"

    invoke-virtual {p1, v0, p3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public resume(Ljava/net/URL;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function0;
    .locals 9
    .param p1    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/InputStream;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "complete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 53
    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$resume$cancelBlock$1;

    invoke-direct {v0, v5}, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$resume$cancelBlock$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 56
    sget-object v1, Lcom/opensource/svgaplayer/SVGAParser;->Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAParser$Companion;->getThreadPoolExecutor$com_opensource_svgaplayer()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$$ExternalSyntheticLambda0;-><init>(Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;Ljava/net/URL;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
