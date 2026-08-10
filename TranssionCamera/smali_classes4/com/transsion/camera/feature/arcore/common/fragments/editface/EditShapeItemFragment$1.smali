.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$1;
.super Ljava/lang/Object;
.source "EditShapeItemFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemSelectListener(II)Z
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->access$002(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;I)I

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    iget v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mEditFaceBaseFragmentId:I

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;

    invoke-interface {p1, v1, v0, p2, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;->editFacePointChaneListener(IIILcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;)V

    if-lez p2, :cond_0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->access$302(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;I)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
