.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$3;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog$ConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->onBackPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

.field final synthetic val$customAlertDialog:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$3;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$3;->val$customAlertDialog:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$3;->val$customAlertDialog:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$3;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->setCreateFeature(Z)V

    .line 496
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$3;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1200(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1300(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;Lcom/faceunity/pta_art/entity/AvatarPTA;ZZ)V

    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$3;->val$customAlertDialog:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$3;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->setCreateFeature(Z)V

    .line 489
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$3;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1100(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    return-void
.end method
