.class public abstract Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnCalibratingListener;,
        Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnSystemErrorListener;,
        Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnTrackingStatusChangedListener;,
        Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnFUDebugListener;
    }
.end annotation


# static fields
.field protected static final DESIRED_SIZE:Landroid/util/Size;

.field private static final NANO_IN_ONE_MILLI_SECOND:F = 1000000.0f

.field protected static final SNAP_SURFACE_TIME_OUT_MS:I = 0x1f4

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TIME:F = 10.0f


# instance fields
.field protected final mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

.field protected final mContext:Landroid/content/Context;

.field private mCurrentFrameCnt:I

.field private mFuCallStartTime:J

.field private mIsCalibrating:F

.field private mIsRenderByRotation:Z

.field private mLastOneHundredFrameTimeStamp:J

.field private mNeedBenchmark:Z

.field private mOnCalibratingListener:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnCalibratingListener;

.field private mOnFUDebugListener:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnFUDebugListener;

.field private mOnSystemErrorListener:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnSystemErrorListener;

.field private mOnTrackingStatusChangedListener:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnTrackingStatusChangedListener;

.field private mOneHundredFrameFUTime:J

.field protected final mStateLock:Lcom/transsion/camera/utils/StateWait;

.field protected mSurfaceBitmap:Landroid/graphics/Bitmap;

.field private mTrackingStatus:I

.field private receiveFirstFrame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseRenderer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 26
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x690

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->DESIRED_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;)V
    .locals 4

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mCurrentFrameCnt:I

    const-wide/16 v1, 0x0

    .line 31
    iput-wide v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mLastOneHundredFrameTimeStamp:J

    .line 32
    iput-wide v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mOneHundredFrameFUTime:J

    const/4 v3, 0x1

    .line 33
    iput-boolean v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mNeedBenchmark:Z

    .line 34
    iput-wide v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mFuCallStartTime:J

    .line 35
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mTrackingStatus:I

    .line 36
    new-instance v1, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v1}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mIsRenderByRotation:Z

    const/4 v1, 0x0

    .line 97
    iput v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mIsCalibrating:F

    .line 208
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->receiveFirstFrame:Z

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    return-void
.end method

.method private benchmarkFPS(I)V
    .locals 7

    .line 110
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mNeedBenchmark:Z

    if-nez p1, :cond_0

    return-void

    .line 111
    :cond_0
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mCurrentFrameCnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mCurrentFrameCnt:I

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 112
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mCurrentFrameCnt:I

    .line 113
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const p1, 0x4e6e6b28    # 1.0E9f

    .line 114
    iget-wide v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mLastOneHundredFrameTimeStamp:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    div-float/2addr v3, v0

    div-float/2addr p1, v3

    float-to-double v3, p1

    .line 115
    iput-wide v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mLastOneHundredFrameTimeStamp:J

    .line 116
    iget-wide v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mOneHundredFrameFUTime:J

    long-to-float p1, v1

    div-float/2addr p1, v0

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/16 v5, 0x0

    .line 117
    iput-wide v5, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mOneHundredFrameFUTime:J

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mOnFUDebugListener:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnFUDebugListener;

    if-eqz p0, :cond_1

    .line 120
    invoke-interface {p0, v3, v4, v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnFUDebugListener;->onFpsChange(DD)V

    .line 131
    :cond_1
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fps = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 140
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prepareDrawFrame()V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->prepareDrawFrame()V

    return-void
.end method


# virtual methods
.method public abstract getCameraId()Ljava/lang/String;
.end method

.method public abstract getCameraSurfaceSize()Ljava/lang/String;
.end method

.method protected getFromFloat([F)[D
    .locals 3

    .line 144
    array-length p0, p1

    new-array p0, p0, [D

    const/4 v0, 0x0

    .line 145
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 146
    aget v1, p1, v0

    float-to-double v1, v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public isRenderByRotation()Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mIsRenderByRotation:Z

    return p0
.end method

.method public onCameraChange()V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->onCameraChange()V

    return-void
.end method

.method public onDrawFrame([BIIIII[F)I
    .locals 11

    move-object v0, p0

    const/4 v1, 0x0

    if-lez p3, :cond_5

    if-lez p4, :cond_5

    if-gtz p5, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    iget-object v2, v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v2

    .line 179
    aget v3, v2, v1

    if-eqz v3, :cond_4

    const/4 v10, 0x1

    aget v2, v2, v10

    if-nez v2, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    iget-boolean v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mNeedBenchmark:Z

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mFuCallStartTime:J

    .line 184
    :cond_2
    iget-object v2, v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/faceunity/pta_art/core/base/BaseCore;->onDrawFrame([BIIIII[F)I

    .line 185
    iget-boolean v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mNeedBenchmark:Z

    if-eqz v1, :cond_3

    iget-wide v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mOneHundredFrameFUTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mFuCallStartTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mOneHundredFrameFUTime:J

    .line 186
    :cond_3
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->afterDrawFrame()V

    .line 187
    iput-boolean v10, v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->receiveFirstFrame:Z

    return v10

    .line 180
    :cond_4
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "onDrawFrame controller item is not ready"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 175
    :cond_5
    :goto_1
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "onDrawFrame date error"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public onPostDrawFrame()V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->postDrawFrame()V

    return-void
.end method

.method public onPrepareDrawFrame(III)V
    .locals 0

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-gtz p3, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p1}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object p1

    const/4 p2, 0x0

    .line 166
    aget p2, p1, p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    aget p1, p1, p2

    if-nez p1, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->prepareDrawFrame()V

    return-void

    .line 167
    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onDrawFrame controller item is not ready"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_3
    :goto_1
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onDrawFrame date error"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 63
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "BaseRenderer pause"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public receiveFirstFrame()Z
    .locals 0

    .line 205
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->receiveFirstFrame:Z

    return p0
.end method

.method public resume()V
    .locals 1

    .line 68
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "BaseRenderer resume"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setDoubleParam(Ljava/lang/String;D)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, p1, p2, p3}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemSetParam(Ljava/lang/String;D)V

    return-void
.end method

.method public setOnCalibratingListener(Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnCalibratingListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mOnCalibratingListener:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnCalibratingListener;

    return-void
.end method

.method public setOnSystemErrorListener(Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnSystemErrorListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mOnSystemErrorListener:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnSystemErrorListener;

    return-void
.end method

.method public setOnTrackingStatusChangedListener(Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnTrackingStatusChangedListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mOnTrackingStatusChangedListener:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer$OnTrackingStatusChangedListener;

    return-void
.end method

.method public setRenderByRotation(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mIsRenderByRotation:Z

    return-void
.end method

.method public abstract snapSurface(II)Landroid/graphics/Bitmap;
.end method

.method public abstract startRecording(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)V
.end method

.method public abstract stopRecording(Ljava/lang/Runnable;)V
.end method

.method public abstract takePicture(Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;Landroid/os/Handler;)Z
.end method

.method public unInit()V
    .locals 1

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->receiveFirstFrame:Z

    return-void
.end method
