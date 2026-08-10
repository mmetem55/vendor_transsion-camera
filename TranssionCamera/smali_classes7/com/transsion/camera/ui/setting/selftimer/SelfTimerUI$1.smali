.class Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;
.super Ljava/lang/Object;
.source "SelfTimerUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 513
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 516
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyy [onStatusChanged] key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "key_shutter_sound"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_0

    :sswitch_1
    const-string v0, "key_start_gesture_self_timer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "key_self_timer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "key_start_self_timer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 519
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->access$602(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Z)Z

    .line 520
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->access$700(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    goto :goto_1

    .line 530
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->access$902(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;I)I

    .line 531
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0, p2, v1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->access$1000(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;I)V

    goto :goto_1

    .line 523
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->access$800(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;)V

    goto :goto_1

    .line 526
    :pswitch_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->access$902(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;I)I

    .line 527
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0, p2, v2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->access$1000(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2cf55e6f -> :sswitch_3
        0x30a2e672 -> :sswitch_2
        0x5d403225 -> :sswitch_1
        0x6467fc5d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
