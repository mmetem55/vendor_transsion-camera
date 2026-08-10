.class Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;
.super Landroid/os/Handler;
.source "AbstractModeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# static fields
.field private static final MSG_HIDE_PROCESSING_ANIM:I = 0xcb

.field private static final MSG_INFLATE_VIEW:I = 0xc8

.field private static final MSG_SHOW_ENDING_ANIM:I = 0xca

.field private static final MSG_SHOW_PROCESSING_ANIM:I = 0xc9


# instance fields
.field private final mModeUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V
    .locals 1

    .line 260
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 261
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;->mModeUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$UIHandler;->mModeUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-nez p0, :cond_0

    .line 268
    sget-object p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage ModeUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 271
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIHandler handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 283
    :pswitch_0
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->access$500(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->access$400(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    goto :goto_0

    .line 277
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->access$300(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Z)V

    goto :goto_0

    .line 274
    :pswitch_3
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->access$200(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
