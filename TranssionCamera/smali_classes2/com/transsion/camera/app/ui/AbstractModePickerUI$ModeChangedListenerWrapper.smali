.class Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeChangedListenerWrapper;
.super Ljava/lang/Object;
.source "AbstractModePickerUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangedListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 928
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeChangedListenerWrapper;->mDelegate:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method


# virtual methods
.method public onSwitchMode(Ljava/lang/String;)V
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeChangedListenerWrapper;->mDelegate:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$2502(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Ljava/lang/String;)Ljava/lang/String;

    .line 935
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$2600(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/mode/ModeOrderProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeChangedListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
