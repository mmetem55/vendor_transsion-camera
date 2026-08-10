.class public Lcom/transsion/secondaryhome/res/ResWorkerManager;
.super Ljava/lang/Object;
.source "ResWorkerManager.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/secondaryhome/res/ResWorkerManager$Res_Worker_Type;
    }
.end annotation


# static fields
.field public static final RES_LOCAL:I = 0x1

.field public static final RES_REMOTE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ResWorkerManager"

.field static mResWorkerInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/transsion/secondaryhome/res/ResWorkerInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/transsion/secondaryhome/res/ResWorkerManager;->mResWorkerInterfaceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 0

    .line 62
    invoke-static {}, Lcom/transsion/secondaryhome/RemoteLayoutInflater;->clear()V

    .line 63
    invoke-static {}, Lcom/transsion/secondaryhome/ContextHub;->clear()V

    return-void
.end method

.method public static getResWorker(I)Lcom/transsion/secondaryhome/res/ResWorkerInterface;
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 43
    const-class p0, Lcom/transsion/secondaryhome/res/LocalResWorkerImpl;

    invoke-static {p0}, Lcom/transsion/secondaryhome/res/ResWorkerManager;->getWorker(Ljava/lang/Class;)Lcom/transsion/secondaryhome/res/ResWorkerInterface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 45
    const-class p0, Lcom/transsion/secondaryhome/res/RemoteResWorkerImpl;

    invoke-static {p0}, Lcom/transsion/secondaryhome/res/ResWorkerManager;->getWorker(Ljava/lang/Class;)Lcom/transsion/secondaryhome/res/ResWorkerInterface;

    move-result-object p0

    return-object p0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Worker by error type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized getWorker(Ljava/lang/Class;)Lcom/transsion/secondaryhome/res/ResWorkerInterface;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/transsion/secondaryhome/res/ResWorkerInterface;",
            ">;)",
            "Lcom/transsion/secondaryhome/res/ResWorkerInterface;"
        }
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/res/ResWorkerManager;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/transsion/secondaryhome/res/ResWorkerManager;->mResWorkerInterfaceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/secondaryhome/res/ResWorkerInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 54
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/secondaryhome/res/ResWorkerInterface;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "ResWorkerManager"

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWorker err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
