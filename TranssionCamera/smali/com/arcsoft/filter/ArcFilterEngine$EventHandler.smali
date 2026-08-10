.class Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;
.super Landroid/os/Handler;
.source "ArcFilterEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/filter/ArcFilterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/filter/ArcFilterEngine;


# direct methods
.method public constructor <init>(Lcom/arcsoft/filter/ArcFilterEngine;Landroid/os/Looper;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;->this$0:Lcom/arcsoft/filter/ArcFilterEngine;

    .line 594
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg.obj = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;->this$0:Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-static {v1}, Lcom/arcsoft/filter/ArcFilterEngine;->access$100(Lcom/arcsoft/filter/ArcFilterEngine;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->access$200(Ljava/lang/String;)V

    .line 599
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 614
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->access$500(Ljava/lang/String;)V

    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;->this$0:Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->access$400(Lcom/arcsoft/filter/ArcFilterEngine;)Lcom/arcsoft/filter/ArcFilterEngine$CaptureProcessCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 608
    iget-object p0, p0, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;->this$0:Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-static {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->access$400(Lcom/arcsoft/filter/ArcFilterEngine;)Lcom/arcsoft/filter/ArcFilterEngine$CaptureProcessCallback;

    move-result-object p0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p0, v0, v1, p1, v2}, Lcom/arcsoft/filter/ArcFilterEngine$CaptureProcessCallback;->onCaptureProcessDone([BIILandroid/graphics/Bitmap$Config;)V

    :cond_1
    return-void

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;->this$0:Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->access$300(Lcom/arcsoft/filter/ArcFilterEngine;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 602
    iget-object p0, p0, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;->this$0:Lcom/arcsoft/filter/ArcFilterEngine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->access$102(Lcom/arcsoft/filter/ArcFilterEngine;I)I

    :cond_3
    return-void
.end method
