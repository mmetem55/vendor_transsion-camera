.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$2;
.super Ljava/lang/Object;
.source "EditShapeItemFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;


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

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorSelectListener(I)V
    .locals 7

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->access$402(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;I)I

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->access$500(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->access$500(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    iget v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mEditFaceBaseFragmentId:I

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->access$400(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)I

    move-result v0

    int-to-double v3, v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->access$600(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;->colorValuesChangeListener(IID)V

    :cond_0
    return-void
.end method
