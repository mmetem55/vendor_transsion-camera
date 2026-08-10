.class final Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;
.super Lcom/transsion/camera/app/ui/ScrollConsumer$State;
.source "ScrollConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ScrollConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpreadState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onEnter()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->spreadFinishedImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1000(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1400(Lcom/transsion/camera/app/ui/ScrollConsumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1402(Lcom/transsion/camera/app/ui/ScrollConsumer;Z)Z

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1500(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    :cond_1
    return-void
.end method

.method public reset()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1500(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    const/4 p0, 0x1

    return p0
.end method

.method public spreadMode()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$402(Lcom/transsion/camera/app/ui/ScrollConsumer;Z)Z

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1500(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method

.method public startScroll()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1600(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method
