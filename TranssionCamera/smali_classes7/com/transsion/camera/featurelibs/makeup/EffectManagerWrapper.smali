.class Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;
.super Ljava/lang/Object;
.source "EffectManagerWrapper.java"

# interfaces
.implements Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEffectManager:Lcom/bytedance/labcv/core/effect/EffectManager;

.field private final mMakeUpReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mMakeUpReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->checkMakeUpReady()V

    .line 41
    new-instance v0, Lcom/bytedance/labcv/core/effect/EffectManager;

    new-instance v1, Lcom/bytedance/labcv/core/effect/EffectResourceHelper;

    invoke-direct {v1, p1}, Lcom/bytedance/labcv/core/effect/EffectResourceHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/bytedance/labcv/core/effect/EffectManager;-><init>(Landroid/content/Context;Lcom/bytedance/labcv/core/effect/EffectResourceProvider;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mEffectManager:Lcom/bytedance/labcv/core/effect/EffectManager;

    return-void
.end method

.method private checkMakeUpReady()V
    .locals 7

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mContext:Landroid/content/Context;

    const-string v1, "build_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Makeup_fingerprint"

    const/4 v3, 0x0

    .line 46
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 48
    sget-object v3, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMakeUpReady savedVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", fingerprint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mContext:Landroid/content/Context;

    const-string v6, "assets"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "bemakeup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {v4}, Lcom/transsion/camera/utils/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v4

    .line 52
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMakeUpReady isPathExist: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mMakeUpReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mMakeUpReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 56
    new-instance v0, Lcom/bytedance/labcv/core/task/UnzipTask;

    invoke-direct {v0, p0}, Lcom/bytedance/labcv/core/task/UnzipTask;-><init>(Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;)V

    .line 57
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void
.end method


# virtual methods
.method cleanPipeline()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mEffectManager:Lcom/bytedance/labcv/core/effect/EffectManager;

    invoke-virtual {p0}, Lcom/bytedance/labcv/core/effect/EffectManager;->cleanPipeline()Z

    return-void
.end method

.method destroy()V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mEffectManager:Lcom/bytedance/labcv/core/effect/EffectManager;

    invoke-virtual {p0}, Lcom/bytedance/labcv/core/effect/EffectManager;->destroy()I

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method init()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mMakeUpReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 67
    :cond_0
    sget-object v0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mEffectManager:Lcom/bytedance/labcv/core/effect/EffectManager;

    invoke-virtual {p0}, Lcom/bytedance/labcv/core/effect/EffectManager;->init()I

    const-string p0, "init -"

    .line 69
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onEndTask(Z)V
    .locals 3

    .line 109
    sget-object v0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEndTask result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mMakeUpReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    const-string v0, "build_version"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 113
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 114
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v0, "Makeup_fingerprint"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public onStartTask()V
    .locals 1

    .line 104
    sget-object p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onStartTask"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method process(IIIIJ)Z
    .locals 7

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mEffectManager:Lcom/bytedance/labcv/core/effect/EffectManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/labcv/core/effect/EffectManager;->process(IIIIJ)Z

    move-result p0

    return p0
.end method

.method setCameraPosition(Z)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mEffectManager:Lcom/bytedance/labcv/core/effect/EffectManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/core/effect/EffectManager;->setCameraPosition(Z)V

    return-void
.end method

.method setComposeNodes([Ljava/lang/String;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mEffectManager:Lcom/bytedance/labcv/core/effect/EffectManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/core/effect/EffectManager;->setComposeNodes([Ljava/lang/String;)Z

    return-void
.end method

.method updateComposerNodeIntensity(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/makeup/EffectManagerWrapper;->mEffectManager:Lcom/bytedance/labcv/core/effect/EffectManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/labcv/core/effect/EffectManager;->updateComposerNodeIntensity(Ljava/lang/String;Ljava/lang/String;F)Z

    return-void
.end method
