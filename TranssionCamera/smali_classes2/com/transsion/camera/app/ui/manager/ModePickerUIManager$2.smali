.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;
.super Ljava/lang/Object;
.source "ModePickerUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public down(FF)V
    .locals 0

    return-void
.end method

.method public pulling(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public stopPulling()Z
    .locals 1

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 v0, 0x7a

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 p0, 0x0

    return p0
.end method
