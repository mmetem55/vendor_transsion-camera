.class public Lcom/bytedance/labcv/effectsdk/PortraitMatting;
.super Ljava/lang/Object;
.source "PortraitMatting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;
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

    .line 20
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->inited:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandle()I
.end method

.method private native nativeInit(Ljava/lang/String;I)I
.end method

.method private native nativeMatting(Ljava/nio/ByteBuffer;IIIIIZLcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;)I
.end method

.method private native nativeRelease()I
.end method

.method private native nativeSetParam(II)I
.end method


# virtual methods
.method public detectMatting(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;Z)Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;
    .locals 10

    .line 124
    new-instance v9, Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;

    move-object v0, p0

    invoke-direct {v9, p0}, Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;-><init>(Lcom/bytedance/labcv/effectsdk/PortraitMatting;)V

    .line 125
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p6

    iget v6, v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p7

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->nativeMatting(Ljava/nio/ByteBuffer;IIIIIZLcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeMatting return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_effect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v9
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->init(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;Ljava/lang/String;Z)I
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->inited:Z

    if-nez v0, :cond_3

    .line 75
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->nativeCreateHandle()I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0, p1, p4, p5}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    :cond_0
    const/4 p1, 0x1

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;->getValue()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->nativeInit(Ljava/lang/String;I)I

    move-result v0

    .line 82
    sget-object p2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;->BEF_MP_EdgeMode:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->setParam(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;I)I

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 84
    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->inited:Z

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public isInited()Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->inited:Z

    return p0
.end method

.method public release()V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->inited:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->nativeRelease()I

    :cond_0
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->inited:Z

    return-void
.end method

.method public setParam(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;I)I
    .locals 0

    .line 147
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PorraitMattingParamType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/PortraitMatting;->nativeSetParam(II)I

    move-result p0

    return p0
.end method
