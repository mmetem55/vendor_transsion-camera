.class Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;
.super Ljava/lang/Object;
.source "FacemojiFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->onConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field avatarPTA:Lcom/faceunity/pta_art/entity/AvatarPTA;

.field final synthetic this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

.field final synthetic val$avatarPTAList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;Ljava/util/List;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->val$avatarPTAList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iget p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->val$pos:I

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/faceunity/pta_art/entity/AvatarPTA;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->avatarPTA:Lcom/faceunity/pta_art/entity/AvatarPTA;

    return-void
.end method


# virtual methods
.method public onEventRun(I)V
    .locals 2

    .line 231
    invoke-static {}, Lcom/faceunity/pta_art/client/AvatarEditor;->getInstance()Lcom/faceunity/pta_art/client/AvatarEditor;

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->val$avatarPTAList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->val$pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;)V

    invoke-static {p1, v0, v1}, Lcom/faceunity/pta_art/client/AvatarEditor;->deleteAvatar(Landroid/content/Context;Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/faceunity/pta_art/client/AvatarEditor$DeleteAvatarListener;)V

    return-void
.end method
