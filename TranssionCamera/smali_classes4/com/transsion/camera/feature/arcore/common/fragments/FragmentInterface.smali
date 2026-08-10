.class public interface abstract Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;
.super Ljava/lang/Object;
.source "FragmentInterface.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;


# virtual methods
.method public abstract getCutoutHeight()I
.end method

.method public abstract getFrontCameraId()Ljava/lang/String;
.end method

.method public abstract getHintCallback()Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;
.end method

.method public abstract getModuleOperator()Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;
.end method

.method public abstract getNavigationHeight()I
.end method

.method public abstract getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;
.end method

.method public abstract isGuideLayoutVisible()Z
.end method

.method public abstract isInited()Z
.end method

.method public abstract isRequestEditFaceModule()Z
.end method

.method public abstract receiveCancelVideoCall()Z
.end method

.method public abstract setCurrentFragment(Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;)V
.end method

.method public abstract setHorizontalRecycleView(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;)V
.end method

.method public abstract setShutterButtonListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;)V
.end method
