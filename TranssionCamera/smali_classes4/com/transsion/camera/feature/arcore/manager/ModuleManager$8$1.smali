.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8$1;
.super Lcom/faceunity/pta_art/core/base/Task;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8;Ljava/lang/String;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8$1;->this$1:Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8;

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8$1;->this$1:Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1200(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/feature/arcore/common/capture/FirstFrameCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/capture/FirstFrameCallback;->onFirstFrameCome()V

    return-void
.end method
