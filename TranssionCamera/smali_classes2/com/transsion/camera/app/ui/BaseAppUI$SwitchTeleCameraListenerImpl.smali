.class Lcom/transsion/camera/app/ui/BaseAppUI$SwitchTeleCameraListenerImpl;
.super Ljava/lang/Object;
.source "BaseAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchTeleCameraListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 2946
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchTeleCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V
    .locals 0

    .line 2946
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchTeleCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void
.end method


# virtual methods
.method public onSwitchLogicalCamera(Ljava/lang/String;)V
    .locals 0

    .line 2949
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchTeleCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3900(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;->onSwitchLogicalCamera(Ljava/lang/String;)V

    return-void
.end method
