.class public Lcom/bytedance/labcv/effectsdk/HairParser;
.super Ljava/lang/Object;
.source "HairParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;
    }
.end annotation


# instance fields
.field private inited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "effect"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HairParser;->inited:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandle()I
.end method

.method private native nativeGetShape([I)I
.end method

.method private native nativeInit(Ljava/lang/String;)I
.end method

.method private native nativeParse(Ljava/nio/ByteBuffer;IIIIIZ[B)I
.end method

.method private native nativeRelease()I
.end method

.method private native nativeSetParam(IIZZ)I
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/labcv/effectsdk/HairParser;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HairParser;->inited:Z

    if-nez v0, :cond_3

    .line 71
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/HairParser;->nativeCreateHandle()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0, p1, p3, p4}, Lcom/bytedance/labcv/effectsdk/HairParser;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 75
    invoke-direct {p0, p2}, Lcom/bytedance/labcv/effectsdk/HairParser;->nativeInit(Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 78
    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/labcv/effectsdk/HairParser;->inited:Z

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public isInited()Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/HairParser;->inited:Z

    return p0
.end method

.method public parseHair(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;Z)Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;
    .locals 13

    move-object v0, p0

    .line 114
    new-instance v9, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;

    invoke-direct {v9, p0}, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;-><init>(Lcom/bytedance/labcv/effectsdk/HairParser;)V

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 116
    invoke-direct {p0, v1}, Lcom/bytedance/labcv/effectsdk/HairParser;->nativeGetShape([I)I

    move-result v2

    const/4 v10, 0x0

    const-string v11, "nativeDetect return "

    const-string v12, "bef_effect_ai"

    if-nez v2, :cond_1

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 118
    invoke-static {v9, v3}, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->access$002(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;I)I

    const/4 v3, 0x1

    aget v3, v1, v3

    .line 119
    invoke-static {v9, v3}, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->access$102(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;I)I

    const/4 v3, 0x2

    aget v1, v1, v3

    .line 120
    invoke-static {v9, v1}, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->access$202(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;I)I

    .line 121
    invoke-static {v9}, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->access$000(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;)I

    move-result v1

    invoke-static {v9}, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->access$100(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;)I

    move-result v3

    mul-int/2addr v1, v3

    invoke-static {v9}, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->access$200(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;)I

    move-result v3

    mul-int/2addr v1, v3

    new-array v1, v1, [B

    invoke-static {v9, v1}, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->access$302(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;[B)[B

    .line 122
    invoke-static {v9}, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->access$300(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;)[B

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 127
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p6

    iget v6, v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    invoke-static {v9}, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->access$300(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;)[B

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/labcv/effectsdk/HairParser;->nativeParse(Ljava/nio/ByteBuffer;IIIIIZ[B)I

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_0
    return-object v9

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10
.end method

.method public release()V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HairParser;->inited:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/HairParser;->nativeRelease()I

    :cond_0
    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HairParser;->inited:Z

    return-void
.end method

.method public setParam(IIZZ)I
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/labcv/effectsdk/HairParser;->nativeSetParam(IIZZ)I

    move-result p0

    return p0
.end method
