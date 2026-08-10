.class public final Lcom/opensource/svgaplayer/utils/log/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/opensource/svgaplayer/utils/log/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "error"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/utils/log/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "error"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
