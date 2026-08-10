.class Lcom/transsion/camera/app/BaseCameraActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "BaseCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    .line 1463
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1466
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1467
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIPCaptureReceiver, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsResumed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v2, v2, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v0, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-nez v0, :cond_0

    return-void

    .line 1471
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "transsion.action.VIP_FINGERPRINT_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "transsion.action.QUIT_VIP_SELFIE_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "transsion.action.VIP_VOLUME_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    const-string p1, ", isKeyUp:"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v0, "key_finger_print_code"

    .line 1473
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "key_finger_print_end"

    .line 1474
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "key_finger_print_event"

    .line 1475
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/view/KeyEvent;

    .line 1476
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_VIP_FINGERPRINT_KEY, keyCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1477
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->access$2600(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    move-result-object p1

    if-eqz p1, :cond_7

    if-eqz v1, :cond_4

    .line 1479
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$2600(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_1

    .line 1481
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$2600(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_1

    .line 1504
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p0, :cond_7

    .line 1505
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onQuitVIPSelfie()V

    goto :goto_1

    :pswitch_2
    const-string v0, "key_vip_volume_code"

    .line 1487
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "key_vip_volume_end"

    .line 1488
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "key_vip_volume_event"

    .line 1489
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/view/KeyEvent;

    .line 1490
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_VIP_VOLUME_KEY, keyCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 1492
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyDown, keyCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", event.getDownTime():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1494
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->access$2600(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    move-result-object p1

    if-eqz p1, :cond_7

    if-eqz v1, :cond_6

    .line 1496
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$2600(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 1498
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$4;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$2600(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_7
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77a0fdfd -> :sswitch_2
        0x44c7cfd3 -> :sswitch_1
        0x7f90f37b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
