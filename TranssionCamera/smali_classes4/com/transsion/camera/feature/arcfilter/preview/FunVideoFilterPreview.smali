.class public Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;
.super Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;
.source "FunVideoFilterPreview.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VERTEX_DEFAULT_MATRIX:[F


# instance fields
.field private fboId:[I

.field private isCreate:Z

.field private mDstFboId:I

.field private mDstTexId:I

.field private mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

.field private previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

.field private tex:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 22
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->VERTEX_DEFAULT_MATRIX:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
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
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->isCreate:Z

    return-void
.end method

.method private createFBO(II)V
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 143
    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->fboId:[I

    new-array v2, v0, [I

    .line 144
    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    const/4 v2, 0x0

    .line 146
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 147
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    aget v0, v0, v2

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 153
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 154
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    const/16 v3, 0x2601

    .line 155
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 156
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    const/4 v12, 0x0

    move v7, p1

    move v8, p2

    .line 159
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 160
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->fboId:[I

    aget p1, p1, v2

    const p2, 0x8d40

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    aget p1, p1, v2

    const v0, 0x8ce0

    invoke-static {p2, v0, v1, p1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 167
    invoke-static {p2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p1

    const v0, 0x8cd5

    if-ne v0, p1, :cond_0

    .line 172
    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->fboId:[I

    aget p1, p1, v2

    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mDstFboId:I

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    aget p1, p1, v2

    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mDstTexId:I

    return-void

    .line 169
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error CreateTmpFBO()."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private release(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .locals 4

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 179
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0xde1

    .line 180
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->fboId:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 183
    iput-object v3, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->fboId:[I

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    if-eqz v0, :cond_1

    .line 186
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 187
    iput-object v3, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->tex:[I

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v0, :cond_3

    .line 190
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_MODE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    if-ne p1, v2, :cond_2

    .line 191
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->modeUninitCallback()V

    goto :goto_0

    .line 193
    :cond_2
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V

    .line 196
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-eqz p1, :cond_4

    .line 197
    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    .line 198
    iput-object v3, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    .line 200
    :cond_4
    iput v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceWidth:I

    .line 201
    iput v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceHeight:I

    .line 202
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method


# virtual methods
.method protected drawFilterPreview(Landroid/graphics/SurfaceTexture;III)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v11, p3

    move/from16 v12, p4

    .line 52
    iget v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceWidth:I

    if-ne v2, v11, :cond_0

    iget v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceHeight:I

    if-eq v2, v12, :cond_1

    .line 53
    :cond_0
    iput v11, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceWidth:I

    .line 54
    iput v12, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceHeight:I

    .line 55
    invoke-direct {v0, v11, v12}, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->createFBO(II)V

    .line 58
    :cond_1
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 59
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz v2, :cond_2

    .line 61
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v15, v15, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 62
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    iget v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    iget v9, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mDstFboId:I

    const/4 v13, 0x0

    move/from16 v3, p2

    move-object v6, v10

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v1 .. v13}, Lcom/arcsoft/filter/ArcFilterEngine;->DoStep(IIZ[FLandroid/graphics/Rect;IIILandroid/graphics/Rect;III)I

    .line 64
    iget v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mDstTexId:I

    goto :goto_0

    .line 66
    :cond_2
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v2, :cond_3

    move/from16 v3, p2

    .line 67
    invoke-interface {v2, v1, v3, v11, v12}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->onDraw(Landroid/graphics/SurfaceTexture;III)I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v14

    .line 71
    :goto_0
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v2, :cond_5

    .line 72
    iget v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mDstTexId:I

    if-ne v1, v3, :cond_4

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->VERTEX_DEFAULT_MATRIX:[F

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    :goto_1
    invoke-interface {v2, v1, v3}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->onRecording(I[F)V

    :cond_5
    if-ne v1, v14, :cond_6

    .line 76
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init not completed, return false"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v15

    .line 79
    :cond_6
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    iget v3, v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mDstTexId:I

    if-ne v1, v3, :cond_7

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->VERTEX_DEFAULT_MATRIX:[F

    goto :goto_2

    :cond_7
    iget-object v0, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    :goto_2
    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F)V

    const/4 v0, 0x1

    return v0
.end method

.method protected drawFilterPreviewOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 16

    move-object/from16 v0, p0

    .line 87
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-ne v1, v3, :cond_0

    iget v1, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz v1, :cond_0

    .line 89
    new-instance v12, Landroid/graphics/Rect;

    move/from16 v1, p3

    move/from16 v14, p4

    invoke-direct {v12, v2, v2, v1, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 90
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 91
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

.method protected initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .locals 2

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->isCreate:Z

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v0, :cond_1

    .line 102
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_MODE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    if-ne p1, v1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mContext:Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->modeInitCallback(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 105
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V

    .line 108
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-nez p1, :cond_2

    .line 109
    new-instance p1, Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    invoke-direct {p1}, Lcom/transsion/camera/utils/gles/ProgramTexture2d;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    :cond_2
    return-void
.end method

.method protected loadGLResourceFilterPreviewCallback(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->isCreate:Z

    if-eqz p0, :cond_0

    .line 122
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->loadGLResourceCallback(I)V

    :cond_0
    return-void
.end method

.method protected loadGLResourcesFilterPreviewCallback([I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->isCreate:Z

    if-eqz p0, :cond_0

    .line 130
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;->loadGLResourcesCallback([I)V

    :cond_0
    return-void
.end method

.method public notifyAction(I)V
    .locals 0

    return-void
.end method

.method public onPostViewData(IIIZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->previewCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    return-void
.end method

.method protected unInitFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->isCreate:Z

    .line 116
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/FunVideoFilterPreview;->release(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    return-void
.end method
