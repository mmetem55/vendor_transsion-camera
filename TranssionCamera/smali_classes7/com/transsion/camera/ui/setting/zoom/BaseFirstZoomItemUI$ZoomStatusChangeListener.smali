.class Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;
.super Ljava/lang/Object;
.source "BaseFirstZoomItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomStatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "key_zoom_limit_monitor"

    .line 40
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "value_zoom_disable_wide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->onClickEvent()Z

    :cond_1
    :goto_0
    const-string v0, "key_wide_camera_item_seleccted"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "value_wide_camera_item_micro_cam_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "value_wide_camera_item_wide_cam_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "value_wide_camera_item_second_zoom_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    move p1, v2

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 63
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$700(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 51
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$200(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    const-string p2, "60"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 54
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->updateTextEntryView()V

    goto :goto_2

    .line 59
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->access$600(Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseFirstZoomItemUI;->updateTextEntryView()V

    :cond_7
    :goto_2
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
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
