.class Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "ClickZoomSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;)V
    .locals 0

    .line 534
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 534
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 537
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_camera_click_zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 542
    :cond_0
    invoke-static {}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_CONFLICT_UI_STATE, value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, "value_facebeauty_ui_on"

    .line 543
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "value_filter_ui_on"

    .line 544
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "value_timelapse_setting_ui_on"

    .line 545
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "value_zoomwheel_view_hide"

    .line 548
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 549
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->access$602(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)Z

    .line 550
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->access$700(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->access$800(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V

    goto :goto_1

    .line 553
    :cond_2
    invoke-static {}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KEY_CONFLICT_UI_STATE return, value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 546
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->access$602(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)Z

    .line 547
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    goto :goto_1

    .line 539
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p0, p2, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->access$400(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    return-void
.end method
