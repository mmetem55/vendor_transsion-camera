.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment$1;
.super Ljava/lang/Object;
.source "EditFaceItemFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemSelectListener(II)Z
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->access$002(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;I)I

    .line 48
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mEditFaceBaseFragmentId:I

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;->itemChangeListener(II)V

    const/4 p0, 0x1

    return p0
.end method
