.class Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$8;
.super Ljava/lang/Object;
.source "RemoveItemAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->animateChangeImpl(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

.field final synthetic val$newView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;Landroid/view/View;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$8;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
