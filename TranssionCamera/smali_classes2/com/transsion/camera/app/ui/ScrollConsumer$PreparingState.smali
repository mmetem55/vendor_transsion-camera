.class final Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;
.super Lcom/transsion/camera/app/ui/ScrollConsumer$State;
.source "ScrollConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ScrollConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreparingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public reset()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1000(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    const/4 p0, 0x1

    return p0
.end method

.method public scroll(FF)V
    .locals 2

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->isNull()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$300(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$700(Lcom/transsion/camera/app/ui/ScrollConsumer;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$800(Lcom/transsion/camera/app/ui/ScrollConsumer;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->suitableMode(II)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$202(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/scroll/ScrollMode;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->isNull()Z

    move-result p1

    if-nez p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$900(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    :cond_1
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1000(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method
