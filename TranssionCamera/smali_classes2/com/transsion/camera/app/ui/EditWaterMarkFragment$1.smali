.class Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;
.super Ljava/lang/Object;
.source "EditWaterMarkFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->showCustomizeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 458
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 450
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->access$200(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 451
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->access$200(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p1

    sget-object p2, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 452
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->access$200(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_0
    return-void
.end method
