.class Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MoreGridListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->hideViewWithAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Landroid/view/View;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$1;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 259
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$1;->val$view:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
