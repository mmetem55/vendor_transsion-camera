.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;
.super Ljava/lang/Object;
.source "DualVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTouchInfoCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;)V
    .locals 0

    .line 765
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V

    return-void
.end method


# virtual methods
.method public isExitPreviewPopwinow()Z
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$4000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->onPreviewClick()Z

    move-result p0

    return p0
.end method

.method public sendScaleArea()V
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    .line 782
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    .line 783
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 786
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    const-string v0, "device_slave"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchDeviceParameters(Ljava/lang/String;)V

    goto :goto_1

    .line 784
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    const-string v0, "device_main"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchDeviceParameters(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public sendSingleUpAreaName(Ljava/lang/String;)V
    .locals 3

    const-string v0, "device_slave"

    .line 769
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    .line 770
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    .line 771
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0x71

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x70

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 776
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchDeviceParameters(Ljava/lang/String;)V

    return-void
.end method
