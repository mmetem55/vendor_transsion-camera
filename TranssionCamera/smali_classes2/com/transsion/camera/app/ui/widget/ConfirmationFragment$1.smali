.class Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$1;
.super Ljava/lang/Object;
.source "ConfirmationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$1;->this$0:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$1;->this$0:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$1;->this$0:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
