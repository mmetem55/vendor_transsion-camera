.class public final Lcom/opensource/svgaplayer/SVGASoundManager;
.super Ljava/lang/Object;
.source "SVGASoundManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGASoundManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGASoundManager.kt\ncom/opensource/svgaplayer/SVGASoundManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,194:1\n1849#2,2:195\n*S KotlinDebug\n*F\n+ 1 SVGASoundManager.kt\ncom/opensource/svgaplayer/SVGASoundManager\n*L\n106#1:195,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final soundCallBackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static soundPool:Landroid/media/SoundPool;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGASoundManager;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    .line 28
    const-class v0, Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundCallBackMap:Ljava/util/Map;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    sput v0, Lcom/opensource/svgaplayer/SVGASoundManager;->volume:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkInit()Z
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result p0

    if-nez p0, :cond_0

    .line 124
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object v1, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "soundPool is null, you need call init() !!!"

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p0
.end method


# virtual methods
.method public final isInit$com_opensource_svgaplayer()Z
    .locals 0

    .line 118
    sget-object p0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final load$com_opensource_svgaplayer(Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;Ljava/io/FileDescriptor;JJI)I
    .locals 7
    .param p1    # Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 145
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGASoundManager;->checkInit()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 147
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result p0

    .line 149
    sget-object p2, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object p3, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string p4, "TAG"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "load soundId="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " callBack="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 151
    sget-object p2, Lcom/opensource/svgaplayer/SVGASoundManager;->soundCallBackMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 152
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return p0
.end method

.method public final play$com_opensource_svgaplayer(I)I
    .locals 9

    .line 168
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGASoundManager;->checkInit()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 170
    :cond_0
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play soundId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v2, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v5, Lcom/opensource/svgaplayer/SVGASoundManager;->volume:F

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, p1

    move v4, v5

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p0

    return p0
.end method

.method public final stop$com_opensource_svgaplayer(I)V
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGASoundManager;->checkInit()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 177
    :cond_0
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop soundId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object p0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/media/SoundPool;->stop(I)V

    return-void
.end method

.method public final unload$com_opensource_svgaplayer(I)V
    .locals 3

    .line 158
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGASoundManager;->checkInit()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 160
    :cond_0
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unload soundId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object p0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/media/SoundPool;->unload(I)Z

    .line 164
    sget-object p0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundCallBackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
