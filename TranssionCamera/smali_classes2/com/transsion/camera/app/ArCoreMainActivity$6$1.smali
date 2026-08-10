.class Lcom/transsion/camera/app/ArCoreMainActivity$6$1;
.super Ljava/lang/Object;
.source "ArCoreMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ArCoreMainActivity$6;->onCameraError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ArCoreMainActivity$6;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ArCoreMainActivity$6;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$6$1;->this$1:Lcom/transsion/camera/app/ArCoreMainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 751
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.camera.action.START_SPECIFY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.camera_launch_source"

    const-string v2, "arcore_mode"

    .line 752
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    iget-object v1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$6$1;->this$1:Lcom/transsion/camera/app/ArCoreMainActivity$6;

    iget-object v1, v1, Lcom/transsion/camera/app/ArCoreMainActivity$6;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 754
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$6$1;->this$1:Lcom/transsion/camera/app/ArCoreMainActivity$6;

    iget-object v0, v0, Lcom/transsion/camera/app/ArCoreMainActivity$6;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 755
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$6$1;->this$1:Lcom/transsion/camera/app/ArCoreMainActivity$6;

    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$6;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    sget v0, Lcom/transsion/camera/feature/arcore/R$anim;->exit_ar_anim:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
