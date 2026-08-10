.class public Lcom/bytedance/labcv/effectsdk/AnimojiDetect;
.super Ljava/lang/Object;
.source "AnimojiDetect.java"


# instance fields
.field private mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "effect"

    .line 14
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCreate(Ljava/lang/String;Z)I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefAnimojiInfo;)I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefFaceInfo;Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;)I
.end method

.method private native nativeRelease()I
.end method

.method private native nativeSetEscale(I)I
.end method

.method private native nativeSetModel(Ljava/lang/String;II)I
.end method


# virtual methods
.method public detect(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;)Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;
    .locals 10

    move-object v0, p0

    .line 47
    iget-boolean v1, v0, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->mInited:Z

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return-object v8

    .line 48
    :cond_0
    new-instance v9, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;

    invoke-direct {v9}, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;-><init>()V

    .line 49
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p6

    iget v6, v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefAnimojiInfo;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native detect return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_effect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_1
    return-object v9
.end method

.method public detect(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;Lcom/bytedance/labcv/effectsdk/BefFaceInfo;)Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;
    .locals 11

    move-object v0, p0

    .line 60
    iget-boolean v1, v0, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->mInited:Z

    const/4 v9, 0x0

    if-nez v1, :cond_0

    return-object v9

    .line 61
    :cond_0
    new-instance v10, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;

    invoke-direct {v10}, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;-><init>()V

    .line 62
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p6

    iget v6, v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p7

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefFaceInfo;Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native detect return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_effect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_1
    return-object v10
.end method

.method public init(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->init(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/String;Z)I
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->nativeCreate(Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->mInited:Z

    return p1

    :cond_0
    const/4 p2, 0x1

    .line 29
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->mInited:Z

    return p1
.end method

.method public isInited()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->mInited:Z

    return p0
.end method

.method public release()V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->mInited:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->nativeRelease()I

    :cond_0
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->mInited:Z

    return-void
.end method

.method public setEscale(I)I
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->nativeSetEscale(I)I

    move-result p0

    return p0
.end method

.method public setModel(Ljava/lang/String;II)I
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/AnimojiDetect;->nativeSetModel(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method
