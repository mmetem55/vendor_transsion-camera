.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$5;
.super Lcom/faceunity/pta_art/core/base/Task;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$5;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$5;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$800(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$900(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Z)V

    return-void
.end method
