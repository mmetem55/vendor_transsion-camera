.class public Lcom/meicam/sdk/NvsAudioEffectRenderCore;
.super Ljava/lang/Object;
.source "NvsAudioEffectRenderCore.java"


# static fields
.field public static final NV_AUDIO_EFFECT_CORE_ERROR_UNKNOWN:I = -0x1

.field public static final NV_AUDIO_EFFECT_CORE_NO_ERROR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCreateBuildinAudioFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsCaptureAudioFx;
.end method

.method private native nativeDestoryBuildinAudioFx(Lcom/meicam/sdk/NvsCaptureAudioFx;)V
.end method

.method private native nativeFlushAudioFx(Lcom/meicam/sdk/NvsCaptureAudioFx;)Lcom/meicam/sdk/NvsAudioSampleBuffers;
.end method

.method private native nativeRenderAudioFx(Lcom/meicam/sdk/NvsCaptureAudioFx;Lcom/meicam/sdk/NvsAudioSampleBuffers;)I
.end method


# virtual methods
.method public createBuildinAudioFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsCaptureAudioFx;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsAudioEffectRenderCore;->nativeCreateBuildinAudioFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsCaptureAudioFx;

    move-result-object p0

    return-object p0
.end method

.method public destoryBuildinAudioFx(Lcom/meicam/sdk/NvsCaptureAudioFx;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsAudioEffectRenderCore;->nativeDestoryBuildinAudioFx(Lcom/meicam/sdk/NvsCaptureAudioFx;)V

    return-void
.end method

.method public flushAudioFx(Lcom/meicam/sdk/NvsCaptureAudioFx;)Lcom/meicam/sdk/NvsAudioSampleBuffers;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsAudioEffectRenderCore;->nativeFlushAudioFx(Lcom/meicam/sdk/NvsCaptureAudioFx;)Lcom/meicam/sdk/NvsAudioSampleBuffers;

    move-result-object p0

    return-object p0
.end method

.method public renderAudioFx(Lcom/meicam/sdk/NvsCaptureAudioFx;Lcom/meicam/sdk/NvsAudioSampleBuffers;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsAudioEffectRenderCore;->nativeRenderAudioFx(Lcom/meicam/sdk/NvsCaptureAudioFx;Lcom/meicam/sdk/NvsAudioSampleBuffers;)I

    move-result p0

    return p0
.end method
