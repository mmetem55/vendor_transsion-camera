.class Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;
.super Ljava/lang/Object;
.source "HumanDetectionUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HumanResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$1;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->access$300(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->access$400(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->access$300(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 208
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->access$300(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1, p2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method
