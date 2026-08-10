.class Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;
.super Ljava/lang/Object;
.source "ModePanelUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePanelUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/ui/ModePanelUI$1;)V
    .locals 0

    .line 425
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    return-void
.end method


# virtual methods
.method public onPanelShrink()V
    .locals 1

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$1100(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 v0, 0x4c

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onPanelShrinkEnd()V
    .locals 1

    .line 456
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$1100(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 v0, 0x7e

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onPanelSpreadBack()V
    .locals 1

    .line 446
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$1100(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 v0, 0x49

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onPanelSpreadEnd()V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePanelUI;->modePanelScrollToTop()V

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$1100(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 v0, 0x4b

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onPanelSpreadStart()V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModePanelUI;->modePanelScrollToTop()V

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$1100(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 v0, 0x4a

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method
