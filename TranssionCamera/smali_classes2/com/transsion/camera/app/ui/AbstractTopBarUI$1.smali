.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractTopBarUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onScreenFormChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

.field final synthetic val$screenFormType:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;->val$screenFormType:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 260
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->access$000(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 266
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->access$000(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 268
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz p1, :cond_0

    .line 269
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;->val$screenFormType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenFormChanged(IZ)V

    :cond_0
    return-void
.end method
