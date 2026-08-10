.class Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$2;
.super Ljava/lang/Object;
.source "ScreenFlashParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Ljava/lang/String;)V
    .locals 3

    .line 247
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModuleTransferManager:onCameraChange --->>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$500(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$000(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onModeChange(Ljava/lang/String;)V
    .locals 3

    .line 241
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModuleTransferManager:onModeChange --->>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$500(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$000(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method
