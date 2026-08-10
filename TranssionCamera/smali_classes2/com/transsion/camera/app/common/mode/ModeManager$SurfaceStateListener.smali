.class Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .locals 0

    .line 2008
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager$1;)V
    .locals 0

    .line 2008
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    return-void
.end method

.method private performSurfaceChanged()V
    .locals 3

    .line 2085
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2086
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$800(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->currentThreadIsMain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2087
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2800(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2900(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3000(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$300(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;II)V

    goto :goto_0

    .line 2089
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2090
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2091
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2800(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2092
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2900(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2093
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3000(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2094
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private updateSurface(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .locals 2

    .line 2038
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager$4;->$SwitchMap$com$transsion$camera$app$common$IAppUIListener$ISurfaceStatusListener$SurfaceType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 2050
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2702(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    .line 2051
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2902(Lcom/transsion/camera/app/common/mode/ModeManager;I)I

    .line 2052
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1, p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3002(Lcom/transsion/camera/app/common/mode/ModeManager;I)I

    .line 2053
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2802(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2045
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2602(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    .line 2046
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateBackgroundPreviewSurface(Ljava/lang/Object;II)V

    goto :goto_0

    .line 2040
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3202(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    .line 2041
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateAuxPreviewSurface(Ljava/lang/Object;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSurfaceDestroyReason()I
    .locals 0

    .line 2129
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3400(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .locals 3

    .line 2012
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceAvailable object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", surfaceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2015
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->updateSurface(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    .line 2017
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2500(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2018
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2700(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2019
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2800(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p3

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2900(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p4

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3000(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v0

    invoke-virtual {p2, p3, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMainPreviewDisplay(Ljava/lang/Object;II)V

    goto :goto_0

    .line 2021
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3100(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2022
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3200(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2700(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2023
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2800(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p3

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2900(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p4

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3000(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v0

    invoke-virtual {p2, p3, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMainPreviewDisplay(Ljava/lang/Object;II)V

    goto :goto_0

    .line 2026
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2700(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2027
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2800(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p3

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2900(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p4

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3000(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v0

    invoke-virtual {p2, p3, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMainPreviewDisplay(Ljava/lang/Object;II)V

    .line 2031
    :cond_2
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "surfaceAvailable  mModeSupportBackgroundPreview:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2500(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " mModeSupportAuxPreview:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 2032
    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3100(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " surfaceType:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mBackgroundSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 2033
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mAuxSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 2034
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3200(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mPreviewSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2700(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2031
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .locals 3

    .line 2059
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", surfaceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2062
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->updateSurface(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    .line 2064
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2500(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2065
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2700(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2066
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->performSurfaceChanged()V

    goto :goto_0

    .line 2068
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3100(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2069
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3200(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2700(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2070
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->performSurfaceChanged()V

    goto :goto_0

    .line 2073
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2700(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2074
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->performSurfaceChanged()V

    .line 2078
    :cond_2
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "surfaceChanged mModeSupportBackgroundPreview:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2500(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " mModeSupportAuxPreview:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 2079
    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3100(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " surfaceType:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mBackgroundSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 2080
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mAuxSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 2081
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3200(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mPreviewSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2700(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2078
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V
    .locals 2

    .line 2100
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed  mModeSupportBackgroundPreview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2500(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mModeSupportAuxPreview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 2101
    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3100(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " surfaceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mBackgroundSurfaceReady:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 2102
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mAuxSurfaceReady:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 2103
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3200(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mPreviewSurfaceReady:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2700(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2100
    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2104
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$3300(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    .line 2107
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public surfaceDrawn()V
    .locals 2

    .line 2121
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$800(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2122
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2123
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onSurfaceDrawn()V

    :cond_0
    return-void
.end method

.method public surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V
    .locals 1

    .line 2112
    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    if-ne v0, p1, :cond_0

    .line 2113
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateAuxPreviewSurfaceStatus(Z)V

    goto :goto_0

    .line 2114
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->Background:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    if-ne v0, p1, :cond_1

    .line 2115
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateBackgroundPreviewSurfaceStatus(Z)V

    :cond_1
    :goto_0
    return-void
.end method
