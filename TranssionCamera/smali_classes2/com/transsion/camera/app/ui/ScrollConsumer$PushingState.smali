.class final Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;
.super Lcom/transsion/camera/app/ui/ScrollConsumer$State;
.source "ScrollConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ScrollConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PushingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onEnter()V
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startPushing()V

    return-void
.end method

.method public reset()Z
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1500(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    const/4 p0, 0x1

    return p0
.end method

.method public scroll(FF)V
    .locals 1

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$700(Lcom/transsion/camera/app/ui/ScrollConsumer;)F

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$800(Lcom/transsion/camera/app/ui/ScrollConsumer;)F

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->pushing(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1500(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    :cond_0
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->stopPushing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1500(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1700(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    :goto_0
    return-void
.end method
