.class Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;
.super Ljava/lang/Object;
.source "CommonFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnShutterEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaneVisibility()I
    .locals 0

    .line 859
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$1300(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)I

    move-result p0

    return p0
.end method

.method public isInterceptVolume()Z
    .locals 3

    .line 775
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    invoke-static {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isNeedToSoundEffect(I)Z

    move-result v0

    .line 780
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    .line 782
    invoke-virtual {p0, v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSoundEffectId(Z)I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v2, v1

    :cond_2
    return v2
.end method

.method public onShutterClick(Z)V
    .locals 4

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$800(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 690
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$900()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterClick mIsAnimating  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isGenderDialog visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->isModuleChanging()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 695
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$1000(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    return-void

    .line 698
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-boolean v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsRecording:Z

    if-eqz v1, :cond_4

    .line 699
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->onShutterUp()V

    return-void

    .line 702
    :cond_4
    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-boolean v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsInEdit:Z

    if-eqz v1, :cond_5

    goto/16 :goto_0

    .line 703
    :cond_5
    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->isGuideLayoutVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 704
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 705
    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 706
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isReachLimitedAvatar()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 709
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_9

    .line 710
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 713
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 717
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_b

    .line 719
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$002(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;Z)Z

    .line 720
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_shutter_bar_click_anim:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 721
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getCurrentChildAt()Landroid/view/View;

    move-result-object p1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->springAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    .line 722
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getCurrentChildAt()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->springAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    .line 723
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x3fb020c5    # 1.376f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 724
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x459c4000    # 5000.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 725
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v3, 0x3fe00000    # 1.75f

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 726
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 727
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 733
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 734
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$2;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;)V

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 742
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_shutter_bar_arcore:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 743
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mCaptureCallback:Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;->takePicture(Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public onShutterLongClick()V
    .locals 4

    .line 790
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$800(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 796
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$900()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterLongClick mIsAnimating = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isModuleChanging = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 797
    invoke-interface {v2}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->isModuleChanging()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",camera alived = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v2}, Lcom/transsion/camera/feature/arcore/manager/IRendererOperator;->isCameraAlived()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 796
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 799
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$1000(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    return-void

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IRendererOperator;->isCameraAlived()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 805
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->isModuleChanging()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 809
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 812
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-boolean v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsInEdit:Z

    if-eqz v1, :cond_6

    goto/16 :goto_0

    .line 815
    :cond_6
    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 818
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 819
    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 820
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 824
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$002(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;Z)Z

    .line 825
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAvatarRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 826
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTopbar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 827
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceEffectView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 830
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$1100(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 831
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$1100(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 833
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mModuleCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    sget v2, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_shutter_bar_long_press_anim:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$3;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;)V

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 849
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v2, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$1200(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;->startVideoRecorder(Ljava/lang/String;)V

    .line 850
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    .line 853
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsRecording:Z

    .line 854
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {p0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setIsRecording(Z)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onShutterUp()V
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getIsRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 756
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$900()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onShutterUp"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-boolean v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsRecording:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 758
    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;->stopVideoRecorder(Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;)V

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iput-boolean v2, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsRecording:Z

    .line 760
    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setIsRecording(Z)V

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_shutter_bar_arcore:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAvatarRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAvatarRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 766
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTopbar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 769
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mModuleCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 770
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$002(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;Z)Z

    return-void
.end method
