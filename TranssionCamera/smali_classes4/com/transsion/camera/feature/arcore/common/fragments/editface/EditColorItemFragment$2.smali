.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$2;
.super Ljava/lang/Object;
.source "EditColorItemFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorSelectListener(I)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->access$302(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;I)I

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->access$400(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mEditFaceBaseFragmentId:I

    int-to-double v1, p1

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;->colorValuesChangeListener(IID)V

    return-void
.end method
