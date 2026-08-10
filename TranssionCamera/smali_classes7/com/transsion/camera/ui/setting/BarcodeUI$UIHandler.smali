.class Lcom/transsion/camera/ui/setting/BarcodeUI$UIHandler;
.super Landroid/os/Handler;
.source "BarcodeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/BarcodeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/ui/setting/BarcodeUI;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    .line 566
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 567
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI$1;)V
    .locals 0

    .line 562
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/BarcodeUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/BarcodeUI;

    if-nez v0, :cond_0

    .line 574
    invoke-static {}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$1400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage barcodeUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 578
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 586
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 587
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 583
    :pswitch_1
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$1600(Lcom/transsion/camera/ui/setting/BarcodeUI;)V

    goto :goto_0

    .line 580
    :pswitch_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$1500(Lcom/transsion/camera/ui/setting/BarcodeUI;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
