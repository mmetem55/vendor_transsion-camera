.class final Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingBackAnimationState;
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
    name = "SpreadingBackAnimationState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingBackAnimationState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingBackAnimationState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$1000(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method

.method onEnter()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingBackAnimationState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->access$200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startSpreadingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    return-void
.end method
