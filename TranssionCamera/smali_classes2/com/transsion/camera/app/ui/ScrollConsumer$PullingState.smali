.class final Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;
.super Lcom/transsion/camera/app/ui/ScrollConsumer$State;
.source "ScrollConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ScrollConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PullingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onEnter()V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startPulling()V

    return-void
.end method

.method public reset()Z
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->stopPulling()Z

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1100(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    const/4 p0, 0x1

    return p0
.end method

.method public scroll(FF)V
    .locals 1

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$700(Lcom/transsion/camera/app/ui/ScrollConsumer;)F

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$800(Lcom/transsion/camera/app/ui/ScrollConsumer;)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->pulling(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$600(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    :cond_0
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->stopPulling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$600(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1100(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    :goto_0
    return-void
.end method
