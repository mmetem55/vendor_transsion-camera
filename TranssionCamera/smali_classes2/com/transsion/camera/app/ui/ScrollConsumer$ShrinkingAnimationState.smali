.class final Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingAnimationState;
.super Lcom/transsion/camera/app/ui/ScrollConsumer$State;
.source "ScrollConsumer.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ScrollConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShrinkingAnimationState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingAnimationState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 401
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingAnimationState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1000(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method

.method onEnter()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingAnimationState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startShrinkingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    return-void
.end method

.method public reset()Z
    .locals 1

    .line 416
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingAnimationState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$402(Lcom/transsion/camera/app/ui/ScrollConsumer;Z)Z

    const/4 p0, 0x1

    return p0
.end method
