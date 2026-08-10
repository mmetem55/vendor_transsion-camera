.class public Lcom/bytedance/labcv/effectsdk/FaceFitting;
.super Ljava/lang/Object;
.source "FaceFitting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;,
        Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;,
        Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;
    }
.end annotation


# static fields
.field static final FaceFittingMaxFaceCount:I = 0x6


# instance fields
.field faceFittingResult:Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;

.field private volatile mInited:Z

.field private mNativeCResultPtr:J

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "effect"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting;->mNativeCResultPtr:J

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting;->mInited:Z

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting;->faceFittingResult:Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;

    return-void
.end method

.method private native nativeAllocCResult()V
.end method

.method private native nativeDestroy()I
.end method

.method private native nativeDetect(Lcom/bytedance/labcv/effectsdk/BefFaceInfo;II[FLcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;)I
.end method

.method private native nativeFreeCResult()V
.end method

.method private native nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nativeSetParam(II)I
.end method


# virtual methods
.method public destroy()I
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting;->mInited:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/FaceFitting;->nativeFreeCResult()V

    .line 46
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/FaceFitting;->nativeDestroy()I

    move-result p0

    return p0
.end method

.method public detect(Lcom/bytedance/labcv/effectsdk/BefFaceInfo;II[F)I
    .locals 6

    .line 39
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting;->mInited:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 41
    :cond_0
    iget-object v5, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting;->faceFittingResult:Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/labcv/effectsdk/FaceFitting;->nativeDetect(Lcom/bytedance/labcv/effectsdk/BefFaceInfo;II[FLcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;)I

    move-result p0

    return p0
.end method

.method public getFaceFittingResult()Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting;->mInited:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting;->faceFittingResult:Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/labcv/effectsdk/FaceFitting;->nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 25
    :goto_0
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting;->mInited:Z

    .line 26
    iget-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting;->mInited:Z

    if-eqz p2, :cond_1

    .line 27
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/FaceFitting;->nativeAllocCResult()V

    .line 28
    new-instance p2, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;

    invoke-direct {p2}, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;-><init>()V

    iput-object p2, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting;->faceFittingResult:Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;

    :cond_1
    return p1
.end method

.method public setParam(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;I)I
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting;->mInited:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/FaceFitting;->nativeSetParam(II)I

    move-result p0

    return p0
.end method
