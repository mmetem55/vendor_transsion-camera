.class Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1$1;
.super Ljava/lang/Object;
.source "FuEngineCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->onSurfaceDestroyed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1$1;->this$1:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1$1;->this$1:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$1;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$300(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/transsion/camera/utils/StateWait;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    .line 56
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "notifyState"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
