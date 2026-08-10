.class Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AODExitUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->springBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$3;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 559
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$3;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODExitUI;->access$2100(Lcom/transsion/camera/app/ui/AODExitUI;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
