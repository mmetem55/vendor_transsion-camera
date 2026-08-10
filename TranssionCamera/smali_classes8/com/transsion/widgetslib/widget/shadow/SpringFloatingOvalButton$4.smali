.class Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$4;
.super Ljava/lang/Object;
.source "SpringFloatingOvalButton.java"

# interfaces
.implements Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$4;->this$0:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Z)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$4;->this$0:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->access$300(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$4;->this$0:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->access$300(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;->onClick(Landroid/view/View;Z)V

    if-nez p2, :cond_0

    .line 100
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$4;->this$0:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    :cond_0
    return-void
.end method
