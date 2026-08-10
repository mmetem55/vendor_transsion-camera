.class public Lcom/transsion/camera/utils/sound/ActionSound;
.super Ljava/lang/Object;
.source "ActionSound.java"

# interfaces
.implements Lcom/transsion/camera/utils/sound/IActionSound;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;,
        Lcom/transsion/camera/utils/sound/ActionSound$Sound;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private final mResources:Landroid/content/res/Resources;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/transsion/camera/utils/sound/ActionSound$Sound;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$GSmd1svGe13FE7NJMAhG5haGIsA(Lcom/transsion/camera/utils/sound/ActionSound;Landroid/media/SoundPool;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/utils/sound/ActionSound;->lambda$new$0(Landroid/media/SoundPool;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ActionSound"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    new-instance v0, Lcom/transsion/camera/utils/sound/ActionSound$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/sound/ActionSound$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/utils/sound/ActionSound;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mResources:Landroid/content/res/Resources;

    .line 131
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    .line 133
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ActionSound"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v0, Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;-><init>(Lcom/transsion/camera/utils/sound/ActionSound;Landroid/os/Looper;Lcom/transsion/camera/utils/sound/ActionSound$1;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    .line 136
    sget-object p1, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new ActionSound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSoundPool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/utils/sound/ActionSound;Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->handleLoadSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/utils/sound/ActionSound;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->handleUnloadSound(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/utils/sound/ActionSound;IZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/utils/sound/ActionSound;->handlePlaySound(IZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/utils/sound/ActionSound;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->handleStopSound(I)V

    return-void
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 32
    sget-object v0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/utils/sound/ActionSound;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/camera/utils/sound/ActionSound;->handleReleaseSound()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/utils/sound/ActionSound;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->handlePlayCallback(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method private declared-synchronized dump()V
    .locals 4

    monitor-enter p0

    .line 296
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionSound mSoundPool: "

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 301
    iget-object v3, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    .line 302
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_0
    sget-object v1, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActionSound dump: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized findSoundBySampleId(I)Lcom/transsion/camera/utils/sound/ActionSound$Sound;
    .locals 1

    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getSoundFromCache(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)I
    .locals 5

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 420
    iget-object v3, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    .line 421
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/utils/sound/ActionSound;->isSameSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;Lcom/transsion/camera/utils/sound/ActionSound$Sound;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 422
    iget p0, v3, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private handleLoadSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/transsion/camera/utils/sound/ActionSound;->initSoundPool()V

    .line 216
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->getSoundFromCache(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)I

    move-result v0

    if-lez v0, :cond_2

    .line 218
    iget-object v1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    iget-object v2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    iput-object v2, v1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    .line 219
    iget-object p1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    if-eqz p1, :cond_1

    .line 220
    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;->onLoadDone(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    :cond_1
    return-void

    .line 224
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->loadSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)I

    move-result v0

    .line 225
    iget-object v1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    if-eqz v1, :cond_3

    .line 226
    invoke-interface {v1, p0, v0}, Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;->onLoadDone(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    :cond_3
    if-gtz v0, :cond_4

    .line 229
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load() error loading sound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private handlePlayCallback(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .locals 1

    .line 277
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "handlePlayCallback"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "callback is null"

    .line 279
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 282
    invoke-interface {p1, p0}, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;->onPlayDone(Z)V

    return-void
.end method

.method private handlePlaySound(IZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    .line 247
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/utils/sound/ActionSound;->playSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;ZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method private handleReleaseSound()V
    .locals 3

    .line 260
    sget-object v0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionSound release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSoundPool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 263
    iget-object v2, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    .line 264
    invoke-direct {p0, v2}, Lcom/transsion/camera/utils/sound/ActionSound;->unloadSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 268
    invoke-direct {p0}, Lcom/transsion/camera/utils/sound/ActionSound;->dump()V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 272
    iput-object v1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    :cond_1
    return-void
.end method

.method private handleStopSound(I)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    if-nez v0, :cond_0

    .line 253
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop fail, maybe sound is not loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/sound/ActionSound;->stopSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V

    :goto_0
    return-void
.end method

.method private handleUnloadSound(I)V
    .locals 2

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSounds:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    if-nez p0, :cond_0

    .line 241
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unload fail, maybe sound is not loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initSoundPool()V
    .locals 4

    .line 286
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xd

    .line 288
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 289
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    .line 290
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method private isSameSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;Lcom/transsion/camera/utils/sound/ActionSound$Sound;)Z
    .locals 1

    .line 429
    iget-object p0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundResName:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-object v0, p2, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundResName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 432
    :cond_0
    iget-object p0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFilePaths:[Ljava/lang/String;

    iget-object p1, p2, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFilePaths:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/media/SoundPool;II)V
    .locals 2

    .line 387
    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/sound/ActionSound;->findSoundBySampleId(I)Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    move-result-object p1

    const-string v0, "onLoadComplete: "

    if-nez p1, :cond_0

    .line 390
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but not found in mSounds, status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 395
    iput p2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    .line 396
    iput p2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    .line 397
    iput-boolean p2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playRequested:Z

    .line 398
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadComplete error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " loading sound: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 401
    :cond_1
    iget p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    const/4 p3, 0x2

    .line 402
    iput p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    .line 403
    iget-object p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundLoadCompleteCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;

    if-eqz p3, :cond_2

    .line 404
    invoke-interface {p3}, Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;->onLoadComplete()V

    .line 406
    :cond_2
    iget-boolean p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playRequested:Z

    if-eqz p3, :cond_4

    .line 407
    iput-boolean p2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playRequested:Z

    .line 408
    iget-object p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/utils/sound/ActionSound;->playSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;ZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    .line 409
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "playSound when onLoadComplete sound: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_3
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLoadComplete called in wrong state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " for sound: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 414
    :cond_4
    :goto_0
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private loadSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)I
    .locals 7

    .line 309
    iget-object v0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0, v0, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    goto :goto_2

    .line 311
    :cond_0
    iget-object v0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFilePaths:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 312
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v5, v0, v1

    .line 313
    invoke-static {v5}, Lcom/transsion/camera/utils/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 314
    iget-object v4, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v4, v5, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v1, v4

    :cond_3
    :goto_2
    if-lez v1, :cond_4

    .line 322
    iput v2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    .line 323
    iput v1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    .line 324
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSound: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_3

    .line 326
    :cond_4
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSound error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_3
    return v1
.end method

.method private playDelegate(IZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 196
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 197
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 198
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private playSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;ZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 339
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playSound fail because sound is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 342
    invoke-interface {p3, v0}, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;->onPlayDone(Z)V

    :cond_0
    return-void

    .line 346
    :cond_1
    iget v1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 347
    iget-object v3, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget v4, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz p2, :cond_2

    const/4 v0, -0x1

    :cond_2
    move v8, v0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p2

    iput p2, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->streamId:I

    .line 348
    sget-object p2, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CapturePerformance] playSound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 354
    iget-object p1, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x3ee

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 355
    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x1c2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    .line 359
    iput-boolean p0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playRequested:Z

    .line 360
    iput-object p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playCallback:Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    .line 361
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "play() called in wrong state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " for sound: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private stopSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V
    .locals 4

    if-nez p1, :cond_0

    .line 367
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "stopSound fail because sound is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->playRequested:Z

    .line 371
    iget v1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 372
    sget-object v1, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopSound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 373
    iget v1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->streamId:I

    if-eqz v1, :cond_2

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 375
    iput v0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->streamId:I

    goto :goto_0

    .line 378
    :cond_1
    sget-object p0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop() called in wrong state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for sound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private unloadSound(Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V
    .locals 3

    .line 332
    sget-object v0, Lcom/transsion/camera/utils/sound/ActionSound;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unloadSound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget v0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->sampleId:I

    invoke-virtual {p0, v0}, Landroid/media/SoundPool;->unload(I)Z

    const/4 p0, 0x0

    .line 334
    iput p0, p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->state:I

    return-void
.end method


# virtual methods
.method public load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V
    .locals 1

    .line 141
    new-instance v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/sound/ActionSound$Sound;-><init>(Lcom/transsion/camera/utils/sound/ActionSound;)V

    .line 142
    iput-object p2, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    .line 143
    iget-object p2, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundResName:Ljava/lang/String;

    .line 144
    iget-object p2, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;)V
    .locals 1

    .line 150
    new-instance v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/sound/ActionSound$Sound;-><init>(Lcom/transsion/camera/utils/sound/ActionSound;)V

    .line 151
    iput-object p2, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    .line 152
    iput-object p3, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundLoadCompleteCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;

    .line 153
    iget-object p2, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundResName:Ljava/lang/String;

    .line 154
    iget-object p2, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public load([Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V
    .locals 1

    .line 168
    new-instance v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/sound/ActionSound$Sound;-><init>(Lcom/transsion/camera/utils/sound/ActionSound;)V

    .line 169
    iput-object p2, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundCallback:Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;

    .line 170
    iput-object p1, v0, Lcom/transsion/camera/utils/sound/ActionSound$Sound;->soundFilePaths:[Ljava/lang/String;

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public play(I)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/utils/sound/ActionSound;->play(IZ)V

    return-void
.end method

.method public play(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/utils/sound/ActionSound;->playDelegate(IZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method public play(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/utils/sound/ActionSound;->playDelegate(IZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stop(I)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unload(I)V
    .locals 1

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
