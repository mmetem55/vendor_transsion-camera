.class Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;
.super Landroid/os/Handler;
.source "Focus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/focus/Focus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/focus/Focus;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/focus/Focus;Landroid/os/Looper;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    .line 253
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage] msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 271
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$600(Lcom/transsion/camera/feature/setting/focus/Focus;Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$200(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$300(Lcom/transsion/camera/feature/setting/focus/Focus;I)V

    goto :goto_0

    .line 264
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$402(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z

    .line 265
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "capturing  RESET_TOUCH_FOCUS  return"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$502(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z

    :goto_1
    return-void
.end method
