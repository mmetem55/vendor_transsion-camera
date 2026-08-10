.class public Lcom/bytedance/labcv/effectsdk/FaceCluster;
.super Ljava/lang/Object;
.source "FaceCluster.java"


# instance fields
.field private volatile mInited:Z

.field private mNativeClusterPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "effect"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceCluster;->mInited:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCluster([FI[I)I
.end method

.method private native nativeCreateHandle()I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetParam(II)I
.end method


# virtual methods
.method public cluster([[FI)[I
    .locals 11

    .line 72
    new-array v0, p2, [I

    .line 75
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, p1, v3

    .line 76
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_0
    new-array v1, v4, [F

    .line 81
    array-length v3, p1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v6, p1, v4

    .line 82
    array-length v7, v6

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_1

    aget v9, v6, v8

    add-int/lit8 v10, v5, 0x1

    .line 83
    aput v9, v1, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 86
    :cond_2
    invoke-direct {p0, v1, p2, v0}, Lcom/bytedance/labcv/effectsdk/FaceCluster;->nativeCluster([FI[I)I

    move-result p0

    if-eqz p0, :cond_3

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeCluster return "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bef_effect_ai"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/labcv/effectsdk/FaceCluster;->init(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/FaceCluster;->nativeCreateHandle()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 34
    iput-boolean v1, p0, Lcom/bytedance/labcv/effectsdk/FaceCluster;->mInited:Z

    return v0

    .line 38
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/FaceCluster;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    iput-boolean v1, p0, Lcom/bytedance/labcv/effectsdk/FaceCluster;->mInited:Z

    return p1

    :cond_1
    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/FaceCluster;->mInited:Z

    return p1
.end method

.method public release()V
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceCluster;->mInited:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/FaceCluster;->nativeRelease()V

    :cond_0
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceCluster;->mInited:Z

    return-void
.end method

.method public setDetectParam(II)I
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/FaceCluster;->nativeSetParam(II)I

    move-result p0

    return p0
.end method
