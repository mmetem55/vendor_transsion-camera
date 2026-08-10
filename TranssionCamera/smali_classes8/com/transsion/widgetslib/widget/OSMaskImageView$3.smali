.class Lcom/transsion/widgetslib/widget/OSMaskImageView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OSMaskImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSMaskImageView;->initAlphaAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$3;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 108
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$3;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$302(Lcom/transsion/widgetslib/widget/OSMaskImageView;Z)Z

    .line 109
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$3;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->setSelected(Z)V

    return-void
.end method
