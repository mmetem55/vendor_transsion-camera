.class Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;
.super Ljava/lang/Object;
.source "WideAngleItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideStatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;


# direct methods
.method public static synthetic $r8$lambda$QpCX-8NcbL4lLMR6gnFvqI8Fe54(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->lambda$onStatusChanged$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b-gxcjppqwFSfU9zcWsUQiCMKto(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->lambda$onStatusChanged$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$feb2LNHqRhDRgUTJ9uwLoG0OHBo(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->lambda$onStatusChanged$2(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0(Ljava/lang/String;)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1900(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$1(Ljava/lang/String;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1900(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$2(Ljava/lang/String;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1900(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 65
    invoke-static {}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_zoom_limit_monitor"

    .line 66
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "off"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "value_zoom_enable_tele"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "value_zoom_enable_wide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->onClickEvent()Z

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$200(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$300(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string v0, "key_wide_camera_item_seleccted"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "on"

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "value_wide_camera_item_multiple_cam_seleccted"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "value_wide_camera_item_micro_cam_seleccted"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v5, "value_wide_camera_item_second_zoom_seleccted"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$900(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1000(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1100(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)V

    goto :goto_2

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$400(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$500(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$600(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$800(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$700(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_7
    :goto_2
    const-string v0, "wide_camera"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 100
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1200(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1300(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$700(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_8
    const-string v0, "key_camera_zoom"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1400(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1500(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1600(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto/16 :goto_5

    .line 116
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$2000(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$2100(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$2200(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->getZoomRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p2, v0, :cond_a

    .line 119
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$2300(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 123
    :cond_a
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p2, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1900(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)V

    .line 125
    :goto_3
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$2400(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_6

    .line 127
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$2500(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10039c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p2, v0, :cond_c

    .line 129
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$2600(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 133
    :cond_c
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p2, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1900(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)V

    .line 135
    :goto_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$2700(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_6

    .line 109
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1700(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p2, v0, :cond_e

    .line 111
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1800(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 113
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1900(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)V

    :cond_f
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xcc955a9 -> :sswitch_3
        0x4c2105ed -> :sswitch_2
        0x4e25a7fb -> :sswitch_1
        0x66498399 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
