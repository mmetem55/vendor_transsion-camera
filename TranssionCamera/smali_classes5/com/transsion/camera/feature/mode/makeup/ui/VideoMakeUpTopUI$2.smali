.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoMakeUpTopUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSwitchContainerVisibility(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;Z)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private onAnimationFinish()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;->val$visible:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;->val$visible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSwitchContainerVisibility onAnimationFinish visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;->val$visible:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 236
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 237
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;->onAnimationFinish()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 242
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 243
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;->onAnimationFinish()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 226
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 227
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;->val$visible:Z

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "updateSwitchContainerVisibility onAnimationStart"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
