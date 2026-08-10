.class public final Lcom/opensource/svgaplayer/SVGACache;
.super Ljava/lang/Object;
.source "SVGACache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/SVGACache$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGACache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGACache.kt\ncom/opensource/svgaplayer/SVGACache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,119:1\n1#2:120\n13536#3,2:121\n*S KotlinDebug\n*F\n+ 1 SVGACache.kt\ncom/opensource/svgaplayer/SVGACache\n*L\n63#1:121,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/SVGACache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static cacheDir:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static type:Lcom/opensource/svgaplayer/SVGACache$Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opensource/svgaplayer/SVGACache;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGACache;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    .line 19
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache$Type;->DEFAULT:Lcom/opensource/svgaplayer/SVGACache$Type;

    sput-object v0, Lcom/opensource/svgaplayer/SVGACache;->type:Lcom/opensource/svgaplayer/SVGACache$Type;

    const-string v0, "/"

    .line 20
    sput-object v0, Lcom/opensource/svgaplayer/SVGACache;->cacheDir:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCacheDir()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object p0, Lcom/opensource/svgaplayer/SVGACache;->cacheDir:Ljava/lang/String;

    const-string v0, "/"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 23
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->cacheDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 28
    :cond_0
    sget-object p0, Lcom/opensource/svgaplayer/SVGACache;->cacheDir:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final buildAudioFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "audio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGACache;->getCacheDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mp3"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final buildCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cacheKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGACache;->getCacheDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final buildCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "str"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "MD5"

    .line 95
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const-string v0, "UTF-8"

    .line 96
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(charsetName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 97
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string p1, "digest"

    .line 99
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p0

    const/4 v0, 0x0

    const-string v1, ""

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-byte v3, p0, v2

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%02x"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "format(format, *args)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final buildCacheKey(Ljava/net/URL;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "url.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final buildSvgaFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cacheKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGACache;->getCacheDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".svga"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final clearDir$com_opensource_svgaplayer(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "listFiles()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13536
    array-length v1, p0

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, p0, v0

    .line 64
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 67
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    sget-object v3, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file.absolutePath"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/opensource/svgaplayer/SVGACache;->clearDir$com_opensource_svgaplayer(Ljava/lang/String;)V

    .line 70
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 74
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear svga cache path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fail"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SVGACache"

    invoke-virtual {v0, v1, p1, p0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final isCached(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cacheKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGACache;->isDefaultCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/SVGACache;->buildSvgaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 91
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public final isDefaultCache()Z
    .locals 1

    .line 82
    sget-object p0, Lcom/opensource/svgaplayer/SVGACache;->type:Lcom/opensource/svgaplayer/SVGACache$Type;

    sget-object v0, Lcom/opensource/svgaplayer/SVGACache$Type;->DEFAULT:Lcom/opensource/svgaplayer/SVGACache$Type;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGACache;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGACache;->getCacheDir()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 33
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache$Type;->DEFAULT:Lcom/opensource/svgaplayer/SVGACache$Type;

    invoke-virtual {p0, p1, v0}, Lcom/opensource/svgaplayer/SVGACache;->onCreate(Landroid/content/Context;Lcom/opensource/svgaplayer/SVGACache$Type;)V

    return-void
.end method

.method public final onCreate(Landroid/content/Context;Lcom/opensource/svgaplayer/SVGACache$Type;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGACache$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGACache;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/svga/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/opensource/svgaplayer/SVGACache;->cacheDir:Ljava/lang/String;

    .line 40
    new-instance p1, Ljava/io/File;

    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGACache;->getCacheDir()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 41
    :cond_3
    sput-object p2, Lcom/opensource/svgaplayer/SVGACache;->type:Lcom/opensource/svgaplayer/SVGACache$Type;

    return-void
.end method
