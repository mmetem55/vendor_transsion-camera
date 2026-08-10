.class public Lcom/arcsoft/filter/ArcFilterEngine;
.super Ljava/lang/Object;
.source "ArcFilterEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;,
        Lcom/arcsoft/filter/ArcFilterEngine$CaptureProcessCallback;,
        Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;
    }
.end annotation


# static fields
.field private static mbEnableLog:Z


# instance fields
.field private IdentityMatrix:[F

.field private bufferArr0:[Ljava/nio/ByteBuffer;

.field private bufferArr1:[B

.field private mCaptureProcessCallback:Lcom/arcsoft/filter/ArcFilterEngine$CaptureProcessCallback;

.field private mContext:Landroid/content/Context;

.field private mDefaultEffecID:I

.field private mEngineHandler:J

.field private mEventHandler:Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

.field private mFilterEngine:Lcom/arcsoft/filter/FilterEngineOES;

.field private mFilterParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;",
            ">;"
        }
    .end annotation
.end field

.field private mMLEngineInited:Z

.field private mMaskRotate:I

.field private mRenderFboHeight:I

.field private mRenderFboWidth:I

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ArcFilter"

    .line 84
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    const-wide/16 v1, 0x0

    .line 63
    iput-wide v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    .line 64
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mStatus:I

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mContext:Landroid/content/Context;

    .line 66
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mDefaultEffecID:I

    .line 68
    iput-object v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEventHandler:Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

    .line 69
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mRenderFboWidth:I

    .line 70
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mRenderFboHeight:I

    .line 72
    iput-object v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mCaptureProcessCallback:Lcom/arcsoft/filter/ArcFilterEngine$CaptureProcessCallback;

    .line 73
    iput-object v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->bufferArr0:[Ljava/nio/ByteBuffer;

    .line 74
    iput-object v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->bufferArr1:[B

    .line 75
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMaskRotate:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 80
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->IdentityMatrix:[F

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

.method private Init(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2

    const-string p1, "Init <----"

    .line 156
    invoke-static {p1}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    .line 160
    iget p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mStatus:I

    const/4 p3, 0x6

    if-eqz p1, :cond_0

    const-string p0, "Init state error"

    .line 161
    invoke-static {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGE(Ljava/lang/String;)V

    return p3

    .line 165
    :cond_0
    iput p2, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mDefaultEffecID:I

    .line 172
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 173
    new-instance p2, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

    invoke-direct {p2, p0, p1}, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;-><init>(Lcom/arcsoft/filter/ArcFilterEngine;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEventHandler:Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 175
    new-instance p2, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

    invoke-direct {p2, p0, p1}, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;-><init>(Lcom/arcsoft/filter/ArcFilterEngine;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEventHandler:Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEventHandler:Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;

    .line 181
    :goto_0
    sget-boolean p1, Lcom/arcsoft/filter/ArcFilterEngine;->mbEnableLog:Z

    invoke-virtual {p0, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->EnableDebuglogOutput(Z)I

    .line 182
    invoke-direct {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->native_InitEngine()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 184
    iput-boolean p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    .line 190
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->SetFaceBeautyEnable(Ljava/lang/Boolean;)I

    .line 192
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterParamMap:Ljava/util/HashMap;

    const-string p0, "Init ---->"

    .line 193
    invoke-static {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    return p2

    .line 186
    :cond_3
    iput-boolean p2, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    return p3
.end method

.method private static LOGE(Ljava/lang/String;)V
    .locals 1

    .line 621
    sget-boolean v0, Lcom/arcsoft/filter/ArcFilterEngine;->mbEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "ArcFilterEngine"

    .line 622
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static LOGV(Ljava/lang/String;)V
    .locals 1

    .line 626
    sget-boolean v0, Lcom/arcsoft/filter/ArcFilterEngine;->mbEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "ArcFilterEngine"

    .line 627
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private PushPreviewTexture(IZ[FLandroid/graphics/Rect;II)I
    .locals 11

    move-object v0, p0

    .line 533
    iget-boolean v1, v0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 536
    :cond_0
    iget-wide v1, v0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lcom/arcsoft/filter/ArcFilterEngine;->native_PreviewProcessWithTexture(JIZ[FLandroid/graphics/Rect;IIII)I

    move-result v0

    return v0
.end method

.method private SetEffectEx(IJ)I
    .locals 6

    .line 448
    iget-boolean v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 451
    :cond_0
    iget-wide v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/filter/ArcFilterEngine;->native_SetEffectEx(JIJ)I

    move-result p0

    return p0
.end method

.method private SetFaceBeautyEnable(Ljava/lang/Boolean;)I
    .locals 2

    .line 474
    iget-boolean v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 477
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetFaceBeauty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    .line 478
    iget-wide v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->native_EnableFaceBeauty(JZ)I

    move-result p0

    return p0
.end method

.method private SetOutputFbo(ILandroid/graphics/Rect;IIII)I
    .locals 26

    move-object/from16 v0, p0

    .line 455
    iget-boolean v1, v0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    rsub-int/lit8 v8, p6, 0x64

    .line 462
    iget-object v1, v0, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterParamMap:Ljava/util/HashMap;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;

    if-nez v1, :cond_1

    .line 464
    new-instance v1, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;-><init>(Lcom/arcsoft/filter/ArcFilterEngine;Lcom/arcsoft/filter/ArcFilterEngine$1;)V

    :cond_1
    move-object v3, v1

    .line 465
    iget-wide v1, v0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    iget v9, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam0:I

    iget v10, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam1:I

    iget v11, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam2:I

    iget v12, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam3:I

    iget v13, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam4:I

    iget v14, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam5:I

    iget v15, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam6:I

    iget v4, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam7:I

    move/from16 v16, v4

    iget v4, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam8:I

    move/from16 v17, v4

    iget v4, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->nParam9:I

    move/from16 v18, v4

    iget v4, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam0:F

    move/from16 v19, v4

    iget v4, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam1:F

    move/from16 v20, v4

    iget v4, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam2:F

    move/from16 v21, v4

    iget v4, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam3:F

    move/from16 v22, v4

    iget v4, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam4:F

    move/from16 v23, v4

    iget v4, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam5:F

    move/from16 v24, v4

    iget v3, v3, Lcom/arcsoft/filter/ArcFilterEngine$FilterParam;->fParam6:F

    move/from16 v25, v3

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v25}, Lcom/arcsoft/filter/ArcFilterEngine;->native_SetOutputFbo(JILandroid/graphics/Rect;IIIIIIIIIIIIIIFFFFFFF)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/arcsoft/filter/ArcFilterEngine;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mStatus:I

    return p0
.end method

.method static synthetic access$102(Lcom/arcsoft/filter/ArcFilterEngine;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mStatus:I

    return p1
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/arcsoft/filter/ArcFilterEngine;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    return p0
.end method

.method static synthetic access$400(Lcom/arcsoft/filter/ArcFilterEngine;)Lcom/arcsoft/filter/ArcFilterEngine$CaptureProcessCallback;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mCaptureProcessCallback:Lcom/arcsoft/filter/ArcFilterEngine$CaptureProcessCallback;

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGE(Ljava/lang/String;)V

    return-void
.end method

.method private native native_EnableDebuglogOutput(Z)I
.end method

.method private native native_EnableFaceBeauty(JZ)I
.end method

.method private native native_InitEngine()J
.end method

.method private native native_PreviewProcessWithTexture(JIZ[FLandroid/graphics/Rect;IIII)I
.end method

.method private native native_SetEffectEx(JIJ)I
.end method

.method private native native_SetOutputFbo(JILandroid/graphics/Rect;IIIIIIIIIIIIIIFFFFFFF)I
.end method

.method private native native_UninitEngine(J)I
.end method

.method private native native_onDrawFrame(J)I
.end method

.method private native native_onSurfaceCreated(J)I
.end method

.method private onDrawFrame()I
    .locals 2

    .line 556
    iget-boolean v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 566
    :cond_0
    iget-wide v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/filter/ArcFilterEngine;->native_onDrawFrame(J)I

    move-result p0

    return p0
.end method

.method private onSurfaceCreated()I
    .locals 2

    .line 540
    iget-boolean v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "onSurfaceCreated---"

    .line 543
    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    .line 544
    iget-wide v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/filter/ArcFilterEngine;->native_onSurfaceCreated(J)I

    move-result p0

    return p0
.end method

.method private parseEffectArray([I)J
    .locals 5

    .line 263
    array-length p0, p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 267
    aget v3, p1, v2

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-wide/32 v3, 0x20000000

    goto :goto_1

    :pswitch_1
    const-wide/32 v3, 0x10000000

    goto :goto_1

    :pswitch_2
    const-wide/32 v3, 0x8000000

    goto :goto_1

    :pswitch_3
    const-wide/32 v3, 0x4000000

    goto :goto_1

    :pswitch_4
    const-wide/32 v3, 0x2000000

    goto :goto_1

    :pswitch_5
    const-wide/32 v3, 0x1000000

    goto :goto_1

    :pswitch_6
    const-wide/32 v3, 0x800000

    goto :goto_1

    :pswitch_7
    const-wide/32 v3, 0x400000

    goto :goto_1

    :pswitch_8
    const-wide/32 v3, 0x200000

    goto :goto_1

    :pswitch_9
    const-wide/32 v3, 0x100000

    goto :goto_1

    :pswitch_a
    const-wide/32 v3, 0x80000

    goto :goto_1

    :pswitch_b
    const-wide/32 v3, 0x40000

    :goto_1
    add-long/2addr v0, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x10000301
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public DoStep(IIZ[FLandroid/graphics/Rect;IIILandroid/graphics/Rect;III)I
    .locals 11

    move-object v7, p0

    .line 392
    iget-boolean v0, v7, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    const/4 v8, 0x1

    if-nez v0, :cond_0

    return v8

    :cond_0
    if-nez p1, :cond_2

    .line 397
    iget-object v0, v7, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterEngine:Lcom/arcsoft/filter/FilterEngineOES;

    if-nez v0, :cond_1

    .line 398
    new-instance v0, Lcom/arcsoft/filter/FilterEngineOES;

    invoke-direct {v0}, Lcom/arcsoft/filter/FilterEngineOES;-><init>()V

    iput-object v0, v7, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterEngine:Lcom/arcsoft/filter/FilterEngineOES;

    move v9, p3

    .line 399
    invoke-virtual {v0, p3}, Lcom/arcsoft/filter/FilterEngineOES;->init(Z)V

    goto :goto_0

    :cond_1
    move v9, p3

    .line 401
    :goto_0
    iget-object v1, v7, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterEngine:Lcom/arcsoft/filter/FilterEngineOES;

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-virtual/range {v1 .. v10}, Lcom/arcsoft/filter/FilterEngineOES;->drawTexture(IZ[FLandroid/graphics/Rect;IIIII)V

    const/4 v0, 0x0

    return v0

    :cond_2
    move v9, p3

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object v0, p0

    move/from16 v1, p8

    move-object/from16 v2, p9

    move/from16 v3, p10

    move/from16 v4, p11

    move v5, p1

    move/from16 v6, p12

    .line 409
    invoke-direct/range {v0 .. v6}, Lcom/arcsoft/filter/ArcFilterEngine;->SetOutputFbo(ILandroid/graphics/Rect;IIII)I

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStep SetOutputFbo error, res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGE(Ljava/lang/String;)V

    return v8

    :cond_3
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 415
    invoke-direct/range {v0 .. v6}, Lcom/arcsoft/filter/ArcFilterEngine;->PushPreviewTexture(IZ[FLandroid/graphics/Rect;II)I

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStep PushPreviewTexture error, res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGE(Ljava/lang/String;)V

    return v8

    .line 421
    :cond_4
    invoke-direct {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->onDrawFrame()I

    move-result v0

    if-eqz v0, :cond_5

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStep onDrawFrame error, res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGE(Ljava/lang/String;)V

    return v8

    .line 426
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return v0
.end method

.method public EnableDebuglogOutput(Z)I
    .locals 0

    .line 436
    invoke-direct {p0, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->native_EnableDebuglogOutput(Z)I

    move-result p0

    return p0
.end method

.method public Init()I
    .locals 3

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mRenderFboHeight:I

    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mRenderFboWidth:I

    .line 137
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mDefaultEffecID:I

    const/4 v1, 0x0

    const-string v2, ""

    .line 139
    invoke-direct {p0, v1, v0, v2}, Lcom/arcsoft/filter/ArcFilterEngine;->Init(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public Init(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mRenderFboHeight:I

    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mRenderFboWidth:I

    .line 148
    iput v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mDefaultEffecID:I

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, v1, v0, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->Init(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public PrepareEngineEx([I)I
    .locals 2

    const-string v0, "PrepareEngineEx <----"

    .line 242
    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->parseEffectArray([I)J

    move-result-wide v0

    const p1, 0x10000ff0

    .line 246
    invoke-direct {p0, p1, v0, v1}, Lcom/arcsoft/filter/ArcFilterEngine;->SetEffectEx(IJ)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 248
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrepareEngine SetEffect error, res:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGE(Ljava/lang/String;)V

    return v0

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->onSurfaceCreated()I

    move-result p0

    if-eqz p0, :cond_1

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrepareEngine onSurfaceCreated error, res:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGE(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p1, "ArcFilterEngine"

    const-string v0, "PrepareEngineEx ---->"

    .line 258
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public UnInit()I
    .locals 3

    const-string v0, "Unint <----"

    .line 198
    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterEngine:Lcom/arcsoft/filter/FilterEngineOES;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/arcsoft/filter/FilterEngineOES;->uninit()V

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterEngine:Lcom/arcsoft/filter/FilterEngineOES;

    .line 208
    :cond_0
    iget-wide v0, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mEngineHandler:J

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/filter/ArcFilterEngine;->native_UninitEngine(J)I

    move-result v0

    const/4 v1, 0x0

    .line 209
    iput-boolean v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z

    .line 211
    iget-object v2, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mFilterParamMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 212
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 213
    :cond_1
    iput v1, p0, Lcom/arcsoft/filter/ArcFilterEngine;->mStatus:I

    const-string p0, "Unint ---->"

    .line 214
    invoke-static {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V

    return v0
.end method
