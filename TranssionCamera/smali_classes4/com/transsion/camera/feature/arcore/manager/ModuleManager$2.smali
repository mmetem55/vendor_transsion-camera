.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$2;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/manager/IModuleChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;
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

    .line 237
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$2;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moduleChangeDone()V
    .locals 1

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$2;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$202(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Z)Z

    return-void
.end method

.method public moduleChangeStart(I)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$2;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$202(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Z)Z

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$2;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$300(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;->notifyModuleChangeStart(I)Z

    return-void
.end method
