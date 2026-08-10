.class Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;
.super Landroid/os/Handler;
.source "BaseZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;
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
            "Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$1;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    if-nez v0, :cond_0

    .line 126
    iget-object p0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage zoomUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Z)V

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Z)V

    goto :goto_0

    .line 135
    :pswitch_2
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$000(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 138
    :cond_1
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomUI(Z)V

    goto :goto_0

    .line 132
    :pswitch_3
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomUI(Z)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-boolean p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez p1, :cond_3

    .line 150
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 151
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 152
    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$200(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;I)V

    const-wide/16 v2, 0x14

    .line 153
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->sendZoomUIMessage(Z)V

    .line 156
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
