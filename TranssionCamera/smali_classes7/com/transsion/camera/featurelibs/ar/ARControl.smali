.class public Lcom/transsion/camera/featurelibs/ar/ARControl;
.super Ljava/lang/Object;
.source "ARControl.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static volatile sChecked:Z

.field private static volatile sInited:Z


# direct methods
.method public static synthetic $r8$lambda$3Y66YDNZyQY4IEFMF3ecLkie_ME()V
    .locals 0

    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->lambda$unInit$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$k_-5G9MwynMWhSpIv_DktnbdIbI(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/ar/ARControl;->lambda$initResource$0(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ARControl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static fuIsSetup()I
    .locals 1

    .line 95
    sget-boolean v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:Z

    return v0
.end method

.method public static initResource(Landroid/content/Context;)V
    .locals 2

    .line 44
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initResource() post start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/transsion/camera/featurelibs/ar/ARControl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/ar/ARControl$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;->init(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static isAuthChecked()Z
    .locals 6

    .line 27
    sget-boolean v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->sChecked:Z

    if-nez v0, :cond_1

    .line 28
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "faceunity.fuSetup() start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 29
    sget-object v3, Lcom/transsion/camera/featurelibs/ar/Authpack;->AUTH_SECRET_KEY:[B

    invoke-static {v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuSetupInternalCheck([B[B)I

    move-result v2

    const/4 v3, 0x1

    .line 31
    invoke-static {v3}, Lcom/faceunity/wrapper/faceunity;->fuSetLogLevel(I)I

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuGetVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v4, "faceunity.fuSetup() end"

    .line 33
    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez v2, :cond_0

    move v1, v3

    .line 34
    :cond_0
    sput-boolean v1, Lcom/transsion/camera/featurelibs/ar/ARControl;->sChecked:Z

    .line 36
    :cond_1
    sget-boolean v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->sChecked:Z

    return v0
.end method

.method private static synthetic lambda$initResource$0(Landroid/content/Context;)V
    .locals 7

    .line 46
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initResource(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    sget-boolean v1, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "initResource() start"

    .line 48
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->isAuthChecked()Z

    move-result v1

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x400

    const-string v5, "AI_model/ai_face_processor.bundle"

    .line 51
    invoke-static {p0, v5, v4}, Lcom/transsion/camera/featurelibs/ar/ARControl;->loadAiModel(Landroid/content/Context;Ljava/lang/String;I)V

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fuSetup load AiModel spend "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "tongue.bundle"

    .line 54
    invoke-static {p0, v5}, Lcom/transsion/camera/featurelibs/ar/ARControl;->loadTongueModel(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fuSetup loadTongueModel spend "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    sput-boolean v1, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:Z

    const-string p0, "initResource done"

    .line 57
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$unInit$1()V
    .locals 4

    .line 77
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unInit() real start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    sget-boolean v1, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 79
    sput-boolean v1, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:Z

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unInitResource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    sput-boolean v1, Lcom/transsion/camera/featurelibs/ar/ARControl;->sChecked:Z

    const-string v1, "faceunity.fuDestroyLibData() start"

    .line 82
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDestroyLibData()V

    const-string v1, "faceunity.fuDestroyLibData() end"

    .line 84
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "releaseAllAiModel() start"

    .line 85
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->releaseAllAiModel()V

    const-string v1, "releaseAllAiModel() end"

    .line 87
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static loadAiModel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 108
    invoke-static {p0, p1}, Lcom/transsion/camera/featurelibs/ar/ARControl;->readFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 110
    sget-object p1, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "faceunity.fuLoadAIModelFromPackage() start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    invoke-static {p0, p2}, Lcom/faceunity/wrapper/faceunity;->fuLoadAIModelFromPackage([BI)I

    const-string p0, "faceunity.fuLoadAIModelFromPackage() end"

    .line 112
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static loadTongueModel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-static {p0, p1}, Lcom/transsion/camera/featurelibs/ar/ARControl;->readFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 101
    sget-object p1, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "faceunity.fuLoadTongueModel() start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuLoadTongueModel([B)I

    const-string p0, "faceunity.fuLoadTongueModel() end"

    .line 103
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static readFile(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 3

    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 124
    :try_start_1
    invoke-static {p0}, Lcom/transsion/camera/featurelibs/ar/ARControl;->readFromStream(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 125
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 123
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    .line 126
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context.getAssets().open() fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    :try_start_5
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 130
    :try_start_6
    invoke-static {p0}, Lcom/transsion/camera/featurelibs/ar/ARControl;->readFromStream(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 131
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    return-object p1

    :catchall_3
    move-exception p1

    .line 129
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception p0

    :try_start_9
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception p0

    .line 132
    sget-object p1, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new FileInputStream() fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static readFromStream(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 118
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    return-object v0
.end method

.method private static releaseAiModel(I)V
    .locals 5

    .line 62
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuIsAIModelLoaded(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 63
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseAiModel() start. type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuReleaseAIModel(I)I

    move-result v2

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseAiModel. type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isReleased: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v1, :cond_0

    const-string p0, "yes"

    goto :goto_0

    :cond_0
    const-string p0, "no"

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static releaseAllAiModel()V
    .locals 1

    const/16 v0, 0x400

    .line 70
    invoke-static {v0}, Lcom/transsion/camera/featurelibs/ar/ARControl;->releaseAiModel(I)V

    const/16 v0, 0x1000

    .line 71
    invoke-static {v0}, Lcom/transsion/camera/featurelibs/ar/ARControl;->releaseAiModel(I)V

    return-void
.end method

.method public static unInit()V
    .locals 2

    .line 75
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit() post start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/transsion/camera/featurelibs/ar/ARControl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/ar/ARControl$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;->unInit(Ljava/lang/Runnable;)V

    return-void
.end method
