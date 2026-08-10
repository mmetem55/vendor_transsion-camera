.class Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;I)V
    .locals 0

    .line 3160
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$2;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$2;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 3168
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$2;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$2;->val$position:I

    iput p0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedPosition:I

    const/4 p0, 0x0

    .line 3169
    iput p0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectionOffset:F

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 3163
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$2;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$2;->val$position:I

    iput p0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedPosition:I

    return-void
.end method
