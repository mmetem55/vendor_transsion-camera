.class public Lorg/greenrobot/eventbus/EventBusBuilder;
.super Ljava/lang/Object;
.source "EventBusBuilder.java"


# static fields
.field private static final DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;


# instance fields
.field eventInheritance:Z

.field executorService:Ljava/util/concurrent/ExecutorService;

.field ignoreGeneratedIndex:Z

.field logNoSubscriberMessages:Z

.field logSubscriberExceptions:Z

.field logger:Lorg/greenrobot/eventbus/Logger;

.field mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

.field sendNoSubscriberEvent:Z

.field sendSubscriberExceptionEvent:Z

.field strictMethodVerification:Z

.field subscriberInfoIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;",
            ">;"
        }
    .end annotation
.end field

.field throwSubscriberException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/greenrobot/eventbus/EventBusBuilder;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->logSubscriberExceptions:Z

    .line 34
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->logNoSubscriberMessages:Z

    .line 35
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    .line 36
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->sendNoSubscriberEvent:Z

    .line 38
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->eventInheritance:Z

    .line 41
    sget-object v0, Lorg/greenrobot/eventbus/EventBusBuilder;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method getLogger()Lorg/greenrobot/eventbus/Logger;
    .locals 0

    .line 154
    iget-object p0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->logger:Lorg/greenrobot/eventbus/Logger;

    if-eqz p0, :cond_0

    return-object p0

    .line 157
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/Logger$Default;->get()Lorg/greenrobot/eventbus/Logger;

    move-result-object p0

    return-object p0
.end method

.method getMainThreadSupport()Lorg/greenrobot/eventbus/MainThreadSupport;
    .locals 0

    .line 162
    iget-object p0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

    if-eqz p0, :cond_0

    return-object p0

    .line 164
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/android/AndroidComponents;->areAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 165
    invoke-static {}, Lorg/greenrobot/eventbus/android/AndroidComponents;->get()Lorg/greenrobot/eventbus/android/AndroidComponents;

    move-result-object p0

    iget-object p0, p0, Lorg/greenrobot/eventbus/android/AndroidComponents;->defaultMainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
