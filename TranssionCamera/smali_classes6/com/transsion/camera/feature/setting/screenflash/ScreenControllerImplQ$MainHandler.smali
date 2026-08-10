.class Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ$MainHandler;
.super Landroid/os/Handler;
.source "ScreenControllerImplQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ$MainHandler;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;

    .line 117
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 122
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 124
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "context is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 129
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "obj is not instanceof WeakReference"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_1
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 135
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 137
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "context has been GC"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 140
    :cond_2
    instance-of v1, v0, Landroid/content/Context;

    if-nez v1, :cond_3

    .line 141
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "obj is not instanceof Context"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_3
    check-cast v0, Landroid/content/Context;

    .line 147
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 157
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ$MainHandler;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->access$200(Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;Landroid/content/Context;)V

    goto :goto_0

    .line 149
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ$MainHandler;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->access$100(Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
