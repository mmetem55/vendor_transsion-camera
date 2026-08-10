.class Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;
.super Ljava/lang/Object;
.source "OSSpringPressSealAnimation.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createEndAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 8

    if-nez p2, :cond_0

    .line 153
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$2102(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;Z)Z

    .line 154
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$1900(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$1602(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)F

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0, p3}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$1602(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)F

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$1700(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$1802(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)F

    .line 159
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$2000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$2000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    iget-boolean v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    move-object v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;->onAnimationEnd(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZZFF)V

    :cond_1
    return-void
.end method
