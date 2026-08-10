.class Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$4;
.super Ljava/lang/Object;
.source "CommonFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->sharedViewInit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onConfirm(I)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentRender()Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->receiveFirstFrame()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const/4 v1, 0x3

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;I)I

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsInEditFragment:Z

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    :goto_0
    return-void
.end method
