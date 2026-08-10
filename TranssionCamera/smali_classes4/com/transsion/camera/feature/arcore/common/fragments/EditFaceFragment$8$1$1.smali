.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;->saveComplete(Lcom/faceunity/pta_art/entity/AvatarPTA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;

.field final synthetic val$newAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;Lcom/faceunity/pta_art/entity/AvatarPTA;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;->val$newAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailFailSaved()V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1$2;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onThumbnailSaved()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
