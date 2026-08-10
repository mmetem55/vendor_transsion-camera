.class Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;
.super Landroid/os/Handler;
.source "LiveResultUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;
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
            "Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .locals 1

    .line 203
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 204
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    if-nez p0, :cond_0

    .line 211
    invoke-static {}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage liveResultUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 215
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 225
    :pswitch_0
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$900(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    goto :goto_0

    .line 221
    :pswitch_1
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$700(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    .line 222
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$800(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    goto :goto_0

    .line 217
    :pswitch_2
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$500(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    .line 218
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$600(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
