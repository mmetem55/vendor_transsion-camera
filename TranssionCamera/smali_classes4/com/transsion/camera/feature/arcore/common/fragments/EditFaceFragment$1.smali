.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventRun(I)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1$1;

    const-string v2, "enter_facepup_mode"

    invoke-direct {v1, p0, v2, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IRendererOperator;->queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    return-void
.end method
