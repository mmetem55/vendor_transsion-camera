.class Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;
.super Ljava/lang/Object;
.source "FacemojiFragment.java"

# interfaces
.implements Lcom/faceunity/pta_art/client/AvatarEditor$DeleteAvatarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->onEventRun(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteComplete()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->avatarPTA:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIdCompat()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$500(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$602(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$600(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$602(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public deleteFailure()V
    .locals 3

    .line 280
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->createToast()Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/arcore/R$string;->delete_avatar_failed:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->show(Landroid/content/Context;I)V

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
