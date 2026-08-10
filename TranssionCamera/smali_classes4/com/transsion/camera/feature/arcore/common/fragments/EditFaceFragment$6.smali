.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$6;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;


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

    .line 690
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public editFacePointChaneListener(IIILcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;)V
    .locals 0

    .line 693
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;

    move-result-object p1

    iget-object p2, p4, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;->paramMap:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object p3, p3, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->setParamMap(Ljava/util/HashMap;Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;)V

    .line 694
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    return-void
.end method
