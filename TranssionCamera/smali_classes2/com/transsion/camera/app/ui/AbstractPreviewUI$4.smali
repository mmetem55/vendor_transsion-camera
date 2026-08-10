.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractPreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;->runUpdatePreviewAnimator(IIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

.field final synthetic val$screenFormType:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;->val$screenFormType:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 946
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 947
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "runUpdatePreviewAnimator onAnimationCancel"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 948
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;->val$screenFormType:I

    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 939
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 940
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "runUpdatePreviewAnimator onAnimationEnd"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 941
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;->val$screenFormType:I

    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)V

    return-void
.end method
