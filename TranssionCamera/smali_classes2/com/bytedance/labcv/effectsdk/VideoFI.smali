.class public Lcom/bytedance/labcv/effectsdk/VideoFI;
.super Ljava/lang/Object;
.source "VideoFI.java"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private bufferHeight:I

.field private bufferWidth:I

.field private mInited:Z

.field private mNativePtr:J

.field private mRwDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "effect"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/VideoFI;->mInited:Z

    return-void
.end method

.method private native nativeCheckLicense(Ljava/lang/String;Z)I
.end method

.method private native nativeCreate(Ljava/lang/String;IIII)I
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeProcessTexture(IIIIIFFF)I
.end method


# virtual methods
.method public checkLicense(Ljava/lang/String;Z)I
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/VideoFI;->nativeCheckLicense(Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/VideoFI;->mInited:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/VideoFI;->mInited:Z

    :goto_0
    return p1
.end method

.method public create(Ljava/lang/String;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiDataType;ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;)I
    .locals 6

    .line 24
    invoke-virtual {p3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiDataType;->getValue()I

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;->getValue()I

    move-result v3

    invoke-virtual {p5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;->getLevel()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/labcv/effectsdk/VideoFI;->nativeCreate(Ljava/lang/String;IIII)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/labcv/effectsdk/VideoFI;->mInited:Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public destroy()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/VideoFI;->nativeDestroy()V

    return-void
.end method

.method public processTexture(IIIIIFFF)I
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/labcv/effectsdk/VideoFI;->nativeProcessTexture(IIIIIFFF)I

    move-result p0

    return p0
.end method
