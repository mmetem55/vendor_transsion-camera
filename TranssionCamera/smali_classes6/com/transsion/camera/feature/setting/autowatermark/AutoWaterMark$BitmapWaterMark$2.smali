.class Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$2;
.super Ljava/lang/Object;
.source "AutoWaterMark.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$2;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$2;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->access$402(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Z)Z

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$2;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$500(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$2;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$2;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->access$402(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Z)Z

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$2;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$000(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$2;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->access$102(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    .line 269
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
