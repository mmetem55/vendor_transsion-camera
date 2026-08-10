.class public Lcom/transsion/camera/app/common/setting/StatusMonitor;
.super Ljava/lang/Object;
.source "StatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;,
        Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    }
.end annotation


# instance fields
.field private final mResponderCreateDestroyLock:Ljava/lang/Object;

.field private final mResponders:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponders:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponderCreateDestroyLock:Ljava/lang/Object;

    return-void
.end method

.method private getStatusResponderSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponderCreateDestroyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;-><init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$1;)V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeStatusResponderSync(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponderCreateDestroyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_0

    .line 74
    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->access$200(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 76
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponderSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    return-object p0
.end method

.method public registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponderSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 47
    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->access$000(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->removeStatusResponderSync(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
