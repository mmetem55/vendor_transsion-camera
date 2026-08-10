.class Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$5;
.super Lcom/transsion/camera/feature/arcore/common/utils/SimpleAnimateListener;
.source "ArcoreAnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->disappearBackGuide(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/utils/SimpleAnimateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$5;->val$view:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$5;->val$view:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
