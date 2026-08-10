.class public Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;
.super Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;
.source "ArcFilterPreview.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

.field private mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

.field private mIsFaceingBack:Z

.field private final mOESMatrix:[F

.field private mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

.field private mResume:Z

.field private mSensorOrientation:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSufaceHeight:I

.field private final mtx:[F


# direct methods
.method public static synthetic $r8$lambda$7QbgohUxMeOXx3G3F29AdWnCuYk(Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    new-array v0, p1, [F

    .line 31
    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mtx:[F

    new-array p1, p1, [F

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mSufaceHeight:I

    .line 202
    new-instance p1, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private flip([FZZ)[F
    .locals 2

    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    const/4 p0, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 197
    :goto_1
    invoke-static {p1, p0, p2, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_3
    return-object p1
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 203
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_asd_effect_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 207
    check-cast p2, [I

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unInitPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .locals 1

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz p0, :cond_1

    .line 173
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_MODE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    if-ne p1, v0, :cond_0

    .line 174
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->modeUninitCallback()V

    goto :goto_0

    .line 175
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_SURFACE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 176
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unInitProgram()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    .line 163
    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    .line 167
    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    :cond_1
    return-void
.end method


# virtual methods
.method protected drawFilterPreview(Landroid/graphics/SurfaceTexture;III)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 63
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    const/4 v13, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v5, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-ne v3, v5, :cond_0

    iget v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz v3, :cond_0

    .line 65
    iput v10, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceWidth:I

    .line 66
    iput v11, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceHeight:I

    .line 67
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4, v4, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 68
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    invoke-virtual {v1, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 69
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    iget v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, v1

    move v1, v3

    move/from16 v2, p2

    move v3, v4

    move-object v4, v5

    move-object v5, v9

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v0 .. v12}, Lcom/arcsoft/filter/ArcFilterEngine;->DoStep(IIZ[FLandroid/graphics/Rect;IIILandroid/graphics/Rect;III)I

    return v13

    .line 74
    :cond_0
    iget-boolean v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mResume:Z

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v3, :cond_6

    const-string v5, "key_asd_enhance"

    .line 75
    invoke-interface {v3, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "on"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v6, "key_hdr"

    .line 76
    invoke-interface {v3, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 77
    iget v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mSufaceHeight:I

    if-eq v3, v11, :cond_1

    .line 78
    iput v11, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mSufaceHeight:I

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->unInitProgram()V

    return v4

    .line 82
    :cond_1
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-nez v3, :cond_3

    .line 83
    :cond_2
    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_SURFACE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    .line 85
    :cond_3
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mtx:[F

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 86
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 87
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    iget-boolean v5, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mIsFaceingBack:Z

    invoke-direct {v0, v3, v5, v4}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->flip([FZZ)[F

    .line 88
    iget-object v14, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    const/4 v15, 0x0

    iget v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mSensorOrientation:I

    add-int/lit16 v3, v3, 0xb4

    int-to-float v3, v3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v16, v3

    invoke-static/range {v14 .. v19}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 89
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    iget-object v5, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mOESMatrix:[F

    invoke-virtual {v3, v2, v10, v11, v5}, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->drawFrameOffScreen(III[F)I

    move-result v3

    if-gez v3, :cond_4

    .line 91
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "draw return oesTextureId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v4

    .line 95
    :cond_4
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    invoke-interface {v2, v1, v3, v10, v11}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->onDraw(Landroid/graphics/SurfaceTexture;III)I

    move-result v1

    if-lez v1, :cond_5

    move v3, v1

    .line 100
    :cond_5
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mtx:[F

    invoke-virtual {v1, v3, v0}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F)V

    return v13

    :cond_6
    return v4
.end method

.method protected drawFilterPreviewOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 16

    move-object/from16 v0, p0

    .line 109
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawOffScreen mArcFilterEngine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mFilterIdsLoadedState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mCurrentFilterId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-ne v1, v3, :cond_0

    iget v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz v1, :cond_0

    .line 113
    new-instance v12, Landroid/graphics/Rect;

    move/from16 v1, p3

    move/from16 v14, p4

    invoke-direct {v12, v2, v2, v1, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 115
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    iget v4, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    const/4 v11, 0x0

    const/4 v15, 0x0

    move/from16 v5, p2

    move-object v8, v12

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v13, p3

    invoke-virtual/range {v3 .. v15}, Lcom/arcsoft/filter/ArcFilterEngine;->DoStep(IIZ[FLandroid/graphics/Rect;IIILandroid/graphics/Rect;III)I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V
    .locals 0

    .line 44
    invoke-super/range {p0 .. p6}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V

    .line 45
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1, p5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 47
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mSensorOrientation:I

    .line 48
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mIsFaceingBack:Z

    goto :goto_1

    .line 50
    :cond_1
    sget-object p1, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cameraInfo is null, cameraId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p2, "key_asd_effect_state"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .locals 3

    .line 129
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFilterPreviewCallback type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-nez p1, :cond_0

    .line 131
    new-instance p1, Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    invoke-direct {p1}, Lcom/transsion/camera/utils/gles/ProgramTexture2d;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplay2D:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    if-nez p1, :cond_1

    .line 134
    new-instance p1, Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    invoke-direct {p1}, Lcom/transsion/camera/utils/gles/ProgramTextureOES;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mFullScreenFUDisplayOes:Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz p1, :cond_2

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->modeInitCallback(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method protected loadGLResourceFilterPreviewCallback(I)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz p0, :cond_0

    .line 184
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->loadGLResourceCallback(I)V

    :cond_0
    return-void
.end method

.method protected loadGLResourcesFilterPreviewCallback([I)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz p0, :cond_0

    .line 191
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->loadGLResourcesCallback([I)V

    :cond_0
    return-void
.end method

.method protected pauseFilterPreviewCallBack()V
    .locals 2

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mResume:Z

    .line 156
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pauseFilterPreviewCallBack"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_SURFACE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->unInitPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    return-void
.end method

.method protected resumeFilterPreviewCallBack()V
    .locals 1

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mResume:Z

    return-void
.end method

.method public setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mPreviewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 57
    invoke-super {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->unInit()V

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_asd_effect_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected unInitFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .locals 2

    .line 143
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInitFilterPreviewCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->unInitPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    .line 145
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/preview/ArcFilterPreview;->unInitProgram()V

    return-void
.end method
