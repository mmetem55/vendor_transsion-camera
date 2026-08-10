.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;
.super Ljava/lang/Object;
.source "ModePickerUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelModeChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .locals 0

    .line 937
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V
    .locals 0

    .line 937
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public onSwitchMode(Ljava/lang/String;)V
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1900(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-eqz v0, :cond_0

    .line 943
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateTabSellingPointState()V

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateMode(Ljava/lang/String;)V

    .line 947
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->showMode(Ljava/lang/String;)V

    return-void
.end method
