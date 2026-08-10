.class public interface abstract Lcom/transsion/camera/feature/mode/video/node/INode;
.super Ljava/lang/Object;
.source "INode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/node/INode$IProcessListener;
    }
.end annotation


# virtual methods
.method public abstract init()V
.end method

.method public abstract process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
.end method

.method public abstract setNext(Lcom/transsion/camera/feature/mode/video/node/INode;)V
.end method

.method public abstract setProcessListener(Lcom/transsion/camera/feature/mode/video/node/INode$IProcessListener;)V
.end method

.method public abstract unInit()V
.end method
