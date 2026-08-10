.class Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;
.super Ljava/lang/Object;
.source "InteractiveUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideCameraListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchWideCamera(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
