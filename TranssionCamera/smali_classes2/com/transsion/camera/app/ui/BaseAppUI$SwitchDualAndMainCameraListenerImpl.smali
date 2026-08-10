.class Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;
.super Ljava/lang/Object;
.source "BaseAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchDualAndMainCameraListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 2974
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V
    .locals 0

    .line 2974
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void
.end method
