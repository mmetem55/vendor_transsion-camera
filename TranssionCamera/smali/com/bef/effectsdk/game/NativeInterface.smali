.class public Lcom/bef/effectsdk/game/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bef/effectsdk/game/NativeInterface$NativeMessageListener;
    }
.end annotation


# static fields
.field private static final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "effect"

    .line 12
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bef/effectsdk/game/NativeInterface;->list:Ljava/util/List;

    .line 16
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessageListener(JLcom/bef/effectsdk/game/NativeInterface$NativeMessageListener;)I
    .locals 0

    .line 74
    invoke-static {p0, p1, p2}, Lcom/bef/effectsdk/game/NativeInterface;->nativeAddMessageListener(JLcom/bef/effectsdk/game/NativeInterface$NativeMessageListener;)I

    move-result p0

    return p0
.end method

.method public static createHandle([J)V
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/bef/effectsdk/game/NativeInterface;->nativeCreateHandle([J)V

    return-void
.end method

.method public static destroy(J)I
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/bef/effectsdk/game/NativeInterface;->nativeDestroy(J)I

    move-result p0

    return p0
.end method

.method public static init(JII)I
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lcom/bef/effectsdk/game/NativeInterface;->nativeInit(JII)I

    move-result p0

    return p0
.end method

.method private static native nativeAddMessageListener(JLcom/bef/effectsdk/game/NativeInterface$NativeMessageListener;)I
.end method

.method private static native nativeCreateHandle([J)V
.end method

.method private static native nativeDestroy(J)I
.end method

.method private static native nativeInit(JII)I
.end method

.method private static native nativePause(J)I
.end method

.method private static native nativePostMessage(JJJJLjava/lang/String;)I
.end method

.method private static native nativeProcess(JIID)I
.end method

.method private static native nativeRemoveMessageListener(JLcom/bef/effectsdk/game/NativeInterface$NativeMessageListener;)I
.end method

.method private static native nativeResume(J)I
.end method

.method private static native nativeSetSize(JII)I
.end method

.method private static native nativeSetStickerPath(JLjava/lang/String;)I
.end method

.method private static native nativeTouchesBegin(J[I[F[F)I
.end method

.method private static native nativeTouchesEnd(J[I[F[F)I
.end method

.method private static native nativeTouchesMove(J[I[F[F)I
.end method

.method public static pause(J)I
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lcom/bef/effectsdk/game/NativeInterface;->nativePause(J)I

    move-result p0

    return p0
.end method

.method public static postMessage(JJJJLjava/lang/String;)I
    .locals 0

    .line 70
    invoke-static/range {p0 .. p8}, Lcom/bef/effectsdk/game/NativeInterface;->nativePostMessage(JJJJLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static processFrame(JIID)I
    .locals 0

    .line 42
    invoke-static/range {p0 .. p5}, Lcom/bef/effectsdk/game/NativeInterface;->nativeProcess(JIID)I

    move-result p0

    return p0
.end method

.method public static removeMessageListener(JLcom/bef/effectsdk/game/NativeInterface$NativeMessageListener;)I
    .locals 0

    .line 78
    invoke-static {p0, p1, p2}, Lcom/bef/effectsdk/game/NativeInterface;->nativeRemoveMessageListener(JLcom/bef/effectsdk/game/NativeInterface$NativeMessageListener;)I

    move-result p0

    return p0
.end method

.method public static resume(J)I
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/bef/effectsdk/game/NativeInterface;->nativeResume(J)I

    move-result p0

    return p0
.end method

.method public static setGameBundlePath(JLjava/lang/String;)I
    .locals 0

    .line 34
    invoke-static {p0, p1, p2}, Lcom/bef/effectsdk/game/NativeInterface;->nativeSetStickerPath(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setSize(JII)I
    .locals 0

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/bef/effectsdk/game/NativeInterface;->nativeSetSize(JII)I

    move-result p0

    return p0
.end method

.method public static touchesBegin(J[I[F[F)I
    .locals 0

    .line 58
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bef/effectsdk/game/NativeInterface;->nativeTouchesBegin(J[I[F[F)I

    move-result p0

    return p0
.end method

.method public static touchesEnd(J[I[F[F)I
    .locals 0

    .line 66
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bef/effectsdk/game/NativeInterface;->nativeTouchesEnd(J[I[F[F)I

    move-result p0

    return p0
.end method

.method public static touchesMove(J[I[F[F)I
    .locals 0

    .line 62
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bef/effectsdk/game/NativeInterface;->nativeTouchesMove(J[I[F[F)I

    move-result p0

    return p0
.end method
