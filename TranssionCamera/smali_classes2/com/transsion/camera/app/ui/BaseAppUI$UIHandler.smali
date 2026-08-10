.class Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;
.super Landroid/os/Handler;
.source "BaseAppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mAppUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/ui/BaseAppUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 1

    .line 2832
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2833
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;->mAppUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 2838
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;->mAppUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/BaseAppUI;

    if-nez p0, :cond_0

    .line 2840
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage cameraAppUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2843
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIHandler handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2844
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2886
    :pswitch_1
    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3400(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V

    goto :goto_0

    .line 2883
    :pswitch_2
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3300(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    goto :goto_0

    .line 2853
    :pswitch_3
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$2300(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    goto :goto_0

    .line 2880
    :pswitch_4
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3200(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    goto :goto_0

    .line 2877
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3100(Lcom/transsion/camera/app/ui/BaseAppUI;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2874
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3000(Lcom/transsion/camera/app/ui/BaseAppUI;IZ)V

    goto :goto_0

    .line 2862
    :pswitch_7
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$2700(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    goto :goto_0

    .line 2871
    :pswitch_8
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$2900(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    goto :goto_0

    .line 2868
    :pswitch_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$300(Lcom/transsion/camera/app/ui/BaseAppUI;I)V

    goto :goto_0

    .line 2865
    :pswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$2800(Lcom/transsion/camera/app/ui/BaseAppUI;I)V

    goto :goto_0

    .line 2856
    :pswitch_b
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$2400(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    .line 2857
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$2500(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    .line 2858
    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$2600(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V

    .line 2859
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onOrientationChanged()V

    goto :goto_0

    .line 2850
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$2200(Lcom/transsion/camera/app/ui/BaseAppUI;IILjava/lang/String;)V

    goto :goto_0

    .line 2846
    :pswitch_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doSetupUIManagers()V

    .line 2847
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onOrientationChanged()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
