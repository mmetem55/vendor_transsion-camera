.class public Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;
.super Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;
.source "BodyMojiRenderer.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TARGET_ANGLE_DEFAULT:F = 0.0f

.field private static final TARGET_SCALE_FACTOR:F = 600.0f

.field private static final TARGET_SCALE_MAX:F = 200.0f

.field private static final TARGET_SCALE_MIN:F = -1000.0f

.field private static final TARGET_TRANS:F = 50.0f


# instance fields
.field private final defaultScale:D

.field private final scaleFactor:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BodyMojiRenderer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;-><init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Ljava/lang/String;)V

    .line 32
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    .line 33
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide p1, -0x3f6bb00000000000L    # -1300.0

    .line 34
    iput-wide p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;->defaultScale:D

    const-wide p1, 0x4094500000000000L    # 1300.0

    .line 35
    iput-wide p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;->scaleFactor:D

    goto :goto_0

    :cond_0
    const-wide p1, -0x3f80c00000000000L    # -500.0

    .line 37
    iput-wide p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;->defaultScale:D

    const-wide p1, 0x4082c00000000000L    # 600.0

    .line 38
    iput-wide p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;->scaleFactor:D

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;)D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;->defaultScale:D

    return-wide v0
.end method

.method private entryBodyMojiParam()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer$1;

    const-string v2, "exitBodyMojiParam"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer$1;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    return-void
.end method

.method private exitBodyMojiParam()V
    .locals 0

    return-void
.end method


# virtual methods
.method public handleDraw()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mTapHelper:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->isScaling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;->defaultScale:D

    const/high16 v2, 0x44160000    # 600.0f

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mTapHelper:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->getCurScale()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    float-to-double v2, v3

    add-double/2addr v0, v2

    .line 83
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    const-string v4, "target_scale"

    invoke-static {v2, v4, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v0

    aget v0, v0, v3

    const-wide/16 v1, 0x0

    const-string v3, "reset_all"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 86
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->handleDraw()V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->getOESTextureId()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->onPrepareDrawFrame(III)V

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->onDrawBundle()V

    .line 89
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public init()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->init()V

    .line 64
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->openCamera()V

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;->entryBodyMojiParam()V

    return-void
.end method

.method protected onDrawBundleToCurrentFrameBuffer()V
    .locals 8

    .line 77
    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    iget v5, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->onDrawFrame([BIIIII[F)I

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 71
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->unInit()V

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;->exitBodyMojiParam()V

    return-void
.end method
