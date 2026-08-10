.class public Lcom/bef/effectsdk/EffectApplicationInfo;
.super Ljava/lang/Object;
.source "EffectApplicationInfo.java"


# static fields
.field private static appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 17
    sget-object v0, Lcom/bef/effectsdk/EffectApplicationInfo;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method private static native nativeSetHomeDir(Ljava/lang/String;)I
.end method

.method private static onSetAppContext()V
    .locals 1

    .line 22
    sget-object v0, Lcom/bef/effectsdk/EffectApplicationInfo;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bef/effectsdk/EffectApplicationInfo;->nativeSetHomeDir(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 0

    .line 11
    sput-object p0, Lcom/bef/effectsdk/EffectApplicationInfo;->appContext:Landroid/content/Context;

    .line 12
    invoke-static {}, Lcom/bef/effectsdk/EffectApplicationInfo;->onSetAppContext()V

    return-void
.end method
