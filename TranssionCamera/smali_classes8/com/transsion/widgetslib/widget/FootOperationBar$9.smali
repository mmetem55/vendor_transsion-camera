.class Lcom/transsion/widgetslib/widget/FootOperationBar$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FootOperationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->openAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V
    .locals 0

    .line 847
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$9;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 856
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 857
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$9;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$902(Lcom/transsion/widgetslib/widget/FootOperationBar;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 850
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 851
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$9;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
