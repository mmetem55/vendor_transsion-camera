.class public Lcom/bef/effectsdk/view/ViewControllerInterface;
.super Ljava/lang/Object;
.source "ViewControllerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bef/effectsdk/view/ViewControllerInterface$NativeMessageListener;
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

    sput-object v0, Lcom/bef/effectsdk/view/ViewControllerInterface;->list:Ljava/util/List;

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

.method public static addMessageListener(JLcom/bef/effectsdk/view/ViewControllerInterface$NativeMessageListener;)I
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeAddMessageListener(JLcom/bef/effectsdk/view/ViewControllerInterface$NativeMessageListener;)I

    move-result p0

    return p0
.end method

.method public static attachEffect(JJ)I
    .locals 0

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeAttachEffect(JJ)I

    move-result p0

    return p0
.end method

.method public static createHandle([J)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, v0}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeCreateHandle([JI)V

    return-void
.end method

.method public static createHandle([JI)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeCreateHandle([JI)V

    return-void
.end method

.method public static createTexture(IIIII)I
    .locals 0

    .line 96
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeCreateTexture(IIIII)I

    move-result p0

    return p0
.end method

.method public static deleteTexture(I)I
    .locals 0

    .line 100
    invoke-static {p0}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeDeleteTexture(I)I

    move-result p0

    return p0
.end method

.method public static destroy(J)I
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeDestroy(J)I

    move-result p0

    return p0
.end method

.method public static init(JII)I
    .locals 0

    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeInit(JII)I

    move-result p0

    return p0
.end method

.method private static native nativeAddMessageListener(JLcom/bef/effectsdk/view/ViewControllerInterface$NativeMessageListener;)I
.end method

.method private static native nativeAttachEffect(JJ)I
.end method

.method private static native nativeCreateHandle([J)V
.end method

.method private static native nativeCreateHandle([JI)V
.end method

.method private static native nativeCreateTexture(IIIII)I
.end method

.method private static native nativeDeleteTexture(I)I
.end method

.method private static native nativeDestroy(J)I
.end method

.method private static native nativeInit(JII)I
.end method

.method private static native nativeOnPause(J)V
.end method

.method private static native nativeOnResume(J)V
.end method

.method private static native nativePostMessage(JJJJLjava/lang/String;)I
.end method

.method private static native nativeProcess(JIII[F[FD)I
.end method

.method private static native nativeRemoveMessageListener(JLcom/bef/effectsdk/view/ViewControllerInterface$NativeMessageListener;)I
.end method

.method private static native nativeSetRenderCacheData(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeSetRenderCacheTexture(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeSetRenderCacheTextureWithBuffer(JLjava/lang/String;[BII)I
.end method

.method private static native nativeSetResourceFinder(JJJ)I
.end method

.method private static native nativeSetStickerPath(JLjava/lang/String;)I
.end method

.method private static native nativeTouchEvent(JI[I[F[FI)I
.end method

.method public static onPause(J)V
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeOnPause(J)V

    return-void
.end method

.method public static onResume(J)V
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeOnResume(J)V

    return-void
.end method

.method public static postMessage(JJJJLjava/lang/String;)I
    .locals 0

    .line 84
    invoke-static/range {p0 .. p8}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativePostMessage(JJJJLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static processFrame(JIII[F[FD)I
    .locals 0

    .line 46
    invoke-static/range {p0 .. p8}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeProcess(JIII[F[FD)I

    move-result p0

    return p0
.end method

.method public static removeMessageListener(JLcom/bef/effectsdk/view/ViewControllerInterface$NativeMessageListener;)I
    .locals 0

    .line 92
    invoke-static {p0, p1, p2}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeRemoveMessageListener(JLcom/bef/effectsdk/view/ViewControllerInterface$NativeMessageListener;)I

    move-result p0

    return p0
.end method

.method public static setRenderCacheData(JLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 104
    invoke-static {p0, p1, p2, p3}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeSetRenderCacheData(JLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setRenderCacheTexture(JLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 108
    invoke-static {p0, p1, p2, p3}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeSetRenderCacheTexture(JLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setRenderCacheTextureWithBuffer(JLjava/lang/String;[BII)I
    .locals 0

    .line 112
    invoke-static/range {p0 .. p5}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeSetRenderCacheTextureWithBuffer(JLjava/lang/String;[BII)I

    move-result p0

    return p0
.end method

.method public static setResourceFinder(JJJ)I
    .locals 0

    .line 116
    invoke-static/range {p0 .. p5}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeSetResourceFinder(JJJ)I

    move-result p0

    return p0
.end method

.method public static setStickerPath(JLjava/lang/String;)I
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeSetStickerPath(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static touchBeginEvent(J[I[F[F)I
    .locals 7

    .line 59
    array-length v6, p2

    const/4 v2, 0x0

    move-wide v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeTouchEvent(JI[I[F[FI)I

    move-result p0

    return p0
.end method

.method public static touchBeginEvent(J[I[F[FI)I
    .locals 7

    const/4 v2, 0x0

    move-wide v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 72
    invoke-static/range {v0 .. v6}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeTouchEvent(JI[I[F[FI)I

    move-result p0

    return p0
.end method

.method public static touchEndEvent(J[I[F[F)I
    .locals 7

    .line 67
    array-length v6, p2

    const/4 v2, 0x1

    move-wide v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeTouchEvent(JI[I[F[FI)I

    move-result p0

    return p0
.end method

.method public static touchEndEvent(J[I[F[FI)I
    .locals 7

    const/4 v2, 0x1

    move-wide v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 80
    invoke-static/range {v0 .. v6}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeTouchEvent(JI[I[F[FI)I

    move-result p0

    return p0
.end method

.method public static touchMoveEvent(J[I[F[F)I
    .locals 7

    .line 63
    array-length v6, p2

    const/4 v2, 0x2

    move-wide v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeTouchEvent(JI[I[F[FI)I

    move-result p0

    return p0
.end method

.method public static touchMoveEvent(J[I[F[FI)I
    .locals 7

    const/4 v2, 0x2

    move-wide v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 76
    invoke-static/range {v0 .. v6}, Lcom/bef/effectsdk/view/ViewControllerInterface;->nativeTouchEvent(JI[I[F[FI)I

    move-result p0

    return p0
.end method
