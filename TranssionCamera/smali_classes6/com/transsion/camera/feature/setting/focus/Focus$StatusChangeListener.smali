.class Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/focus/Focus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/focus/Focus;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/focus/Focus;Lcom/transsion/camera/feature/setting/focus/Focus$1;)V
    .locals 0

    .line 606
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 606
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 610
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "screen_form_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "key_exposure_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "key_manual_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "key_exposure_scroll_start_and_hide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_0

    :sswitch_4
    const-string v0, "capture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    const-string v0, ", needResetTouchType:"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 645
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusChangeListener, SCREEN_FORM_STATE value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, "form_change_start"

    .line 646
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 647
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 648
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->resetAutoFocusTriggered()V

    goto/16 :goto_1

    .line 612
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {v0, p2}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1402(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z

    .line 613
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusChangeListener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1400(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 639
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ManualFocus onStatusChanged, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isInitValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1700(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    .line 640
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1500(Lcom/transsion/camera/feature/setting/focus/Focus;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 641
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1800(Lcom/transsion/camera/feature/setting/focus/Focus;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 628
    :pswitch_3
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEmptyMessage:1, value:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", needResetFocusState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    .line 629
    invoke-static {v3}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$500(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1500(Lcom/transsion/camera/feature/setting/focus/Focus;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 630
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$500(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "exposure_hide"

    .line 631
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 632
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1500(Lcom/transsion/camera/feature/setting/focus/Focus;)I

    move-result p1

    const-wide/16 v0, 0x0

    invoke-static {p0, v2, p1, v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1600(Lcom/transsion/camera/feature/setting/focus/Focus;IIJ)V

    goto :goto_1

    :cond_5
    const-string p1, "scroll_start"

    .line 633
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 634
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$700(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :pswitch_4
    const-string p1, "capture_start"

    .line 616
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 617
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$202(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z

    goto :goto_1

    :cond_6
    const-string p1, "capture_end"

    .line 618
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 619
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$202(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z

    .line 620
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$400(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 621
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$402(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z

    .line 622
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "capturing  end  doResetTouchFocus, needResetTouchType:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1500(Lcom/transsion/camera/feature/setting/focus/Focus;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 623
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1500(Lcom/transsion/camera/feature/setting/focus/Focus;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$300(Lcom/transsion/camera/feature/setting/focus/Focus;I)V

    :cond_7
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x76a61da8 -> :sswitch_4
        -0x5577d1bf -> :sswitch_3
        -0x3e826f01 -> :sswitch_2
        0x1965e0fd -> :sswitch_1
        0x50b5eb09 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
