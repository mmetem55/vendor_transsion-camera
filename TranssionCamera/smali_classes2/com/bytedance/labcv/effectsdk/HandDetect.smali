.class public Lcom/bytedance/labcv/effectsdk/HandDetect;
.super Ljava/lang/Object;
.source "HandDetect.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HandDetect"


# instance fields
.field private inited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "effect"

    .line 23
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load library!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandler()I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIIJLcom/bytedance/labcv/effectsdk/BefHandInfo;I)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetModel(JLjava/lang/String;)I
.end method

.method private native nativeSetParam(IF)I
.end method


# virtual methods
.method public createHandle(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/labcv/effectsdk/HandDetect;->createHandle(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public createHandle(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HandDetect;->inited:Z

    if-nez v0, :cond_2

    .line 42
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/HandDetect;->nativeCreateHandler()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x4

    return p0

    .line 46
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/HandDetect;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_1

    return p1

    :cond_1
    const/4 p2, 0x1

    .line 50
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/HandDetect;->inited:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public detectHand(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;II)Lcom/bytedance/labcv/effectsdk/BefHandInfo;
    .locals 12

    .line 101
    new-instance v11, Lcom/bytedance/labcv/effectsdk/BefHandInfo;

    invoke-direct {v11}, Lcom/bytedance/labcv/effectsdk/BefHandInfo;-><init>()V

    .line 102
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v0, p6

    iget v6, v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move/from16 v0, p7

    int-to-long v7, v0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v11

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/labcv/effectsdk/HandDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIIJLcom/bytedance/labcv/effectsdk/BefHandInfo;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeDetect return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_effect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v11
.end method

.method public isInited()Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/HandDetect;->inited:Z

    return p0
.end method

.method public release()V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HandDetect;->inited:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/HandDetect;->nativeRelease()V

    :cond_0
    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HandDetect;->inited:Z

    return-void
.end method

.method public setModel(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;Ljava/lang/String;)I
    .locals 2

    .line 67
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandModelType;->getValue()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/bytedance/labcv/effectsdk/HandDetect;->nativeSetModel(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setParam(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;F)I
    .locals 0

    .line 78
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/HandDetect;->nativeSetParam(IF)I

    move-result p0

    return p0
.end method
