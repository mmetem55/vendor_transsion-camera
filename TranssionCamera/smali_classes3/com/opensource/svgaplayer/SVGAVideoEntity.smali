.class public final Lcom/opensource/svgaplayer/SVGAVideoEntity;
.super Ljava/lang/Object;
.source "SVGAVideoEntity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAVideoEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAVideoEntity.kt\ncom/opensource/svgaplayer/SVGAVideoEntity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,368:1\n1#2:369\n32#3,2:370\n1849#4,2:372\n1547#4:374\n1618#4,3:375\n1547#4:378\n1618#4,3:379\n1849#4,2:386\n1849#4,2:388\n211#5,2:382\n211#5,2:384\n*S KotlinDebug\n*F\n+ 1 SVGAVideoEntity.kt\ncom/opensource/svgaplayer/SVGAVideoEntity\n*L\n123#1:370,2\n154#1:372,2\n189#1:374\n189#1:375,3\n207#1:378\n207#1:379,3\n278#1:386,2\n342#1:388,2\n226#1:382,2\n264#1:384,2\n*E\n"
.end annotation


# instance fields
.field private FPS:I

.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private antiAlias:Z

.field private audioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private frames:I

.field private imageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mCacheDir:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mPlayCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private movieItem:Lcom/opensource/svgaplayer/proto/MovieEntity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private soundCallback:Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private spriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VflCi3fCKitZrcAQDMHfCWVcb5M(Lkotlin/jvm/internal/Ref$IntRef;Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;Landroid/media/SoundPool;II)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setupSoundPool$lambda-15(Lkotlin/jvm/internal/Ref$IntRef;Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;Landroid/media/SoundPool;II)V

    return-void
.end method

.method public constructor <init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V
    .locals 10
    .param p1    # Lcom/opensource/svgaplayer/proto/MovieEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SVGAVideoEntity"

    .line 30
    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->antiAlias:Z

    .line 35
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    const/16 v0, 0xf

    .line 38
    iput v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->spriteList:Ljava/util/List;

    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audioList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    .line 86
    iput p3, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameWidth:I

    .line 87
    iput p4, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameHeight:I

    .line 88
    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCacheDir:Ljava/io/File;

    .line 89
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->movieItem:Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 90
    iget-object p2, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->params:Lcom/opensource/svgaplayer/proto/MovieParams;

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setupByMovie(Lcom/opensource/svgaplayer/proto/MovieParams;)V

    .line 92
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->parserImages(Lcom/opensource/svgaplayer/proto/MovieEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 96
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 94
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :goto_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->resetSprites(Lcom/opensource/svgaplayer/proto/MovieEntity;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/io/File;II)V
    .locals 10
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SVGAVideoEntity"

    .line 30
    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->antiAlias:Z

    .line 35
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    const/16 v0, 0xf

    .line 38
    iput v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->spriteList:Ljava/util/List;

    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audioList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    .line 58
    iput p3, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameWidth:I

    .line 59
    iput p4, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameHeight:I

    .line 60
    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCacheDir:Ljava/io/File;

    const-string p2, "movie"

    .line 61
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-direct {p0, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setupByJson(Lorg/json/JSONObject;)V

    .line 64
    :try_start_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->parserImages(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 68
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 66
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    :goto_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->resetSprites(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final synthetic access$getMCallback$p(Lcom/opensource/svgaplayer/SVGAVideoEntity;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCallback:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method private final createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 150
    sget-object v0, Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;->INSTANCE:Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;

    iget v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameWidth:I

    iget p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameHeight:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;->decodeBitmapFrom(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final createBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 172
    sget-object v0, Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;->INSTANCE:Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;

    iget v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameWidth:I

    iget v2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameHeight:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoder;->decodeBitmapFrom(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 173
    invoke-direct {p0, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final createSvgaAudioEntity(Lcom/opensource/svgaplayer/proto/AudioEntity;Ljava/util/HashMap;)Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opensource/svgaplayer/proto/AudioEntity;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 216
    new-instance v2, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    invoke-direct {v2, v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;-><init>(Lcom/opensource/svgaplayer/proto/AudioEntity;)V

    .line 217
    iget-object v3, v1, Lcom/opensource/svgaplayer/proto/AudioEntity;->startTime:Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    int-to-double v5, v3

    .line 218
    iget-object v3, v1, Lcom/opensource/svgaplayer/proto/AudioEntity;->totalTime:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_1
    int-to-double v3, v4

    double-to-int v7, v3

    if-nez v7, :cond_2

    return-object v2

    .line 224
    :cond_2
    iget-object v7, v0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mPlayCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_3
    invoke-interface {v7, v1}, Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;->onPlay(Ljava/util/List;)V

    .line 230
    iget-object v0, v0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCallback:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_4

    const-string v0, "mCallback"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v8, v0

    :goto_2
    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object v2

    .line 234
    :cond_5
    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/AudioEntity;->audioKey:Ljava/lang/String;

    move-object/from16 v7, p2

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_8

    .line 235
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 236
    :try_start_0
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v1

    int-to-double v9, v1

    div-double/2addr v5, v3

    mul-double/2addr v5, v9

    double-to-long v3, v5

    .line 238
    sget-object v11, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v11}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 240
    iget-object v12, v0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundCallback:Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;

    .line 241
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    double-to-long v0, v9

    const/16 v18, 0x1

    move-wide v14, v3

    move-wide/from16 v16, v0

    .line 239
    invoke-virtual/range {v11 .. v18}, Lcom/opensource/svgaplayer/SVGASoundManager;->load$com_opensource_svgaplayer(Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setSoundID(Ljava/lang/Integer;)V

    goto :goto_4

    .line 247
    :cond_6
    iget-object v11, v0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    if-eqz v11, :cond_7

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    double-to-long v0, v9

    const/16 v17, 0x1

    move-wide v13, v3

    move-wide v15, v0

    invoke-virtual/range {v11 .. v17}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v8

    :goto_3
    invoke-virtual {v2, v0}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setSoundID(Ljava/lang/Integer;)V

    .line 249
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    :goto_5
    return-object v2
.end method

.method private final generateAudioFile(Ljava/io/File;[B)Ljava/io/File;
    .locals 0

    .line 255
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 256
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V

    return-object p1
.end method

.method private final generateAudioFileMap(Lcom/opensource/svgaplayer/proto/MovieEntity;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opensource/svgaplayer/proto/MovieEntity;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->generateAudioMap(Lcom/opensource/svgaplayer/proto/MovieEntity;)Ljava/util/HashMap;

    move-result-object p1

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 211
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 265
    sget-object v2, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/opensource/svgaplayer/SVGACache;->buildAudioFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 266
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 267
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_1

    .line 269
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 267
    invoke-direct {p0, v2, v1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->generateAudioFile(Ljava/io/File;[B)Ljava/io/File;

    move-result-object v4

    .line 266
    :cond_1
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final generateAudioMap(Lcom/opensource/svgaplayer/proto/MovieEntity;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opensource/svgaplayer/proto/MovieEntity;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 277
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 278
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->images:Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 280
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v0

    .line 281
    array-length v2, v0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    new-instance v2, Lkotlin/ranges/IntRange;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->slice([BLkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v2

    .line 285
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    const/16 v5, 0x49

    const-string v6, "imageKey"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v3, v5, :cond_2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    const/16 v5, 0x44

    if-ne v3, v5, :cond_2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    const/16 v5, 0x33

    if-ne v3, v5, :cond_2

    .line 286
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 287
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    const/4 v4, -0x5

    if-ne v3, v4, :cond_0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    const/16 v3, -0x6c

    if-ne v2, v3, :cond_0

    .line 288
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    return-object p0
.end method

.method private final generateBitmapFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCacheDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 142
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 144
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p1, p0

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private final generateSoundPool(Lcom/opensource/svgaplayer/proto/MovieEntity;)Landroid/media/SoundPool;
    .locals 3

    .line 325
    :try_start_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 326
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 328
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 329
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->audios:Ljava/util/List;

    const-string v2, "entity.audios"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 335
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final parserImages(Lcom/opensource/svgaplayer/proto/MovieEntity;)V
    .locals 5

    .line 154
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->images:Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    .line 156
    array-length v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    new-instance v2, Lkotlin/ranges/IntRange;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->slice([BLkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v2

    .line 160
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    const/16 v4, 0x44

    if-ne v3, v4, :cond_2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 163
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "entry.key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->generateBitmapFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-direct {p0, v1, v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->createBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final parserImages(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "images"

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "imgJson.keys()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "imgKey"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->generateBitmapFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    return-void

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, ".matte"

    const-string v4, ""

    .line 128
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final recycleImage()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 358
    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private final resetSprites(Lcom/opensource/svgaplayer/proto/MovieEntity;)V
    .locals 4

    .line 189
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->sprites:Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/opensource/svgaplayer/proto/SpriteEntity;

    .line 190
    new-instance v2, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;-><init>(Lcom/opensource/svgaplayer/proto/SpriteEntity;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 189
    :cond_1
    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->spriteList:Ljava/util/List;

    return-void
.end method

.method private final resetSprites(Lorg/json/JSONObject;)V
    .locals 5

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "sprites"

    .line 178
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 180
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "optJSONObject(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    new-instance v4, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;

    invoke-direct {v4, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->spriteList:Ljava/util/List;

    return-void
.end method

.method private final setupAudios(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opensource/svgaplayer/proto/MovieEntity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 195
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->audios:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setupSoundPool(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->generateAudioFileMap(Lcom/opensource/svgaplayer/proto/MovieEntity;)Ljava/util/HashMap;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 204
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 207
    :cond_1
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->audios:Ljava/util/List;

    const-string p2, "entity.audios"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 1547
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/opensource/svgaplayer/proto/AudioEntity;

    const-string v2, "audio"

    .line 208
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->createSvgaAudioEntity(Lcom/opensource/svgaplayer/proto/AudioEntity;Ljava/util/HashMap;)Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_2
    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audioList:Ljava/util/List;

    return-void

    .line 196
    :cond_3
    :goto_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final setupByJson(Lorg/json/JSONObject;)V
    .locals 13

    const-string v0, "viewBox"

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "width"

    const-wide/16 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-string v1, "height"

    .line 76
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    .line 77
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    :cond_0
    const/16 v0, 0x14

    const-string v1, "fps"

    .line 79
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    const/4 v0, 0x0

    const-string v1, "frames"

    .line 80
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->frames:I

    return-void
.end method

.method private final setupByMovie(Lcom/opensource/svgaplayer/proto/MovieParams;)V
    .locals 11

    .line 102
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/MovieParams;->viewBoxWidth:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    float-to-double v7, v0

    .line 103
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/MovieParams;->viewBoxHeight:Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_1
    float-to-double v9, v1

    .line 104
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    .line 105
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/MovieParams;->fps:Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/16 v0, 0x14

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    .line 106
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieParams;->frames:Ljava/lang/Integer;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_2
    iput p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->frames:I

    return-void
.end method

.method private final setupSoundPool(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opensource/svgaplayer/proto/MovieEntity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 295
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 296
    sget-object v1, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    new-instance v1, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lkotlin/jvm/internal/Ref$IntRef;Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundCallback:Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;

    return-void

    .line 311
    :cond_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->generateSoundPool(Lcom/opensource/svgaplayer/proto/MovieEntity;)Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    .line 312
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v2, "SVGAParser"

    const-string v3, "pool_start"

    invoke-virtual {v1, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    if-eqz p0, :cond_1

    new-instance v1, Lcom/opensource/svgaplayer/SVGAVideoEntity$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_1
    return-void
.end method

.method private static final setupSoundPool$lambda-15(Lkotlin/jvm/internal/Ref$IntRef;Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;Landroid/media/SoundPool;II)V
    .locals 0

    const-string p3, "$soundLoaded"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$entity"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$completionBlock"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    sget-object p3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string p4, "SVGAParser"

    const-string p5, "pool_complete"

    invoke-virtual {p3, p4, p5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget p3, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 316
    iget-object p0, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->audios:Ljava/util/List;

    const-string p1, "entity.audios"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-lt p3, p0, :cond_0

    .line 317
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 341
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audioList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 343
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getSoundID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v3, v2}, Lcom/opensource/svgaplayer/SVGASoundManager;->unload$com_opensource_svgaplayer(I)V

    goto :goto_0

    .line 345
    :cond_1
    iput-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundCallback:Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 348
    :cond_3
    iput-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    .line 349
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audioList:Ljava/util/List;

    .line 350
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->spriteList:Ljava/util/List;

    .line 352
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->recycleImage()V

    .line 353
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final getAntiAlias()Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->antiAlias:Z

    return p0
.end method

.method public final getAudioList$com_opensource_svgaplayer()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audioList:Ljava/util/List;

    return-object p0
.end method

.method public final getFPS()I
    .locals 0

    .line 38
    iget p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    return p0
.end method

.method public final getFrames()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->frames:I

    return p0
.end method

.method public final getImageMap$com_opensource_svgaplayer()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method public final getSpriteList$com_opensource_svgaplayer()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->spriteList:Ljava/util/List;

    return-object p0
.end method

.method public final getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    return-object p0
.end method

.method public final prepare$com_opensource_svgaplayer(Lkotlin/jvm/functions/Function0;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCallback:Lkotlin/jvm/functions/Function0;

    .line 111
    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mPlayCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    .line 112
    iget-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->movieItem:Lcom/opensource/svgaplayer/proto/MovieEntity;

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    const-string p0, "mCallback"

    .line 113
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p1, Lcom/opensource/svgaplayer/SVGAVideoEntity$prepare$1;

    invoke-direct {p1, p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity$prepare$1;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    invoke-direct {p0, p2, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setupAudios(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public final setAntiAlias(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->antiAlias:Z

    return-void
.end method
