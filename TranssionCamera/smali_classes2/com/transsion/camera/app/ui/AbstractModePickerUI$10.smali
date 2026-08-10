.class Lcom/transsion/camera/app/ui/AbstractModePickerUI$10;
.super Ljava/lang/Object;
.source "AbstractModePickerUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IModuleTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;


# direct methods
.method public static synthetic $r8$lambda$G0Gk96tH39Ct-crYXcpmW2qHJl8(Lcom/transsion/camera/app/ui/AbstractModePickerUI$10;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$10;->lambda$onTransfer$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V
    .locals 0

    .line 1473
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTransfer$0()V
    .locals 0

    .line 1481
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->ringScreenLightUpdateUI()V

    return-void
.end method


# virtual methods
.method public onTransfer(Z)V
    .locals 2

    .line 1476
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mOldValue:Z

    if-eq p1, v1, :cond_0

    .line 1477
    iput-boolean p1, v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mOldValue:Z

    .line 1478
    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4700(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 1479
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$10;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4700(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 1480
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$10$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$10$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI$10;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
