.class Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractHintUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/AbstractHintUI$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI$1;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;->this$1:Lcom/transsion/camera/app/ui/AbstractHintUI$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;->this$1:Lcom/transsion/camera/app/ui/AbstractHintUI$1;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$900(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
