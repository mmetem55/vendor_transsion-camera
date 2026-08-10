.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$mStatusChangeListener;
.super Ljava/lang/Object;
.source "ModePickerUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mStatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V
    .locals 0

    .line 630
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$mStatusChangeListener;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 630
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$mStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_wide_camera_item_seleccted"

    .line 633
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 634
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "value_wide_camera_item_micro_cam_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "value_wide_camera_item_wide_cam_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "value_wide_camera_item_second_zoom_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 639
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1200(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 640
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->hide()V

    goto :goto_1

    :cond_4
    const-string v0, "key_restore_settings_notify_ui"

    .line 644
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "end"

    .line 645
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 646
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 647
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$mStatusChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->restoreView()V

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xcc955a9 -> :sswitch_3
        -0x9c5ace4 -> :sswitch_2
        0x4c2105ed -> :sswitch_1
        0x4e25a7fb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
