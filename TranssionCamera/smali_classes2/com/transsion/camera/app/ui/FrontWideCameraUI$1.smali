.class Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;
.super Ljava/lang/Object;
.source "FrontWideCameraUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/FrontWideCameraUI;
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
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged, key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_conflict_ui_state"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    .line 75
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "value_facebeauty_ui_on"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v4, "value_facebeauty_ui_off"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v4, "value_videoportrait_bar_show"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v4, "value_videoportrait_bar_hide"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "value_filter_ui_off_no_show"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :sswitch_5
    const-string v4, "value_filter_ui_on"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0

    :sswitch_6
    const-string v4, "value_filter_ui_off"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, v3}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$102(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    goto/16 :goto_4

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$102(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    goto/16 :goto_4

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, v3}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$202(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    goto/16 :goto_4

    .line 101
    :pswitch_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$202(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    goto :goto_4

    .line 92
    :pswitch_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$002(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    goto :goto_4

    .line 77
    :pswitch_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, v3}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$002(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    goto :goto_4

    .line 81
    :pswitch_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$002(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    .line 82
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_1
    if-eqz v0, :cond_9

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$000(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$100(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$200(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 87
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iput-boolean v3, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    goto :goto_3

    .line 84
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iput-boolean v2, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    .line 85
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    .line 89
    :goto_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    .line 123
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$300(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080962

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$300(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f080961

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "key_ai_group_photo_camera_id"

    .line 127
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0xc8

    if-eqz v5, :cond_c

    const-string v5, "value_ai_group_photo_id_multiple"

    .line 129
    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 130
    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v2

    aput-object v4, v1, v3

    invoke-direct {v5, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 132
    :cond_b
    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    invoke-direct {v5, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 134
    :goto_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$400(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_c
    const-string v1, "key_wide_camera_item_seleccted"

    .line 138
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object v1, p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    .line 139
    invoke-static {p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$500(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-le p1, v3, :cond_d

    .line 140
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p1, v6}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$600(Lcom/transsion/camera/app/ui/FrontWideCameraUI;I)V

    const-string p1, "value_wide_camera_item_single_cam_seleccted"

    .line 141
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$400(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71d81a63 -> :sswitch_6
        -0x66c4e80f -> :sswitch_5
        -0x593d69e7 -> :sswitch_4
        -0x24caae7b -> :sswitch_3
        -0x24c5b0c0 -> :sswitch_2
        0x6a3b3dc -> :sswitch_1
        0x18fd05d2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
