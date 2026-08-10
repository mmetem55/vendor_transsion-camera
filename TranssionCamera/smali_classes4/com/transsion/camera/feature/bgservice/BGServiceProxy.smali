.class public Lcom/transsion/camera/feature/bgservice/BGServiceProxy;
.super Ljava/lang/Object;
.source "BGServiceProxy.java"

# interfaces
.implements Lcom/transsion/camera/app/common/bgservice/IBGService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/bgservice/BGServiceProxy$BGHIDLServiceDeathRecipient;
    }
.end annotation


# static fields
.field private static final RELINK_TIME:I = 0xc8

.field private static final RETRY_PAUSE_TIME:I = 0x2710

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sPauseTimeMillis:J

.field private static sRetry:Z


# instance fields
.field private mBGEventCallback:Lcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;

.field private mBGHIDLService:Lcom/transsion/camera/feature/bgservice/BGService;

.field private mBGHIDLServiceDeathRecipient:Lcom/transsion/camera/feature/bgservice/BGServiceProxy$BGHIDLServiceDeathRecipient;

.field private mBGServiceLock:Ljava/lang/Object;

.field private mEventCallBack:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGHIDLService:Lcom/transsion/camera/feature/bgservice/BGService;

    .line 20
    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mEventCallBack:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$BGHIDLServiceDeathRecipient;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$BGHIDLServiceDeathRecipient;-><init>(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGHIDLServiceDeathRecipient:Lcom/transsion/camera/feature/bgservice/BGServiceProxy$BGHIDLServiceDeathRecipient;

    .line 69
    new-instance v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$1;-><init>(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGEventCallback:Lcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->createBGHidlService()Lcom/transsion/camera/feature/bgservice/BGService;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)Ljava/lang/Object;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;Lcom/transsion/camera/feature/bgservice/BGService;)Lcom/transsion/camera/feature/bgservice/BGService;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGHIDLService:Lcom/transsion/camera/feature/bgservice/BGService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mEventCallBack:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)Lcom/transsion/camera/feature/bgservice/BGService;
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->getBGHidlService()Lcom/transsion/camera/feature/bgservice/BGService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 14
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private createBGHidlService()Lcom/transsion/camera/feature/bgservice/BGService;
    .locals 5

    .line 86
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBGHidlService ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGHIDLService:Lcom/transsion/camera/feature/bgservice/BGService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " retry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sRetry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGHIDLService:Lcom/transsion/camera/feature/bgservice/BGService;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sRetry:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 90
    :try_start_1
    sput-boolean v2, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sRetry:Z

    const-string v3, "internal/0"

    const/4 v4, 0x1

    .line 91
    invoke-static {v3, v4}, Lcom/transsion/camera/feature/bgservice/BGService;->getService(Ljava/lang/String;Z)Lcom/transsion/camera/feature/bgservice/BGService;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGHIDLService:Lcom/transsion/camera/feature/bgservice/BGService;

    .line 92
    iget-object v4, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGHIDLServiceDeathRecipient:Lcom/transsion/camera/feature/bgservice/BGServiceProxy$BGHIDLServiceDeathRecipient;

    invoke-virtual {v3, v4, v2}, Lcom/transsion/camera/feature/bgservice/BGService;->linkToDeath(Lcom/transsion/camera/feature/bgservice/BGService$HwBinderDeathRecipient;I)V

    .line 93
    iget-object v3, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGHIDLService:Lcom/transsion/camera/feature/bgservice/BGService;

    iget-object v4, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGEventCallback:Lcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;

    invoke-virtual {v3, v2, v4}, Lcom/transsion/camera/feature/bgservice/BGService;->setEventCallback(ILcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;)V

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBGHidlService init..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGHIDLService:Lcom/transsion/camera/feature/bgservice/BGService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catch_0
    :try_start_2
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "BGHIDLConnection NoSuchElementException ..."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGHIDLService:Lcom/transsion/camera/feature/bgservice/BGService;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 100
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getBGHidlService()Lcom/transsion/camera/feature/bgservice/BGService;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->createBGHidlService()Lcom/transsion/camera/feature/bgservice/BGService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public hasBGService()Z
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->getBGHidlService()Lcom/transsion/camera/feature/bgservice/BGService;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pause()V
    .locals 2

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sPauseTimeMillis:J

    return-void
.end method

.method public resume()V
    .locals 4

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sPauseTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sRetry:Z

    return-void
.end method

.method public setBGServiceCallback(Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mEventCallBack:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    return-void
.end method
