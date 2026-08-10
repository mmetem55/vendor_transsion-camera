.class Lcom/transsion/camera/app/ui/BaseAppUI$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseAppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;->sinkUI(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 3560
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$5;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 3563
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$5;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$4900(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3564
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$5;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_0

    .line 3565
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateGuideRightRootVisibleState(I)V

    :cond_0
    return-void
.end method
