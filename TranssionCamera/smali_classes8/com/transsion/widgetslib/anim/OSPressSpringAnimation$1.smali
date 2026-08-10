.class Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$1;
.super Ljava/lang/Object;
.source "OSPressSpringAnimation.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;

.field final synthetic val$size:[I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;[I)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;

    iput-object p2, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$1;->val$size:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$1;->val$size:[I

    const/4 p2, 0x0

    aget p4, p1, p2

    add-int/lit8 p4, p4, -0x1

    aput p4, p1, p2

    if-nez p4, :cond_0

    .line 68
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;

    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->access$500(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;)Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$OnOSSpringAnimationEndListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$OnOSSpringAnimationEndListener;->onAnimationEnd(ZF)V

    :cond_0
    return-void
.end method
