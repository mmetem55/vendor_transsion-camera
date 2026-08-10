.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->saveAvatar()V
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

    .line 739
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventRun(I)V
    .locals 4

    .line 742
    invoke-static {}, Lcom/faceunity/pta_art/client/AvatarEditor;->getInstance()Lcom/faceunity/pta_art/client/AvatarEditor;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;)V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/faceunity/pta_art/client/AvatarEditor;->saveAvatar(Landroid/content/Context;Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;ILcom/faceunity/pta_art/client/AvatarEditor$SaveAvatarListener;)V

    return-void
.end method
