.class Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;
.super Ljava/lang/Object;
.source "BrightnessValueMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCache:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mCapacity:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->mCache:Ljava/util/Queue;

    if-lez p1, :cond_0

    .line 244
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->mCapacity:I

    return-void

    .line 242
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid capacity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method clear()V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->mCache:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->mCache:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->mCapacity:I

    if-ge v0, v1, :cond_0

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->mCache:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->mCache:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->mCache:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method stream()Ljava/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->mCache:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
