.class Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractSettingItemUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->setEntryViewAnim(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Landroid/view/View;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 164
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;->val$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 158
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;->val$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
