.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$7;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 698
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 701
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 705
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->edit_face_back:I

    if-ne v0, v1, :cond_1

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->onBackPressed()Z

    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->edit_face_save:I

    if-ne p1, v0, :cond_2

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1100(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
