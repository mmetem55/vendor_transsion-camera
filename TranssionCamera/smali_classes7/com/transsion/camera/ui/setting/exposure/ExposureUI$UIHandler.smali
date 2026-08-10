.class Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;
.super Landroid/os/Handler;
.source "ExposureUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/ExposureUI;
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
            "Lcom/transsion/camera/ui/setting/exposure/ExposureUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .locals 1

    .line 128
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/ui/setting/exposure/ExposureUI$1;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    if-nez p0, :cond_0

    .line 136
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage exposureUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 140
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$400(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$800(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$300(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 145
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$400(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    .line 146
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$500(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 147
    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$502(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)Z

    .line 148
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$600(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_exposure_scroll_start_and_hide"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "exposure_hide"

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    :cond_2
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$700()Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x9a

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
