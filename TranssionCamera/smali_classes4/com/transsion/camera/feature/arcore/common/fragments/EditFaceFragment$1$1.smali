.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1$1;
.super Lcom/faceunity/pta_art/core/base/Task;
.source "EditFaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1;->onEventRun(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1;

.field final synthetic val$controllerItem:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1;Ljava/lang/String;I)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1;

    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1$1;->val$controllerItem:I

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 191
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1$1;->val$controllerItem:I

    const-string v1, "enter_facepup_mode"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 193
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1$1;->val$controllerItem:I

    const-string v1, "head_rot_delta_x"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 194
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "fuItemSetParam \u6b63\u5e38"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1$1;->val$controllerItem:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->setCurrentParam(I)V

    return-void
.end method
