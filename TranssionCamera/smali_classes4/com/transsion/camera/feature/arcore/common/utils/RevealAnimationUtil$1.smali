.class Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil$1;
.super Ljava/lang/Object;
.source "RevealAnimationUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil;->startRevealAnimation(Landroid/view/View;Landroid/app/Activity;)V
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

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil$1;->val$viewFront:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil$1;->val$viewFront:Landroid/view/View;

    const/16 v1, 0x258

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil;->access$000(Landroid/view/View;IFF)V

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil$1;->val$viewFront:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
