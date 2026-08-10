.class public Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;
.super Ljava/lang/Object;
.source "SecondaryHomeLink.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# static fields
.field public static final ALG_TRANS_SCENE_EVENT:Ljava/lang/String; = "alg_trans_scene_event"

.field public static final MAX_LENGTH:I = 0x32

.field public static final METHOD_SAVE_WITH_INDEX:Ljava/lang/String; = "saveAdvanceDataWithIndex"

.field public static final PRE_FIX:Ljava/lang/String; = "scene_"

.field public static final SERVICE_ADVANCE_SAVE:Ljava/lang/String; = "AdvancedDataSaveService"

.field public static final STATE_IN:I = 0x0

.field public static final STATE_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SecondaryHomeLink"

.field private static instance:Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;


# instance fields
.field private context:Landroid/content/Context;

.field private final initRunnable:Ljava/lang/Runnable;

.field private isInit:Z

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink$1;

    invoke-direct {v0, p0}, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink$1;-><init>(Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;)V

    iput-object v0, p0, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;->initRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;
    .locals 2

    const-class v0, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;->instance:Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;

    invoke-direct {v1}, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;-><init>()V

    sput-object v1, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;->instance:Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;

    .line 27
    :cond_0
    sget-object v1, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;->instance:Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    .line 35
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;->isInit:Z

    if-eqz v0, :cond_0

    const-string p1, "SecondaryHomeLink"

    const-string v0, "multiple call init,skip"

    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string p1, "SecondaryHomeLink"

    const-string v0, "init failed ,context can not be null! "

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 45
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;->pkgName:Ljava/lang/String;

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "SecondaryHomeLink"

    const-string v0, "init failed , context is invalid"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 51
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initClient(Landroid/content/Context;)V

    .line 54
    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->isOxygenBusConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "SecondaryHomeLink"

    const-string v0, "onCreate OxyGenBus init OxygenBus failed "

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;->initRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string p1, "SecondaryHomeLink"

    const-string v0, "onCreate OxyGenBus init OxygenBus done  "

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;->isInit:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sceneUpdate(Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x1

    const-string v1, "SecondaryHomeLink"

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_0

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sceneUpdate invalid param state "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_1

    goto/16 :goto_0

    .line 95
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scene_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    new-instance v3, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;

    invoke-direct {v3}, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;-><init>()V

    .line 98
    invoke-virtual {v3, p2}, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;->setState(I)V

    .line 99
    iget-object p2, p0, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;->setFrom(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3, v2}, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;->setReason(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    .line 101
    invoke-virtual {v3, v4, v5}, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;->setSize(J)V

    .line 103
    new-instance p2, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-direct {p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;-><init>()V

    const-string v2, "DataCenter"

    .line 104
    invoke-virtual {p2, v2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->channel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p2

    const-string v2, "AdvancedDataSaveService"

    .line 105
    invoke-virtual {p2, v2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiName(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p2

    const-string v2, "saveAdvanceDataWithIndex"

    .line 106
    invoke-virtual {p2, v2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiMethod(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p2

    const-string v2, "alg_trans_scene_event"

    .line 107
    invoke-virtual {p2, v2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->addParameter(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p2

    .line 108
    invoke-virtual {v3}, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->addParameter(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p2

    .line 109
    invoke-virtual {p2, p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->addParameter(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p1

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->addParameter(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;->pkgName:Ljava/lang/String;

    .line 111
    invoke-virtual {p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->addParameter(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->build()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->invoke()Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->isSuccess()Z

    move-result p1

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sceneUpdate, success "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " resultCode "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;->resultCode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sceneUpdate invalid param feature "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
