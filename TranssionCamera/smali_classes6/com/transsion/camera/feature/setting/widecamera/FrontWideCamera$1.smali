.class Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera$1;
.super Ljava/lang/Object;
.source "FrontWideCamera.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera$1;->this$0:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera$1;->this$0:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPreviewStarted] callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; mNeedShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera$1;->this$0:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->access$100(Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera$1;->this$0:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->access$100(Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 41
    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera$1;->this$0:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->access$102(Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;Z)Z

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera$1;->this$0:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method
