.class Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;
.super Landroid/os/Handler;
.source "AbstractHintUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI;
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
            "Lcom/transsion/camera/app/ui/AbstractHintUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI$1;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/AbstractHintUI;

    if-nez p0, :cond_0

    .line 189
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage hintUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 193
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 214
    :pswitch_0
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$600(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 211
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$500(Lcom/transsion/camera/app/ui/AbstractHintUI;Z)V

    goto :goto_0

    .line 208
    :pswitch_2
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$400(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    goto :goto_0

    .line 205
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$300(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 202
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$200(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 197
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$100(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
