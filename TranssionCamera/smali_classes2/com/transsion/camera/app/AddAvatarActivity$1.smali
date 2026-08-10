.class Lcom/transsion/camera/app/AddAvatarActivity$1;
.super Ljava/lang/Object;
.source "AddAvatarActivity.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/AddAvatarActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/AddAvatarActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/AddAvatarActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/app/AddAvatarActivity$1;->this$0:Lcom/transsion/camera/app/AddAvatarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/AddAvatarActivity$1;->this$0:Lcom/transsion/camera/app/AddAvatarActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/AddAvatarActivity;->access$000(Lcom/transsion/camera/app/AddAvatarActivity;)Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/app/AddAvatarActivity$1;->this$0:Lcom/transsion/camera/app/AddAvatarActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfirm(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/AddAvatarActivity$1;->this$0:Lcom/transsion/camera/app/AddAvatarActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/AddAvatarActivity;->access$000(Lcom/transsion/camera/app/AddAvatarActivity;)Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/AddAvatarActivity$1;->this$0:Lcom/transsion/camera/app/AddAvatarActivity;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/AddAvatarActivity;->access$100(Lcom/transsion/camera/app/AddAvatarActivity;I)V

    return-void
.end method
