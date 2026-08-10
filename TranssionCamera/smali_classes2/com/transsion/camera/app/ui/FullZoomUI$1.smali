.class Lcom/transsion/camera/app/ui/FullZoomUI$1;
.super Ljava/lang/Object;
.source "FullZoomUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/FullZoomUI;
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
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/FullZoomUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_d

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 104
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "value_timelapse_setting_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string p1, "value_timelapse_setting_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string p1, "value_zoomwheel_view_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string p1, "value_zoomwheel_view_hide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string p1, "value_facebeauty_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string p1, "value_facebeauty_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string p1, "value_videoportrait_bar_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string p1, "value_videoportrait_bar_hide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_8
    const-string p1, "value_filter_ui_off_no_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string p1, "value_filter_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    move v1, v3

    goto :goto_0

    :sswitch_a
    const-string p1, "value_filter_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 155
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    .line 156
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    goto/16 :goto_1

    .line 159
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iput-boolean v3, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    .line 160
    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    goto/16 :goto_1

    .line 148
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$602(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    goto/16 :goto_1

    .line 151
    :pswitch_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$602(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    goto/16 :goto_1

    .line 134
    :pswitch_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget-object p2, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 135
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$502(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$202(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    goto/16 :goto_1

    .line 141
    :pswitch_5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget-object p2, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$502(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$202(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    goto/16 :goto_1

    .line 117
    :pswitch_6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$302(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$202(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget-object p2, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    goto/16 :goto_1

    .line 124
    :pswitch_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$400(Lcom/transsion/camera/app/ui/FullZoomUI;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    .line 127
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$302(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$202(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget-object p2, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_10

    .line 130
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    goto :goto_1

    .line 106
    :pswitch_8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$102(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$202(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V

    goto :goto_1

    .line 112
    :pswitch_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$102(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$202(Lcom/transsion/camera/app/ui/FullZoomUI;Z)Z

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    goto :goto_1

    :cond_d
    const-string p1, "value_wide_camera_item_first_zoom_seleccted"

    .line 95
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$000(Lcom/transsion/camera/app/ui/FullZoomUI;I)V

    goto :goto_1

    :cond_e
    const-string p1, "value_wide_camera_item_second_zoom_seleccted"

    .line 97
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p0, v3}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$000(Lcom/transsion/camera/app/ui/FullZoomUI;I)V

    goto :goto_1

    :cond_f
    const-string p1, "value_wide_camera_item_wide_cam_seleccted"

    .line 99
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$000(Lcom/transsion/camera/app/ui/FullZoomUI;I)V

    :cond_10
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71d81a63 -> :sswitch_a
        -0x66c4e80f -> :sswitch_9
        -0x593d69e7 -> :sswitch_8
        -0x24caae7b -> :sswitch_7
        -0x24c5b0c0 -> :sswitch_6
        0x6a3b3dc -> :sswitch_5
        0x18fd05d2 -> :sswitch_4
        0x275812b7 -> :sswitch_3
        0x275d1072 -> :sswitch_2
        0x47a78cc0 -> :sswitch_1
        0x6568806e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
