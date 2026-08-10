.class public interface abstract Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;
.super Ljava/lang/Object;
.source "IAvatarRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IScrolledInterface;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;
    }
.end annotation


# virtual methods
.method public abstract getClickToPosition()Z
.end method

.method public abstract getCurrentChildAt()Landroid/view/View;
.end method

.method public abstract getIsRecording()Z
.end method

.method public abstract getScrolling()Z
.end method

.method public abstract getSelectedPosition()I
.end method

.method public abstract setClickToPosition(Z)V
.end method

.method public abstract setIsInit(Z)V
.end method

.method public abstract setIsRecording(Z)V
.end method

.method public abstract setOnScrolledPositionListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IScrolledInterface;)V
.end method

.method public abstract setOnSelectChangeListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;)V
.end method

.method public abstract setOnShutterEventListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;)V
.end method

.method public abstract setPauseFlag(Z)V
.end method

.method public abstract setSelectedPosition(I)V
.end method
