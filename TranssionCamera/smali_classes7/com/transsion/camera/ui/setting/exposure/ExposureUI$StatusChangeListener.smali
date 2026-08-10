.class Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "ExposureUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/ExposureUI;
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/ui/setting/exposure/ExposureUI$1;)V
    .locals 0

    .line 768
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 768
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 772
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusChangeListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_focus_state"

    .line 773
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "on"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x65

    const/16 v7, 0x64

    const/16 v8, 0x66

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$900(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 774
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v1, v2

    goto :goto_1

    :sswitch_0
    const-string v0, "ACTIVE_HIDE_FOCUSE_VIEW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :sswitch_1
    const-string v0, "ACTIVE_FOCUSED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "ACTIVE_UNFOCUSED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 788
    :pswitch_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 789
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 790
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 777
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1000(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 783
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 784
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1200(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)J

    move-result-wide v1

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 785
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1300(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;J)V

    goto/16 :goto_4

    :cond_4
    const-string v0, "key_ae_af_lock_state"

    .line 797
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 798
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 799
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 802
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0, v5}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1402(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)Z

    .line 803
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0, v4}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1500(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V

    goto/16 :goto_4

    :cond_5
    const-string v0, "key_face_view_state"

    .line 804
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "key_eye_view_state"

    .line 805
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "key_human_view_state"

    .line 806
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "key_animal_eye_view_state"

    .line 807
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 808
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_2
    move v1, v2

    goto :goto_3

    :sswitch_3
    const-string v0, "show_animal_eye_view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x3

    goto :goto_3

    :sswitch_4
    const-string v0, "show_human_view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :sswitch_5
    const-string v0, "show_face_view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v4

    goto :goto_3

    :sswitch_6
    const-string v0, "show_eye_view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    move v1, v5

    :cond_a
    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 813
    :pswitch_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$900(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 814
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 815
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 816
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    :goto_4
    const-string v0, "key_video_frame"

    .line 821
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_d

    .line 822
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 823
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1700(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1602(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 824
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1600(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateRestrictRect(Landroid/graphics/Rect;)V

    .line 826
    :cond_c
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1800(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 827
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1800(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateRestrictRect(Landroid/graphics/Rect;)V

    :cond_d
    const-string v0, "key_restrict_area"

    .line 830
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 831
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 832
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1900(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1602(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 833
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1600(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1802(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_5

    .line 835
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1700(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1602(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 837
    :goto_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    .line 838
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1600(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateRestrictRect(Landroid/graphics/Rect;)V

    .line 839
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$400(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    :cond_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c1b7ca5 -> :sswitch_2
        0x5664cb1e -> :sswitch_1
        0x76eb3db3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x162d82f5 -> :sswitch_6
        0x25dd8c85 -> :sswitch_5
        0x674cf0f9 -> :sswitch_4
        0x6b915594 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
