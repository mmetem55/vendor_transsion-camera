.class public Lcom/transsion/camera/app/ui/mode/macro/MacroUI;
.super Ljava/lang/Object;
.source "MacroUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/macro/MacroUI$UIHandler;
    }
.end annotation


# instance fields
.field private mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mIsWideCamUISupport:Z

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 19
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 28
    new-instance p2, Lcom/transsion/camera/app/ui/mode/macro/MacroUI$UIHandler;

    invoke-direct {p2, p0, p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/mode/macro/MacroUI;Lcom/transsion/camera/app/ui/mode/macro/MacroUI;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mMainHandler:Landroid/os/Handler;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "is_widecam_item_ui_support_in_widecam"

    .line 29
    invoke-static {p1, v0, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mIsWideCamUISupport:Z

    .line 31
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100194

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 33
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 34
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mIsWideCamUISupport:Z

    if-eqz p2, :cond_0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100193

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100197

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/mode/macro/MacroUI;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->doShowHint()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/mode/macro/MacroUI;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->doHideHint()V

    return-void
.end method

.method private doHideHint()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private doShowHint()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideHint()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showHint()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
