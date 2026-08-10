.class Lcom/transsion/camera/ui/setting/BarcodeUI$BarcodeResultCallbackImpl;
.super Ljava/lang/Object;
.source "BarcodeUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/BarcodeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarcodeResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/BarcodeUI;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$BarcodeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI$1;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI$BarcodeResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 226
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$BarcodeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x64

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$BarcodeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$BarcodeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x190

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
