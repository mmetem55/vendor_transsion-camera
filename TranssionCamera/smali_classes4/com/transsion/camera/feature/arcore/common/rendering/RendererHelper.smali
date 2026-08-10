.class public final Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;
.super Ljava/lang/Object;
.source "RendererHelper.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final DEFAULT_MATRIX:[F

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sBitmapCachedMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m2DRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

.field private final mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

.field private final mBgRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

.field private final mContext:Landroid/content/Context;

.field private final mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/faceunity/pta_art/core/base/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDrawBg:Z

.field private final mOESRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

.field private mPreviewSurface:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RendererHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 33
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->DEFAULT_MATRIX:[F

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->sBitmapCachedMap:Ljava/util/WeakHashMap;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/faceunity/pta_art/core/base/BaseCore;Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 39
    new-instance v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    sget-object v1, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;->TEXTURE_EXT:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;-><init>(Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mOESRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    .line 40
    new-instance v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    sget-object v1, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;->TEXTURE_2D:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;-><init>(Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->m2DRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    .line 41
    new-instance v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-direct {v0, v1}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;-><init>(Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mBgRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    .line 46
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;)Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mBgRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mIsDrawBg:Z

    return p1
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/WeakHashMap;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->sBitmapCachedMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->loadBackgroundImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private handleEvents()V
    .locals 7

    .line 86
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/core/base/Task;

    if-nez v0, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 90
    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/Task;->run()V

    .line 91
    iget-object v3, v0, Lcom/faceunity/pta_art/core/base/Task;->taskName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    sget-object v3, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lily handleEvents task = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/faceunity/pta_art/core/base/Task;->taskName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ; time = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private loadBackgroundImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    .line 108
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 110
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    .line 108
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object p0
.end method

.method private queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public draw2DTexture([FI)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->m2DRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->draw([FI)V

    return-void
.end method

.method public draw2DTexture([F[FIZ)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->m2DRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->draw([F[FIZ)V

    return-void
.end method

.method public drawBGTexture([F)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mBgRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->getTextureId()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mIsDrawBg:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mBgRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->DEFAULT_MATRIX:[F

    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->getTextureId()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->draw([F[FI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public drawOESTexture([F)V
    .locals 1

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mOESRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->getTextureId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->draw([FI)V

    return-void
.end method

.method public get2DTextureId()I
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->m2DRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->getTextureId()I

    move-result p0

    return p0
.end method

.method public getBGTextureId()I
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mBgRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->getTextureId()I

    move-result p0

    return p0
.end method

.method public getOESTextureId()I
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mOESRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->getTextureId()I

    move-result p0

    return p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->requestRender()V

    return-void
.end method

.method public onPrepareDrawFrame()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->handleEvents()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mIsDrawBg:Z

    return-void
.end method

.method public resourceDestory()V
    .locals 0

    return-void
.end method

.method public setBackground(Ljava/lang/String;)Z
    .locals 2

    .line 117
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;

    const-string v1, "bind-background-textureId"

    invoke-direct {v0, p0, v1, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mBgRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->getTextureId()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public surfaceCreated()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mOESRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->createOnGlThread()V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->m2DRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->createOnGlThread()V

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mBgRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->createOnGlThread()V

    .line 53
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mOESRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {v1}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    .line 54
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 55
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "azmohan surfaceCreated oesTextureId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mOESRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->getTextureId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestory()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mOESRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->releaseOnGLThread()V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->m2DRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->releaseOnGLThread()V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mBgRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->releaseOnGLThread()V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    :cond_0
    return-void
.end method
