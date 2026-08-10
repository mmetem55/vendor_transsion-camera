.class Lcom/transsion/camera/feature/setting/fusion/Fusion$1;
.super Ljava/lang/Object;
.source "Fusion.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/fusion/Fusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/fusion/Fusion;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->access$000(Lcom/transsion/camera/feature/setting/fusion/Fusion;)Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->updatePreviewState(Z)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->access$200(Lcom/transsion/camera/feature/setting/fusion/Fusion;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->access$000(Lcom/transsion/camera/feature/setting/fusion/Fusion;)Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->updatePreviewState(Z)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->access$100(Lcom/transsion/camera/feature/setting/fusion/Fusion;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$1;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method
