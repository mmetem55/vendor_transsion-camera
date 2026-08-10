.class Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;
.super Ljava/lang/Object;
.source "FrontSinglePersonSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 41
    invoke-static {}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_zoom_limit_monitor"

    .line 42
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->access$200(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "value_zoom_disable_wide"

    .line 43
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->onClickEvent()Z

    :cond_0
    const-string v0, "key_horizon_switch_wide"

    .line 47
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "value_horizon_switch_wide_id_single_selected"

    .line 48
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->access$300(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)V

    :cond_1
    const-string v0, "front_wide_camera"

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "off"

    .line 54
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->access$400(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->access$600(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->access$500(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2
    const-string v0, "key_ai_group_photo_camera_id"

    .line 59
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "value_ai_group_photo_id_single"

    .line 60
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;->access$300(Lcom/transsion/camera/ui/setting/widecamera/FrontSinglePersonSettingUI;)V

    :cond_3
    return-void
.end method
