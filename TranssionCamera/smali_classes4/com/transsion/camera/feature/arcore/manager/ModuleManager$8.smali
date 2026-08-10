.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->hidePreviewCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1100(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/faceunity/pta_art/core/base/BaseCore;

    move-result-object v0

    const-string v1, "hidePreviewCover"

    invoke-virtual {v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->dequeuePostEvent(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1100(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/faceunity/pta_art/core/base/BaseCore;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8$1;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8$1;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->queuePostEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    return-void
.end method
