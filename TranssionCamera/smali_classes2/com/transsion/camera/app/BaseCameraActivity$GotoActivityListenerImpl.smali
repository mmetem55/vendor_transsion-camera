.class Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;
.super Ljava/lang/Object;
.source "BaseCameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GotoActivityListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    .line 1280
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V
    .locals 0

    .line 1280
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onGotoActivity(Landroid/content/Intent;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1000

    if-ne v0, p2, :cond_1

    .line 1286
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v1, v1, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x1001

    if-ne v1, p2, :cond_2

    .line 1289
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v2, v2, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    if-eqz v2, :cond_2

    return-void

    .line 1290
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v2}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    const v3, 0x10008000

    .line 1292
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_3
    const-string v3, "isSecureCamera"

    .line 1294
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p2, v2, :cond_6

    if-ne v0, p2, :cond_4

    .line 1297
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1400(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1298
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iput-boolean v3, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    .line 1299
    iget-object v0, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateRingScreenLightState()V

    :cond_4
    if-ne v1, p2, :cond_5

    .line 1302
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iput-boolean v3, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    .line 1304
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1306
    :cond_6
    iget-object p2, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1308
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/BaseCameraActivity;->access$2202(Lcom/transsion/camera/app/BaseCameraActivity;Z)Z

    .line 1309
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
