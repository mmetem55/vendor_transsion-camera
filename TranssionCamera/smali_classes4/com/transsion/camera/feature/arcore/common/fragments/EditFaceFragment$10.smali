.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$10;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->onScroll(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

.field final synthetic val$rotDelta:D


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;D)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$10;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iput-wide p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$10;->val$rotDelta:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventRun(I)V
    .locals 2

    .line 912
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$10;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    iget-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$10;->val$rotDelta:D

    const-string p0, "rot_delta"

    invoke-interface {p1, p0, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->setItemParamToController(Ljava/lang/String;D)V

    return-void
.end method
