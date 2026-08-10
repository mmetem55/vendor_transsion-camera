.class public Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;
.super Landroid/opengl/GLSurfaceView;
.source "ARPreview.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/transsion/camera/feature/arcore/common/preview/IARModuleOperator;
.implements Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;
.implements Lcom/transsion/camera/feature/arcore/common/preview/IResourceRequester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$GLContextFactory;
    }
.end annotation


# static fields
.field private static final MODULE_CHANGE_THRESHOLD_MS:I = 0x1f4

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBottomBarHeight:I

.field private mCount:I

.field private volatile mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

.field private final mCutoutHeight:I

.field mIGLSurfaceStateCallback:Lcom/transsion/camera/feature/arcore/common/preview/IGLSurfaceStateCallback;

.field private volatile mIsSurfaceCreated:Z

.field private final mOptimalSurfaceSizeChangedListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;

.field mResourceCallback:Lcom/transsion/camera/feature/arcore/common/preview/IResourceCallbacker;

.field private mTime:J

.field private final mTopBarHeight:I

.field private final mWindowSurfaceFactory:Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;

.field public final stateWait:Lcom/transsion/camera/utils/StateWait;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ARPreview"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p2, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {p2}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->stateWait:Lcom/transsion/camera/utils/StateWait;

    .line 92
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;-><init>(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mOptimalSurfaceSizeChangedListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;

    .line 166
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/arcore/R$dimen;->arcore_top_bar_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mTopBarHeight:I

    .line 167
    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getCutoutHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCutoutHeight:I

    .line 168
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->computeBottomBarHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mBottomBarHeight:I

    .line 169
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$GLContextFactory;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$GLContextFactory;-><init>(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;I)V

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    const/4 p2, 0x0

    .line 171
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 172
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, p0

    .line 173
    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 174
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;

    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->isWcgSupported(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mWindowSurfaceFactory:Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;

    .line 176
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    .line 177
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 178
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mWindowSurfaceFactory:Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    return-object p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mIsSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mTopBarHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mBottomBarHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->handleModuleChange(Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;)V

    return-void
.end method

.method private computeBottomBarHeight(Landroid/content/Context;)I
    .locals 2

    .line 156
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCutoutHeight:I

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mTopBarHeight:I

    add-int/2addr v0, p0

    .line 157
    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/utils/ContextUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 159
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    .line 160
    div-int/lit8 p0, p0, 0x3

    sub-int/2addr p1, v0

    sub-int/2addr p1, p0

    return p1
.end method

.method private handleModuleChange(Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 184
    invoke-interface {p2}, Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;->unInit()V

    .line 186
    :cond_0
    sget-object p2, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleModuleChange mIsSurfaceCreated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mIsSurfaceCreated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    iget-boolean p2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mIsSurfaceCreated:Z

    if-eqz p2, :cond_1

    .line 188
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;->init()V

    .line 192
    :cond_1
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    return-void
.end method

.method private showFps()V
    .locals 6

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 273
    iget-wide v2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 274
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    iput-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mTime:J

    const/4 v0, 0x0

    .line 276
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCount:I

    goto :goto_0

    .line 278
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCount:I

    :goto_0
    return-void
.end method


# virtual methods
.method public destoryResource()V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mResourceCallback:Lcom/transsion/camera/feature/arcore/common/preview/IResourceCallbacker;

    if-eqz p0, :cond_0

    .line 222
    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/preview/IResourceCallbacker;->onResourceDestory()V

    :cond_0
    return-void
.end method

.method public getOptimalSurfaceSizeChangedListener()Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mOptimalSurfaceSizeChangedListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;

    return-object p0
.end method

.method public moduleChange(Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    if-ne v0, p1, :cond_0

    return-void

    .line 201
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "moduleChange begin"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->stateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 203
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$2;-><init>(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 213
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->stateWait:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 215
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 217
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "handleModuleChange end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    if-eqz p1, :cond_0

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;->drawFrame()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 291
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    if-eqz v0, :cond_0

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 299
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    if-eqz v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;->resume()V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 259
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    if-eqz p1, :cond_0

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;->sizeChanged(II)V

    .line 265
    :cond_0
    invoke-static {p2, p3}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 228
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onSurfaceCreated."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mIGLSurfaceStateCallback:Lcom/transsion/camera/feature/arcore/common/preview/IGLSurfaceStateCallback;

    if-eqz p1, :cond_0

    .line 230
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/preview/IGLSurfaceStateCallback;->onSurfaceCreated()V

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    if-eqz p1, :cond_1

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mCurrRenderCallbacker:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;->init()V

    :cond_1
    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mIsSurfaceCreated:Z

    return-void
.end method

.method public onSurfaceDestroyCallback()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mIGLSurfaceStateCallback:Lcom/transsion/camera/feature/arcore/common/preview/IGLSurfaceStateCallback;

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$3;-><init>(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)V

    .line 248
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGLSurfaceStateCallback(Lcom/transsion/camera/feature/arcore/common/preview/IGLSurfaceStateCallback;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mIGLSurfaceStateCallback:Lcom/transsion/camera/feature/arcore/common/preview/IGLSurfaceStateCallback;

    return-void
.end method

.method public setResourceDestoryCallback(Lcom/transsion/camera/feature/arcore/common/preview/IResourceCallbacker;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mResourceCallback:Lcom/transsion/camera/feature/arcore/common/preview/IResourceCallbacker;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 253
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method
