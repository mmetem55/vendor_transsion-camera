.class Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;
.super Ljava/lang/Object;
.source "BaseSecondZoomItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "key_wide_camera_item_seleccted"

    .line 40
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "value_wide_camera_item_micro_cam_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "value_wide_camera_item_wide_cam_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 45
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->access$202(Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseSecondZoomItemUI;->updateTextEntryView()V

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x9c5ace4 -> :sswitch_2
        0x4c2105ed -> :sswitch_1
        0x4e25a7fb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
