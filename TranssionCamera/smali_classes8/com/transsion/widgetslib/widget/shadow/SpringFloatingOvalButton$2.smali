.class Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$2;
.super Ljava/lang/Object;
.source "SpringFloatingOvalButton.java"

# interfaces
.implements Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;


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

    .line 112
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$2;->this$0:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZZFF)V
    .locals 7

    .line 115
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$2;->this$0:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->access$100(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$2;->this$0:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->access$100(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;->onAnimationEnd(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZZFF)V

    :cond_0
    return-void
.end method
