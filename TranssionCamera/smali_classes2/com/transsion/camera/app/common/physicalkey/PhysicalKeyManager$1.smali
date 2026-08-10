.class Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;
.super Ljava/lang/Object;
.source "PhysicalKeyManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isShutterEvent(I)Z
    .locals 3

    const/16 v0, 0x1b

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    move v1, v2

    goto :goto_1

    .line 220
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$200(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$200(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    const-string p1, "key_volume_key"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 223
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Shutter"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isZoomEvent(I)Z
    .locals 2

    const/16 v0, 0x18

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$200(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$200(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    const-string p1, "key_volume_key"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 249
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Zoom"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    move v1, p0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public onClick(I)V
    .locals 4

    .line 175
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "singleClick.........."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$100(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomClick(Z)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isShutterEvent(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x1f4

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getPhysicalLastClickTime()[J

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J[J)Z

    move-result p1

    if-nez p1, :cond_2

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$100(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;->onShutterClick(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLongPress(I)V
    .locals 3

    .line 196
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onZoomScaling] longPress ongoing.......isZoomEvent(keyCode):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$100(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaling(Z)V

    :cond_1
    return-void
.end method

.method public onLongPressCancel(I)V
    .locals 2

    .line 205
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "longPress cancel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$100(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaleEnd(Z)V

    goto :goto_1

    .line 209
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isShutterEvent(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$100(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;->onShutterLongClickEnd()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onLongPressStart(I)V
    .locals 2

    .line 185
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "longPress start......."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$100(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaleStart(Z)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isShutterEvent(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$100(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;->onShutterLongClickStart(I)V

    :cond_2
    :goto_0
    return-void
.end method
