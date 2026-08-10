.class Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;
.super Ljava/lang/Object;
.source "BaseAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraSwitchListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 3079
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V
    .locals 0

    .line 3079
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void
.end method


# virtual methods
.method public onCameraSwitch(Z)V
    .locals 2

    .line 3082
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$4600(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3083
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$4702(Lcom/transsion/camera/app/ui/BaseAppUI;Z)Z

    .line 3084
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->shrinkTopBar()V

    .line 3085
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$4600(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;->onCameraSwitch(Z)V

    .line 3086
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$4702(Lcom/transsion/camera/app/ui/BaseAppUI;Z)Z

    :cond_0
    return-void
.end method
