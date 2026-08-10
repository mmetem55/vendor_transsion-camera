.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1$1;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;->onThumbnailSaved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 752
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "saveAvatar end...."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;->val$newAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1300(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;Lcom/faceunity/pta_art/entity/AvatarPTA;ZZ)V

    .line 755
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    return-void
.end method
