.class final Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;
.super Lcom/transsion/camera/app/ui/ScrollConsumer$State;
.source "ScrollConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ScrollConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onEnter()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$300(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->suitableMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$202(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/scroll/ScrollMode;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$400(Lcom/transsion/camera/app/ui/ScrollConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$402(Lcom/transsion/camera/app/ui/ScrollConsumer;Z)Z

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->spreadMode()V

    :cond_0
    return-void
.end method

.method public spreadMode()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$300(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getBottomUpMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$202(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/scroll/ScrollMode;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$600(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method

.method public startScroll()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$500(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method
