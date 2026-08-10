.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->initViewPager(Landroid/view/View;)V
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

    .line 422
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->onPageScrolled(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->onPageSelected(I)V

    .line 431
    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_clothes_icon:I

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)[Ljava/lang/Integer;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$500(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;->MIN:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    if-eq v0, v1, :cond_1

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$502(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;)Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->resetAllMin(Z)V

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)V

    goto :goto_0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$500(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;->TOP:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    if-eq v0, v1, :cond_1

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$502(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;)Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->resetAllTop(Z)V

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)V

    .line 447
    :cond_1
    :goto_0
    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_hair_icon:I

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)[Ljava/lang/Integer;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$800(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->setSelectPosition(I)V

    .line 450
    :cond_2
    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_glasses_icon:I

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)[Ljava/lang/Integer;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$900(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGlassesIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->setSelectPosition(I)V

    .line 453
    :cond_3
    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_hat_icon:I

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)[Ljava/lang/Integer;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_4

    .line 454
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1000(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHatIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->setSelectPosition(I)V

    :cond_4
    return-void
.end method
