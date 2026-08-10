.class Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$StereoWarningCallbackImpl;
.super Ljava/lang/Object;
.source "StereoViewUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StereoWarningCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$StereoWarningCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;)V
    .locals 0

    .line 358
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$StereoWarningCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 0

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$StereoWarningCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$1100(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 362
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$StereoWarningCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$1102(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;I)I

    .line 363
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$StereoWarningCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$1200(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;

    move-result-object p1

    const/16 p2, 0x64

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$StereoWarningCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$1100(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
