.class Lcom/transsion/camera/app/ui/BaseAppUI$SwitchWideCameraListenerImpl;
.super Ljava/lang/Object;
.source "BaseAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchWideCameraListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 2914
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchWideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V
    .locals 0

    .line 2914
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchWideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void
.end method


# virtual methods
.method public onExchangeWideAndMacro()V
    .locals 0

    .line 2929
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchWideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3600(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onExchangeWideAndMacro()V

    return-void
.end method

.method public onSwitchLogicalCamera(Ljava/lang/String;)V
    .locals 2

    .line 2934
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchWideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3600(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchLogicalCamera(Ljava/lang/String;)V

    .line 2935
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchLogicalCamera,specialCameraChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchWideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3700(Lcom/transsion/camera/app/ui/BaseAppUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchOpticalZoomCamera()V
    .locals 3

    .line 2923
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchWideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3600(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchOpticalZoomCamera()V

    .line 2924
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchOpticalZoomCamera,specialCameraChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchWideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3700(Lcom/transsion/camera/app/ui/BaseAppUI;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchWideCamera(Ljava/lang/String;)V
    .locals 2

    .line 2917
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchWideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3600(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchWideCamera(Ljava/lang/String;)V

    .line 2918
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchWideCamera,specialCameraChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchWideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3700(Lcom/transsion/camera/app/ui/BaseAppUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
