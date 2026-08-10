.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;
.super Landroid/os/Handler;
.source "ModePickerUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .locals 1

    .line 1019
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1020
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V
    .locals 0

    .line 1015
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1025
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-nez p0, :cond_0

    .line 1027
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",but mgr is null,return."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1030
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    const/4 v3, 0x4

    if-eq p1, v1, :cond_2

    if-eq p1, v3, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1057
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->playMoreModeGuideAnim()V

    goto :goto_0

    .line 1046
    :cond_2
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowState(ZZ)V

    .line 1047
    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1202(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z

    const-wide/16 v0, 0x8fc

    .line 1048
    invoke-static {p0, v3, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2700(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;IJ)V

    goto :goto_0

    .line 1053
    :cond_3
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowState(ZZ)V

    .line 1054
    invoke-static {p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1202(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z

    goto :goto_0

    .line 1040
    :cond_4
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->shrinkModePanel()V

    .line 1041
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowState(ZZ)V

    const-wide/16 v2, 0xce4

    .line 1042
    invoke-static {p0, v1, v2, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2700(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;IJ)V

    goto :goto_0

    .line 1032
    :cond_5
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModePanelGuideEnable(Z)V

    .line 1033
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->spreadModePanel()V

    .line 1034
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2600(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p1

    const/16 v1, 0x5c

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1035
    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1202(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z

    const-wide/16 v1, 0x992

    .line 1036
    invoke-static {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2700(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;IJ)V

    :goto_0
    return-void
.end method
