.class public Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;
.super Ljava/lang/Object;
.source "MediaChain.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/video/node/IChain;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mNodeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/transsion/camera/feature/mode/video/node/INode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->mNodeList:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addNode(Lcom/transsion/camera/feature/mode/video/node/INode;)V
    .locals 1

    if-nez p1, :cond_0

    .line 32
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "addNode node is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->mNodeList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->mNodeList:Ljava/util/LinkedList;

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/video/node/INode;

    if-eqz v0, :cond_2

    .line 42
    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/video/node/INode;->setNext(Lcom/transsion/camera/feature/mode/video/node/INode;)V

    .line 45
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public init()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->mNodeList:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/video/node/INode;

    .line 56
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/node/INode;->init()V

    goto :goto_0

    :cond_1
    return-void

    .line 51
    :cond_2
    :goto_1
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "empty mNodeList"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->mNodeList:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/video/node/INode;

    .line 68
    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/video/node/INode;->unInit()V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->mNodeList:Ljava/util/LinkedList;

    return-void

    .line 63
    :cond_2
    :goto_1
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "empty mNodeList"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
