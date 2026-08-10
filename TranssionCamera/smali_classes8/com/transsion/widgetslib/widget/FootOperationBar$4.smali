.class Lcom/transsion/widgetslib/widget/FootOperationBar$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FootOperationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->setItemSelectState(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

.field final synthetic val$finalTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/widget/TextView;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$4;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$4;->val$finalTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 458
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 459
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$4;->val$finalTextView:Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method
