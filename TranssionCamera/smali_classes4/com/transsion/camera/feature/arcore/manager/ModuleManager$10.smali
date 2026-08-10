.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$10;
.super Lcom/faceunity/pta_art/core/base/Task;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->moduleChangeCore(IILcom/transsion/camera/feature/arcore/module/BaseModule;Lcom/transsion/camera/feature/arcore/module/BaseModule;Lcom/faceunity/pta_art/entity/AvatarPTA;IZ)V
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

    .line 723
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$10;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$10;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$700(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/feature/arcore/manager/IModuleChangeCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/manager/IModuleChangeCallback;->moduleChangeDone()V

    return-void
.end method
