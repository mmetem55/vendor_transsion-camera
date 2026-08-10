.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoMsgCallback;
.super Ljava/lang/Object;
.source "DualVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDualVideoMsgCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoMsgCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;)V
    .locals 0

    .line 710
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoMsgCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V

    return-void
.end method


# virtual methods
.method public notifySwitchScreenEnd()V
    .locals 2

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoMsgCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$2400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "notifySwitchScreenEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 715
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoMsgCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$2500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x73

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method
