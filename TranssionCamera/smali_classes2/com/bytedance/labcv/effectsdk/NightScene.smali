.class public Lcom/bytedance/labcv/effectsdk/NightScene;
.super Ljava/lang/Object;
.source "NightScene.java"


# instance fields
.field private mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "effect"

    .line 8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCreate(Ljava/lang/String;Z)I
.end method

.method private native nativeProcess(ILjava/lang/Integer;II)I
.end method

.method private native nativeRelease()I
.end method


# virtual methods
.method public init(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/labcv/effectsdk/NightScene;->init(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/String;Z)I
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/NightScene;->nativeCreate(Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/NightScene;->mInited:Z

    return p1

    :cond_0
    const/4 p2, 0x1

    .line 23
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/NightScene;->mInited:Z

    return p1
.end method

.method public isInited()Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/NightScene;->mInited:Z

    return p0
.end method

.method public process(ILjava/lang/Integer;II)I
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/NightScene;->mInited:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 36
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/labcv/effectsdk/NightScene;->nativeProcess(ILjava/lang/Integer;II)I

    move-result p0

    if-eqz p0, :cond_1

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeNightSceneProcess "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bef_effect_ai"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public release()V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/NightScene;->mInited:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/NightScene;->nativeRelease()I

    :cond_0
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/NightScene;->mInited:Z

    return-void
.end method
