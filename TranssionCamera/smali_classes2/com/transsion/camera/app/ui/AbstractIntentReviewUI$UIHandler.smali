.class Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;
.super Landroid/os/Handler;
.source "AbstractIntentReviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;
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
            "Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;

    if-nez p0, :cond_0

    .line 127
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage intentReviewUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->access$400(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;Z)V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->access$300(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->access$200(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;Landroid/graphics/Bitmap;)V

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
