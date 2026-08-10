.class Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;
.super Ljava/lang/Object;
.source "OverlayUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/OverlayUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideCameraListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;Lcom/transsion/camera/app/ui/manager/OverlayUIManager$1;)V
    .locals 0

    .line 589
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchWideCamera(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
