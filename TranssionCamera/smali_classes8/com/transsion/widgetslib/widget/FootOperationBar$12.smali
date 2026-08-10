.class Lcom/transsion/widgetslib/widget/FootOperationBar$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FootOperationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->redPointHideAnim(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

.field final synthetic val$badgeView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;)V
    .locals 0

    .line 1128
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$12;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$12;->val$badgeView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1131
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1132
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$12;->val$badgeView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$12;->val$badgeView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1134
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$12;->val$badgeView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1135
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$12;->val$badgeView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
