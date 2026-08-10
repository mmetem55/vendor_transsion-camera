.class Lcom/transsion/camera/app/ui/AbstractModePickerUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractModePickerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractModePickerUI;->enterMoreModeGuideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 347
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$900(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$1002(Lcom/transsion/camera/app/ui/AbstractModePickerUI;F)F

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$1100(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/ui/widget/TabLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$1100(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/ui/widget/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$1202(Lcom/transsion/camera/app/ui/AbstractModePickerUI;I)I

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 340
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$900(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$900(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
