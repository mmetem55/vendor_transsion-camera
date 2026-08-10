.class Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;
.super Ljava/lang/Object;
.source "AbstractShutterUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnShutterButtonListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;Lcom/transsion/camera/app/ui/AbstractShutterUI$1;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    return-void
.end method


# virtual methods
.method public onShutterCancel()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterCancel()V

    :cond_0
    return-void
.end method

.method public onShutterClick()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterClick(I)V

    :cond_0
    return-void
.end method

.method public onShutterDown()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterDown()V

    :cond_0
    return-void
.end method

.method public onShutterLongClick()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterLongClick(I)V

    :cond_0
    return-void
.end method

.method public onShutterUp()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterUp(I)V

    :cond_0
    return-void
.end method
