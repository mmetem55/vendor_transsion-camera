.class public Lcom/bef/effectsdk/EffectSDKBuildConfig;
.super Ljava/lang/Object;
.source "EffectSDKBuildConfig.java"


# static fields
.field private static ENABLE_AUDIO_EFFECT:I

.field private static ENABLE_BORINGSSL:I

.field private static ENABLE_BYTEBENCH:I

.field private static ENABLE_FFMPEG:I

.field private static ENABLE_IES_APPLOGGER:I

.field private static ENABLE_JAZZ:I

.field private static ENABLE_LENS:I

.field private static ENABLE_SPEECH_ASR:I

.field private static ENABLE_SPEECH_CAPT:I

.field private static ENABLE_VC0:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEffectLibs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "c++_shared"

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget v1, Lcom/bef/effectsdk/EffectSDKBuildConfig;->ENABLE_BYTEBENCH:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "bytebench"

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    sget v1, Lcom/bef/effectsdk/EffectSDKBuildConfig;->ENABLE_BORINGSSL:I

    if-eq v1, v2, :cond_1

    sget v1, Lcom/bef/effectsdk/EffectSDKBuildConfig;->ENABLE_FFMPEG:I

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v1, "ttcrypto"

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ttboringssl"

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_2
    sget v1, Lcom/bef/effectsdk/EffectSDKBuildConfig;->ENABLE_FFMPEG:I

    if-ne v1, v2, :cond_3

    const-string v1, "ttffmpeg"

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_3
    sget v1, Lcom/bef/effectsdk/EffectSDKBuildConfig;->ENABLE_IES_APPLOGGER:I

    if-ne v1, v2, :cond_4

    const-string v1, "iesapplogger"

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "bytenn"

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget v1, Lcom/bef/effectsdk/EffectSDKBuildConfig;->ENABLE_AUDIO_EFFECT:I

    if-ne v1, v2, :cond_5

    const-string v1, "audioeffect"

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_5
    sget v1, Lcom/bef/effectsdk/EffectSDKBuildConfig;->ENABLE_SPEECH_CAPT:I

    if-eq v1, v2, :cond_6

    sget v1, Lcom/bef/effectsdk/EffectSDKBuildConfig;->ENABLE_SPEECH_ASR:I

    if-ne v1, v2, :cond_7

    :cond_6
    const-string v1, "speechsdk"

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v1, "gaia_lib"

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "AGFX"

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget v1, Lcom/bef/effectsdk/EffectSDKBuildConfig;->ENABLE_LENS:I

    if-ne v1, v2, :cond_8

    const-string v1, "lens"

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_8
    sget v1, Lcom/bef/effectsdk/EffectSDKBuildConfig;->ENABLE_JAZZ:I

    if-ne v1, v2, :cond_9

    const-string v1, "jazz"

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_9
    sget v1, Lcom/bef/effectsdk/EffectSDKBuildConfig;->ENABLE_VC0:I

    if-ne v1, v2, :cond_a

    const-string v1, "bytevc0"

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v1, "effect"

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
