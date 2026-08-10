.class Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/effectsdk/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "GLThreadManager"

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/bef/effectsdk/GLTextureView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bef/effectsdk/GLTextureView$1;)V
    .locals 0

    .line 1653
    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 4

    .line 1737
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1742
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1745
    sget-object v1, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGLESVersion mGLESVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mGLESVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mMultipleGLESContextsAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    monitor-enter p0

    .line 1718
    :try_start_0
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v0, :cond_3

    .line 1719
    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->checkGLESVersion()V

    const/16 v0, 0x1f01

    .line 1720
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 1721
    iget v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    const-string v0, "Q3Dimension MSM7500 "

    .line 1723
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1724
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1726
    :cond_1
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1728
    sget-object v0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGLDriver renderer = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" multipleContextsAllowed = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mLimitedGLESContexts = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    iput-boolean v3, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1734
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseEglContextLocked(Lcom/bef/effectsdk/GLTextureView$GLThread;)V
    .locals 1

    .line 1699
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mEglOwner:Lcom/bef/effectsdk/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1700
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mEglOwner:Lcom/bef/effectsdk/GLTextureView$GLThread;

    .line 1702
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    monitor-enter p0

    .line 1709
    :try_start_0
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    monitor-enter p0

    .line 1713
    :try_start_0
    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1714
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/bef/effectsdk/GLTextureView$GLThread;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "GLThread"

    .line 1658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1660
    invoke-static {p1, v0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->access$1102(Lcom/bef/effectsdk/GLTextureView$GLThread;Z)Z

    .line 1661
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mEglOwner:Lcom/bef/effectsdk/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1662
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mEglOwner:Lcom/bef/effectsdk/GLTextureView$GLThread;

    .line 1664
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public tryAcquireEglContextLocked(Lcom/bef/effectsdk/GLTextureView$GLThread;)Z
    .locals 2

    .line 1675
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mEglOwner:Lcom/bef/effectsdk/GLTextureView$GLThread;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 1680
    :cond_0
    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1681
    iget-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz p1, :cond_1

    return v1

    .line 1688
    :cond_1
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mEglOwner:Lcom/bef/effectsdk/GLTextureView$GLThread;

    if-eqz p0, :cond_2

    .line 1689
    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->requestReleaseEglContextLocked()V

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 1676
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->mEglOwner:Lcom/bef/effectsdk/GLTextureView$GLThread;

    .line 1677
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v1
.end method
