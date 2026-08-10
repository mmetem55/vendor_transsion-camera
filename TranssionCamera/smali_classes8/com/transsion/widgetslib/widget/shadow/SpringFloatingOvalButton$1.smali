.class Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$1;
.super Ljava/lang/Object;
.source "SpringFloatingOvalButton.java"

# interfaces
.implements Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;


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

    .line 119
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(ZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->access$000(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->access$000(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;->onAnimationUpdate(ZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    :cond_0
    return-void
.end method
