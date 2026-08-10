.class Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$10;
.super Ljava/lang/Object;
.source "ARCoreFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$10;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectChanged(ILjava/lang/Object;)V
    .locals 0

    .line 267
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$10;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    iget-object p2, p2, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 268
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$10;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {p2, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$402(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;I)I

    .line 269
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$10;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    iget-object p2, p2, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setExpressionIndex(I)V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$10;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
