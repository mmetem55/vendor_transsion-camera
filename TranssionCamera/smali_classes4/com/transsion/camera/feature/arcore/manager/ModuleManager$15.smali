.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$15;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->stopVideoRecorder(Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;)V
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

    .line 1053
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$15;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1056
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$15;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$3700(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V

    return-void
.end method
