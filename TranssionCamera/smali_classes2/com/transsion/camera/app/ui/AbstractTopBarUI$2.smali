.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractTopBarUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onPopupShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 309
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->access$100(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 303
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->access$100(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V

    return-void
.end method
