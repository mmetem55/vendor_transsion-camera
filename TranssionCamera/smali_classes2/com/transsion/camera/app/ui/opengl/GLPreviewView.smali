.class public Lcom/transsion/camera/app/ui/opengl/GLPreviewView;
.super Landroid/opengl/GLSurfaceView;
.source "GLPreviewView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/opengl/GLPreviewView$MyConfigChooser;,
        Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;,
        Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackground:Landroid/graphics/Bitmap;

.field private volatile mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

.field private mDrawFrameCount:I

.field private volatile mFrameDrawState:I

.field private mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

.field private mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

.field private mIsNeedReCreateSurface:Z

.field private mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

.field private final mLockObj:Ljava/lang/Object;

.field private mMainHandler:Landroid/os/Handler;

.field private volatile mNeedToStopRequest:Z

.field private mOESTextureId:I

.field public mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

.field private mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

.field private mRenderedCallbackHandler:Landroid/os/Handler;

.field private final mRenderedCallbackRunnable:Ljava/lang/Runnable;

.field private mRendererRequestHandler:Landroid/os/Handler;

.field private mRendererRequestThread:Landroid/os/HandlerThread;

.field public final mStateLock:Lcom/transsion/camera/utils/StateWait;

.field private mSurfaceHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceWidth:I

.field private mTmpCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

.field private final mTransformMatrix:[F

.field private final mWindowSurfaceFactory:Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;


# direct methods
.method public static synthetic $r8$lambda$quAjI4GMyMl57Eo_S94urF_8EU8(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->lambda$onDrawFrame$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 293
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 49
    iput p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    .line 50
    iput p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mDrawFrameCount:I

    .line 58
    new-instance v0, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v0}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 72
    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTransformMatrix:[F

    .line 74
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    .line 75
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRenderedCallbackRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    .line 294
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 295
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;I)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 296
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$MyConfigChooser;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$MyConfigChooser;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 298
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;

    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->isWcgSupported(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mWindowSurfaceFactory:Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;

    .line 300
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    .line 302
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 303
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 304
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRenderedCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mBackground:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mBackground:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mWindowSurfaceFactory:Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTmpCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTmpCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->createGLProgram()V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->offscreenRenderForGetPixel(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;)Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    return-object p1
.end method

.method static synthetic access$302(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->destroySurfaceTexture()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->destroyGLProgram()V

    return-void
.end method

.method private createGLProgram()V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    .line 525
    :cond_0
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;-><init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    return-void
.end method

.method private createSurfaceTexture()V
    .locals 3

    .line 472
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PreviewPerformance] createSurfaceTexture run in thread : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "createSurfaceTexture"

    .line 473
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->startRendererRequestThread()V

    .line 475
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createOESTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    .line 476
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 477
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 481
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private destroyGLProgram()V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    .line 533
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->stopRenderRequestThread()V

    return-void
.end method

.method private destroySurfaceTexture()V
    .locals 3

    .line 537
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySurfaceTexture mSurfaceTexture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",currThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 539
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz v1, :cond_0

    .line 540
    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 543
    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method private synthetic lambda$onDrawFrame$0()V
    .locals 1

    const/4 v0, 0x4

    .line 660
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 661
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    return-void
.end method

.method private offscreenRenderForGetPixel(II)V
    .locals 8

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 714
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    iget-object v6, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->getPreviewBitmapByFBO(Landroid/graphics/SurfaceTexture;IIILcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 719
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onDrawFrameDone()V
    .locals 4

    .line 675
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 676
    iput v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRenderedCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 679
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "add mRenderedCallbackRunnable event"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 681
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[PreviewPerformance] onDrawFrame done."

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz v0, :cond_1

    .line 683
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureDrawn()V

    .line 686
    :cond_1
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mDrawFrameCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mDrawFrameCount:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 687
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PreviewPerformance] onDrawFrame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mDrawFrameCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " frame done."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 688
    iget p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mDrawFrameCount:I

    if-ne p0, v2, :cond_2

    .line 689
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraLaunchEndTime()V

    :cond_2
    return-void
.end method

.method private startRendererRequestThread()V
    .locals 2

    .line 564
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RendererRequestThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestThread:Landroid/os/HandlerThread;

    .line 565
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 566
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopRenderRequestThread()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 571
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopRenderRequestThread"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 572
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 1

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsNeedReCreateSurface:Z

    :cond_0
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_1

    .line 156
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsNeedReCreateSurface:Z

    if-eqz p1, :cond_1

    .line 157
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "SurfaceError"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 163
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 164
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 165
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsNeedReCreateSurface:Z

    :cond_1
    return-void
.end method

.method public executeInGLThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 725
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$14;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;II)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 733
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 735
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 737
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public loadGLResource(ZI)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;IZ)V

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 189
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 191
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->waitState()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadGLResources(Z[I)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;[IZ)V

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 220
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 222
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->waitState()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 345
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 368
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 345
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public modePause()V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 415
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$8;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$8;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 421
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public modeReload()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 442
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$10;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$10;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 448
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public modeResume()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 401
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$7;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$7;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 407
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public modeUninit()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 376
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 390
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 392
    :try_start_0
    iput-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 393
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9

    .line 623
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 626
    :cond_0
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    const/4 v1, 0x0

    invoke-static {v1, v1, p1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 628
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 635
    invoke-static {v0, v0, v0, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4500

    .line 636
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 637
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTransformMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 641
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 642
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    iget v4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget v5, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    iget-object v6, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTransformMatrix:[F

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v7

    invoke-interface/range {v1 .. v8}, Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;->algorithmRender(Landroid/graphics/SurfaceTexture;III[FJ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 643
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onDrawFrameDone()V

    return-void

    .line 647
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz p1, :cond_3

    .line 648
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    monitor-enter p1

    .line 649
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget v4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    .line 650
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onDrawFrameDone()V

    .line 652
    monitor-exit p1

    return-void

    .line 654
    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    :try_start_2
    const-string p1, "drawFrame"

    .line 657
    invoke-static {p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 665
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz p1, :cond_4

    .line 666
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    .line 667
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz p1, :cond_4

    .line 668
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->drawExtra(Landroid/graphics/SurfaceTexture;III)V

    .line 671
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onDrawFrameDone()V

    return-void

    .line 659
    :catch_0
    new-instance p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_1
    move-exception p0

    .line 630
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 631
    sget-object p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onDrawFrame IllegalStateException return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 549
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    if-eqz v0, :cond_0

    return-void

    .line 552
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 553
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    const/4 v0, 0x0

    .line 554
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mDrawFrameCount:I

    .line 555
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PreviewPerformance] onFrameAvailable thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 557
    :cond_1
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 558
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz p0, :cond_2

    .line 559
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_2
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 598
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PreviewPerformance] onSurfaceChanged width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mSurfaceWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mSurfaceHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 600
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    if-ne p1, p3, :cond_0

    return-void

    .line 603
    :cond_0
    iput p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    .line 604
    iput p3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    .line 605
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setSurfaceSize(II)V

    const/4 p1, 0x0

    .line 606
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 578
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$13;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$13;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 584
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onSurfaceCreated"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 585
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->createSurfaceTexture()V

    .line 586
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->createGLProgram()V

    .line 587
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    if-eqz p1, :cond_0

    .line 588
    invoke-interface {p1}, Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;->onSurfaceCreated()V

    .line 590
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz p1, :cond_1

    .line 591
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    const/4 p1, 0x0

    .line 593
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    return-void
.end method

.method public onSurfaceDestroyCallback()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$9;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    .line 434
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public releaseResource()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mBackground:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public resetDrawState()V
    .locals 2

    .line 101
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetDrawState"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$2;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    .line 108
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAlgoRenderer(Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    return-void
.end method

.method public setNormalPreview()V
    .locals 1

    .line 508
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->executeInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setP3VideoPreview()V
    .locals 1

    .line 494
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$11;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$11;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->executeInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 2

    const-string v0, "setSurfaceSize"

    .line 461
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 463
    invoke-interface {v0, v1, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->surfaceChangedCallback(Landroid/graphics/SurfaceTexture;II)V

    .line 468
    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public setSurfaceTextureListener(Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;)V
    .locals 2

    .line 452
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setSurfaceTextureListener"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 453
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    return-void
.end method

.method public setVideoWithP3Preview()V
    .locals 2

    .line 485
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getP3VideoPreviewSwitch(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setP3VideoPreview()V

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setNormalPreview()V

    :goto_0
    return-void
.end method

.method public startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V
    .locals 3

    .line 120
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRenderRequest callbacker = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",handler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    .line 122
    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRenderedCallbackHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    .line 124
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    .line 125
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public stopRenderRequest()V
    .locals 2

    .line 95
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopRenderRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 611
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 612
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    if-eqz p1, :cond_0

    .line 613
    invoke-interface {p1}, Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;->onSurfaceDestroyed()V

    :cond_0
    const/4 p1, 0x0

    .line 615
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsNeedReCreateSurface:Z

    .line 616
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    .line 617
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    .line 618
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    return-void
.end method
