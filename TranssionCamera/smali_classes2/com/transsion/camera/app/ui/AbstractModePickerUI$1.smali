.class Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;
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

    .line 318
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 327
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$800(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 321
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$700(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method
