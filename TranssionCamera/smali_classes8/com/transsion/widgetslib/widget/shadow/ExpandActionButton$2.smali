.class Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->startExpandAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$2;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 125
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$2;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$402(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;Z)Z

    .line 126
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$2;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$102(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;Z)Z

    .line 127
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$2;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$000(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 128
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$2;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->collapseItemButtons()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$2;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$300(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;I)V

    return-void
.end method
