.class public Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;
.super Ljava/lang/Object;
.source "OnekeyEnhance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$Result;,
        Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;,
        Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;,
        Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$InitConfig;
    }
.end annotation


# instance fields
.field private mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "effect"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->mInited:Z

    return-void
.end method

.method private native nativeCreate(Ljava/lang/String;ZLcom/bytedance/labcv/effectsdk/OnekeyEnhance$InitConfig;)I
.end method

.method private native nativeProcess(ILcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$Result;)I
.end method

.method private native nativeRelease()V
.end method


# virtual methods
.method public create(Ljava/lang/String;ZLcom/bytedance/labcv/effectsdk/OnekeyEnhance$InitConfig;)I
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->nativeCreate(Ljava/lang/String;ZLcom/bytedance/labcv/effectsdk/OnekeyEnhance$InitConfig;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->mInited:Z

    return p1

    :cond_0
    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->mInited:Z

    return p1
.end method

.method public process(ILcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;)I
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->mInited:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 32
    :cond_0
    new-instance v0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$Result;

    invoke-direct {v0}, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$Result;-><init>()V

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->nativeProcess(ILcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$Result;)I

    move-result p0

    if-gez p0, :cond_1

    return p0

    .line 37
    :cond_1
    iget p0, v0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$Result;->textureId:I

    return p0
.end method

.method public release()V
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->mInited:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->nativeRelease()V

    :cond_0
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;->mInited:Z

    return-void
.end method
