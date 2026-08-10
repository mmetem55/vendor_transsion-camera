.class public Lcom/transsion/camera/feature/mode/video/node/BaseNode;
.super Ljava/lang/Object;
.source "BaseNode.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/video/node/INode;


# instance fields
.field private mNext:Lcom/transsion/camera/feature/mode/video/node/INode;

.field protected mProcessListener:Lcom/transsion/camera/feature/mode/video/node/INode$IProcessListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final deliverToNext(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->mNext:Lcom/transsion/camera/feature/mode/video/node/INode;

    if-eqz p0, :cond_0

    .line 35
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/INode;->process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->deliverToNext(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    move-result p0

    return p0
.end method

.method public setNext(Lcom/transsion/camera/feature/mode/video/node/INode;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->mNext:Lcom/transsion/camera/feature/mode/video/node/INode;

    return-void
.end method

.method public setProcessListener(Lcom/transsion/camera/feature/mode/video/node/INode$IProcessListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->mProcessListener:Lcom/transsion/camera/feature/mode/video/node/INode$IProcessListener;

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
