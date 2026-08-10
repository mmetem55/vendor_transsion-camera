.class Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RevealAnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil;->revealAlphaActivity(Landroid/view/View;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$viewFront:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil$2;->val$viewFront:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil$2;->val$viewFront:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil$2;->val$viewFront:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    new-instance p0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "RevealAnimationUtil"

    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    const-string p1, "arcover onAnimationEnd"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
