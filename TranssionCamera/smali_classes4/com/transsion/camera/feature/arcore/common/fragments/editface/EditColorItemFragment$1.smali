.class Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$1;
.super Ljava/lang/Object;
.source "EditColorItemFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;


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

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemSelectListener(II)Z
    .locals 3

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    iget v0, p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mEditFaceBaseFragmentId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHatIndex()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    .line 60
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result p1

    invoke-static {v1, p1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/faceunity/pta_art/entity/BundleRes;

    iget-boolean p1, p1, Lcom/faceunity/pta_art/entity/BundleRes;->isSupport:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    iget v0, p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mEditFaceBaseFragmentId:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_2

    if-lez p2, :cond_2

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    .line 63
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result p1

    invoke-static {v1, p1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/faceunity/pta_art/entity/BundleRes;

    iget-boolean p1, p1, Lcom/faceunity/pta_art/entity/BundleRes;->isSupport:Z

    if-nez p1, :cond_2

    :cond_1
    return v1

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->access$002(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;I)I

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    move-result-object p1

    if-lez p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mEditFaceBaseFragmentId:I

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;->itemChangeListener(II)V

    const/4 p0, 0x1

    return p0
.end method
