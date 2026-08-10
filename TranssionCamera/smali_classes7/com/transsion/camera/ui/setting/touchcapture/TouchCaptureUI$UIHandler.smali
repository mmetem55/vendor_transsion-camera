.class Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;
.super Landroid/os/Handler;
.source "TouchCaptureUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;
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
            "Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)V
    .locals 1

    .line 207
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;

    if-nez p0, :cond_0

    .line 215
    invoke-static {}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage touchCaptureUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 221
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->access$300(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)V

    :goto_0
    return-void
.end method
