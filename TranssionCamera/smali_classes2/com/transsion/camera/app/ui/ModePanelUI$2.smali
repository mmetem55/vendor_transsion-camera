.class Lcom/transsion/camera/app/ui/ModePanelUI$2;
.super Ljava/lang/Object;
.source "ModePanelUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePanelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$2;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 420
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$2;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$900(Lcom/transsion/camera/app/ui/ModePanelUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method
