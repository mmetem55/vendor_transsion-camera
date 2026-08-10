.class Lcom/transsion/camera/app/common/mode/ModeManager$1;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
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
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 182
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "key_google_lens_click"

    .line 185
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "action_barcode_activity_start"

    .line 186
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_gallery_activity_start"

    .line 187
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_movie_review_activity_start"

    .line 188
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_sleep_activity_start"

    .line 189
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$500(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v2, "need_memory_zoom_value"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v2, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$602(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    :cond_1
    const-string v0, "key_restore_settings_notify_ui"

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "begin"

    .line 195
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v2, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$702(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$800(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getPreviewSize()Landroid/util/Size;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$902(Lcom/transsion/camera/app/common/mode/ModeManager;Landroid/util/Size;)Landroid/util/Size;

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$800(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v2, 0x13

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_1

    :cond_3
    const-string v0, "end"

    .line 201
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1100(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    .line 203
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v2, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$702(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    :goto_1
    const-string v0, "key_wide_camera_item_seleccted"

    .line 206
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const-string v0, "value_wide_camera_item_multiple_cam_seleccted_by_user"

    .line 207
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1202(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    :cond_5
    const-string v0, "key_ai_group_photo_camera_id"

    .line 211
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "value_ai_group_photo_id_multiple"

    .line 212
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1302(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    goto :goto_2

    :cond_6
    const-string v0, "value_ai_group_photo_id_single"

    .line 214
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1302(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    :cond_7
    :goto_2
    const-string v0, "key_video_camera_change"

    .line 218
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1400(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)V

    :cond_8
    return-void
.end method
