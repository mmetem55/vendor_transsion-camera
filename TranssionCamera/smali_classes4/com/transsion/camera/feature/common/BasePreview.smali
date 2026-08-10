.class public abstract Lcom/transsion/camera/feature/common/BasePreview;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "BasePreview.java"

# interfaces
.implements Lcom/transsion/camera/feature/common/ICapture$IStatusListener;


# static fields
.field private static final BYTES_PER_PIXEL_FRO_BGR:I = 0x3

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

.field protected mBgrBuffer:Ljava/nio/ByteBuffer;

.field protected mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

.field protected volatile mCapturing:Z

.field protected final mLock:Ljava/lang/Object;

.field protected volatile mOrientation:I

.field protected mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

.field private volatile mResumed:Z

.field protected mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

.field protected mThumbHeight:I

.field protected mThumbWidth:I

.field protected volatile mUIReady:Z

.field protected mVUBuffer:Ljava/nio/ByteBuffer;

.field protected mYBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/common/BasePreview;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mLock:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method private clearBgrBuffer()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private clearYuvBuffer()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 181
    iput-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mVUBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 185
    iput-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mVUBuffer:Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method private onThumbnailUpdateBgr([BIIII)V
    .locals 3

    .line 109
    iput p2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    .line 110
    iput p3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    mul-int v0, p4, p5

    mul-int/lit8 v0, v0, 0x3

    .line 113
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 114
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    .line 115
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_0
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x3

    if-le v1, v0, :cond_1

    .line 121
    sget-object p0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onThumbnailUpdateBgr error dataWidth: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", dataHeight: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bufferWidth: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bufferHeight: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private onThumbnailUpdateYuv([BIIII)V
    .locals 3

    .line 133
    iput p2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    .line 134
    iput p3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    mul-int v0, p4, p5

    .line 137
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 138
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    .line 139
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mVUBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1

    shr-int/lit8 v1, v0, 0x1

    .line 142
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mVUBuffer:Ljava/nio/ByteBuffer;

    .line 143
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_1
    mul-int v1, p2, p3

    if-le v1, v0, :cond_2

    .line 149
    sget-object p0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onThumbnailUpdate error dataWidth: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", dataHeight: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bufferWidth: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bufferHeight: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 156
    iget-object p2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mVUBuffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 p4, v1, 0x1

    invoke-virtual {p2, p1, v1, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mYBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mVUBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method protected clearBuffer()V
    .locals 2

    .line 163
    sget-object v0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearBuffer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BasePreview;->clearBgrBuffer()V

    .line 168
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected createGLProgram()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/transsion/camera/feature/common/glrender/GLES20Canvas;

    invoke-direct {v0}, Lcom/transsion/camera/feature/common/glrender/GLES20Canvas;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    if-nez v0, :cond_1

    .line 249
    new-instance v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    invoke-direct {v0}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    if-nez v0, :cond_2

    .line 252
    new-instance v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    sget-object v1, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;-><init>(Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    :cond_2
    return-void
.end method

.method protected destroyGLProgram()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->release()V

    .line 264
    iput-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->release()V

    .line 268
    iput-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    if-eqz v0, :cond_2

    .line 271
    invoke-interface {v0}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->deleteRecycledResources()V

    .line 272
    iput-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->clearBuffer()V

    return-void
.end method

.method protected abstract drawBackground(II)V
.end method

.method protected abstract drawThumbnail(Landroid/graphics/SurfaceTexture;I)V
.end method

.method public final modeInit()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    sget-object p0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "modeInit operator is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    return-void
.end method

.method public modeInitCallback()V
    .locals 0

    .line 221
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->createGLProgram()V

    return-void
.end method

.method public final modeUnInit()V
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    if-nez p0, :cond_0

    .line 77
    sget-object p0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "modeUnInit operator is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    return-void
.end method

.method public modeUninitCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 226
    iput v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mOrientation:I

    .line 227
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    .line 228
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->destroyGLProgram()V

    return-void
.end method

.method public onCaptureEnd()V
    .locals 2

    .line 209
    sget-object v0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    .line 211
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->clearBuffer()V

    return-void
.end method

.method public onCaptureFailed()V
    .locals 2

    .line 202
    sget-object v0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    .line 204
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->clearBuffer()V

    return-void
.end method

.method public onCaptureStart()V
    .locals 2

    .line 191
    sget-object v0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    return-void
.end method

.method public onCaptureStop()V
    .locals 1

    .line 197
    sget-object p0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCaptureStop"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected final onThumbnailUpdate([BIIII)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/common/BasePreview;->onThumbnailUpdateBgr([BIIII)V

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mResumed:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mUIReady:Z

    return-void
.end method

.method public readyUI()V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mResumed:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mUIReady:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mResumed:Z

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 233
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->createGLProgram()V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 238
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->destroyGLProgram()V

    return-void
.end method

.method public updateOrientation(I)V
    .locals 3

    .line 215
    sget-object v0, Lcom/transsion/camera/feature/common/BasePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    iput p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mOrientation:I

    return-void
.end method
