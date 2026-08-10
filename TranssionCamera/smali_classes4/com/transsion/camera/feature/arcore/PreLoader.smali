.class public final Lcom/transsion/camera/feature/arcore/PreLoader;
.super Ljava/lang/Object;
.source "PreLoader.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static volatile sInited:Z


# direct methods
.method public static synthetic $r8$lambda$DC-HrA0ySq2_yb9Sk8Vbs-DLyCw(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/PreLoader;->lambda$preHandleData$0(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreLoader"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/PreLoader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/transsion/camera/feature/arcore/PreLoader;->sInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroyFuEngine()V
    .locals 1

    .line 54
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDestroyLibData()V

    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lcom/transsion/camera/feature/arcore/PreLoader;->sInited:Z

    return-void
.end method

.method private static synthetic lambda$preHandleData$0(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3

    .line 21
    :try_start_0
    sget-boolean v0, Lcom/transsion/camera/feature/arcore/PreLoader;->sInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 22
    :cond_1
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/arcore/PreLoader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARModeEntry initResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/feature/arcore/PreLoader;->sInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 25
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/faceunity/pta_art/constant/Constant;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 31
    :cond_2
    invoke-static {p0}, Lcom/faceunity/pta_art/client/PTAClientWrapper;->setupData(Landroid/content/Context;)V

    .line 33
    invoke-static {p0}, Lcom/faceunity/pta_art/client/PTAClientWrapper;->setupStyleData(Landroid/content/Context;)V

    .line 35
    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->init(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 37
    sput-boolean p0, Lcom/transsion/camera/feature/arcore/PreLoader;->sInited:Z

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARModeEntry initResource done: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/transsion/camera/feature/arcore/PreLoader;->sInited:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 42
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 44
    :cond_4
    throw p0
.end method

.method public static preHandleData(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .line 19
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager$Holder;->instance:Lcom/transsion/camera/featurelibs/ar/ARThreadManager;

    new-instance v1, Lcom/transsion/camera/feature/arcore/PreLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/arcore/PreLoader$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;->run(Ljava/lang/Runnable;)V

    return-void
.end method
