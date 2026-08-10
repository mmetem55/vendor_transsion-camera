.class public Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;
.super Ljava/lang/Object;
.source "GpuAlgorithmManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlgos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

.field private mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GpuAlgorithmManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .locals 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mAlgos:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const-string v6, "com.transsion.camera.featurelibs.makeup.MakeUpAlgorithm"

    invoke-static {v6, v4}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mAlgos:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v5

    const-string p1, "com.transsion.algorithm.STBlurAlgorithm"

    invoke-static {p1, v3}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance p1, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Ljava/util/HashMap;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mAlgos:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->destoryResources()V

    return-void
.end method

.method private create2DProgram()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;-><init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    .line 261
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create2DProgram,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private destory2DProgram()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    :cond_0
    return-void
.end method

.method private destoryResources()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->clear()V

    .line 274
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->destory2DProgram()V

    .line 275
    sget-object p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "destoryResources"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private draw2DTexture(Landroid/graphics/SurfaceTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II)V
    .locals 0

    .line 254
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->create2DProgram()V

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget p2, p2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    return-void
.end method

.method private getFirstAlgo()Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    const/4 v0, 0x1

    .line 231
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->setPreProcessed(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getNextAlgo()Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;
    .locals 2

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    .line 238
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->getPreProcessed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    .line 239
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->setPreProcessed(Z)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private peekFirstAlgoToProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJ)Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;
    .locals 9

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-object p1

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    invoke-virtual {v0, p3, p2}, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->getA2DTexture(II)Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    move-result-object v0

    .line 207
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->getFirstAlgo()Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    move-result-object v1

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-interface/range {v1 .. v8}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->process(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJ)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 209
    iput-boolean p0, v0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    return-object v0

    :cond_1
    return-object p1
.end method

.method private peekNextAlgoToProcess(Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJ)Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;
    .locals 8

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    invoke-virtual {p0, p4, p3}, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->getA2DTexture(II)Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    move-result-object p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-wide v6, p6

    .line 218
    invoke-interface/range {v0 .. v7}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->process(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 220
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    return-object p0

    :cond_0
    return-object p2
.end method

.method private resetStatusForNextFrame()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    const/4 v2, 0x0

    .line 248
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->setPreProcessed(Z)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->resetStatusToIdle()V

    return-void
.end method


# virtual methods
.method public algorithmRender(Landroid/graphics/SurfaceTexture;III[FJ)Z
    .locals 14

    move-object v8, p0

    move/from16 v9, p3

    move/from16 v10, p4

    const/4 v11, 0x0

    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    .line 139
    iget-object v0, v8, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->resetStatusForNextFrame()V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 144
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "algothimRender +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    move/from16 v0, p2

    invoke-direct {v1, v0, v11, v9, v10}, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;-><init>(IIII)V

    move-object v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-wide/from16 v5, p6

    .line 147
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->peekFirstAlgoToProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJ)Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    move-result-object v0

    move-object v2, v0

    .line 150
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->getNextAlgo()Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    .line 151
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->peekNextAlgoToProcess(Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJ)Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    move-result-object v2

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {v11, v11, v9, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 156
    iget v0, v2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texType:I

    const-string v1, "ms"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    move-object v0, p1

    .line 157
    invoke-direct {p0, p1, v2, v9, v10}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->draw2DTexture(Landroid/graphics/SurfaceTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II)V

    .line 158
    iput-boolean v3, v2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isTexToDraw:Z

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 160
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "algothimRender 2d - : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v12

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 164
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 165
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "algothimRender oes - : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v12

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v11
.end method

.method public algorithmRenderOffScreen(Landroid/graphics/SurfaceTexture;II)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mTextureManager:Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->getTexForDraw()Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->draw2DTexture(Landroid/graphics/SurfaceTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    .line 128
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->onCameraOperateAction(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFirstSteadyFrame()V
    .locals 1

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mGpuProcessers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    .line 122
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->onFirstSteadyFrame()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onModeInit([ILcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .locals 7

    .line 41
    sget-object p3, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onModeInit, algos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 42
    array-length p3, p1

    if-nez p3, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iput-object p6, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p6, :cond_1

    .line 48
    new-instance p3, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;[ILcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    invoke-interface {p6, p3}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onModePaused()V
    .locals 2

    .line 80
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onModePaused"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$3;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onModeResumed()V
    .locals 2

    .line 94
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onModeResumed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$4;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onModeUnInit()V
    .locals 2

    .line 63
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onModeUnInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$2;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-void
.end method

.method public onSettingReady()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$5;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 1

    .line 134
    sget-object p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onSurfaceCreated"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    .line 182
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onSurfaceDestoryed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 184
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$6;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
