.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Lcom/faceunity/pta_art/client/AvatarEditor$SaveAvatarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;->onEventRun(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saveComplete(Lcom/faceunity/pta_art/entity/AvatarPTA;)V
    .locals 3

    .line 745
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;Lcom/faceunity/pta_art/entity/AvatarPTA;)V

    invoke-interface {v1, v0, p1, v2}, Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;->snapShot(Landroid/content/Context;Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;)V

    return-void
.end method

.method public saveFailure()V
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2800(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$2;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
