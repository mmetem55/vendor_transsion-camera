.class Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$3;
.super Ljava/lang/Object;
.source "FuEngineCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->initControllerAndConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$3;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$3;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$900(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)[I

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$3;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$600(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/faceunity/pta_art/core/AvatarHandle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/faceunity/pta_art/core/base/BasePTAHandle;->getControllerItem()I

    move-result p0

    const/4 v1, 0x0

    aput p0, v0, v1

    return-void
.end method
