.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;
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

    .line 593
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorValuesChangeEnd(I)V
    .locals 0

    return-void
.end method

.method public colorValuesChangeListener(IID)V
    .locals 6

    double-to-int v0, p3

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 639
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    int-to-double p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setHatColorValue(D)V

    .line 640
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    sget-object p2, Lcom/faceunity/pta_art/constant/ColorConstant;->hat_color:[[D

    aget-object p2, p2, v0

    const-string p3, "hat_color"

    invoke-interface {p1, p3, p2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->setItemParamToController(Ljava/lang/String;[D)V

    goto/16 :goto_1

    .line 633
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    int-to-double p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setGlassesColorValue(D)V

    .line 634
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    sget-object p4, Lcom/faceunity/pta_art/constant/ColorConstant;->glass_color:[[D

    aget-object p4, p4, v0

    const-string v1, "glass_color"

    invoke-interface {p1, v1, p4}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->setItemParamToController(Ljava/lang/String;[D)V

    .line 635
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setGlassesFrameColorValue(D)V

    .line 636
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    sget-object p2, Lcom/faceunity/pta_art/constant/ColorConstant;->glass_frame_color:[[D

    aget-object p2, p2, v0

    const-string p3, "glass_frame_color"

    invoke-interface {p1, p3, p2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->setItemParamToController(Ljava/lang/String;[D)V

    goto/16 :goto_1

    .line 629
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setLipColorValue(D)V

    .line 630
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    sget-object p2, Lcom/faceunity/pta_art/constant/ColorConstant;->lip_color:[[D

    invoke-static {p2, p3, p4}, Lcom/faceunity/pta_art/constant/ColorConstant;->getColor([[DD)[D

    move-result-object p2

    const-string p3, "lip_color"

    invoke-interface {p1, p3, p2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->setItemParamToController(Ljava/lang/String;[D)V

    goto/16 :goto_1

    .line 625
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setIrisColorValue(D)V

    .line 626
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    sget-object p2, Lcom/faceunity/pta_art/constant/ColorConstant;->iris_color:[[D

    invoke-static {p2, p3, p4}, Lcom/faceunity/pta_art/constant/ColorConstant;->getColor([[DD)[D

    move-result-object p2

    const-string p3, "iris_color"

    invoke-interface {p1, p3, p2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->setItemParamToController(Ljava/lang/String;[D)V

    goto/16 :goto_1

    .line 621
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setSkinColorValue(D)V

    .line 622
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    sget-object p2, Lcom/faceunity/pta_art/constant/ColorConstant;->skin_color:[[D

    invoke-static {p2, p3, p4}, Lcom/faceunity/pta_art/constant/ColorConstant;->getColor([[DD)[D

    move-result-object p2

    const-string p3, "skin_color"

    invoke-interface {p1, p3, p2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->setItemParamToController(Ljava/lang/String;[D)V

    goto/16 :goto_1

    .line 599
    :cond_5
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zyzy index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , pos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , values:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 600
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2500(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Landroid/view/View;

    move-result-object p1

    sget p3, Lcom/transsion/camera/feature/arcore/R$id;->color_item_recycler:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    const/4 p3, 0x0

    if-nez p2, :cond_6

    .line 603
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p2

    invoke-virtual {p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result p2

    invoke-static {v1, p2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object p2

    .line 604
    iget-object p4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p4}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p4

    invoke-virtual {p4, v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setDualHairColor(Z)V

    goto :goto_0

    .line 606
    :cond_6
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p2

    invoke-virtual {p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result p2

    invoke-static {p3, p2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object p2

    .line 607
    iget-object p4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p4}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setDualHairColor(Z)V

    .line 608
    iget-object p4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p4}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p4

    int-to-double v1, v0

    invoke-virtual {p4, v1, v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setHairColorValue(D)V

    .line 609
    sget-object p4, Lcom/faceunity/pta_art/constant/ColorConstant;->hair_color:[[D

    aget-object p4, p4, v0

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-static {p4, v3}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    const-string v2, "hair_color"

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->setItemParamToController(Ljava/lang/String;[D)V

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    aget-wide v1, p4, v3

    const-string p4, "hair_color_intensity"

    invoke-interface {v0, p4, v1, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->setItemParamToController(Ljava/lang/String;D)V

    .line 614
    :goto_0
    iget-object p4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p4}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairIndex()I

    move-result v0

    invoke-static {p4, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1402(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I

    .line 616
    iget-object p4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p4}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p4

    invoke-virtual {p1, p2, p4}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->initHair(Ljava/util/List;I)V

    .line 618
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object p2, p1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Z)V

    .line 643
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    return-void
.end method

.method public colorValuesChangeStart(I)V
    .locals 0

    return-void
.end method

.method public colorValuesForSeekBarListener(IIF[D)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    float-to-double p2, p3

    invoke-virtual {p1, p2, p3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setSkinColorValue(D)V

    .line 652
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const-string p2, "skin_color"

    invoke-interface {p1, p2, p4}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->setItemParamToController(Ljava/lang/String;[D)V

    .line 655
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    return-void
.end method
