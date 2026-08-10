.class Lcom/transsion/camera/app/ui/AbstractHintUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractHintUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1344
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1345
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1600(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
