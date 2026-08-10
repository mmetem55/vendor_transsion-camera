.class Lcom/transsion/camera/app/ui/HelpGuideUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HelpGuideUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/HelpGuideUI;->updateIconLocation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/HelpGuideUI;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$1;->this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$1;->this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->access$000(Lcom/transsion/camera/app/ui/HelpGuideUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
