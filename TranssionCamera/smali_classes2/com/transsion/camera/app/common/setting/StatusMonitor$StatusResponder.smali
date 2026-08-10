.class public Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
.super Ljava/lang/Object;
.source "StatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/setting/StatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusResponder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponderName:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->this$0:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mResponderName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;-><init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->addListener(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->removeListener(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private addListener(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeListener(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public statusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 29
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
