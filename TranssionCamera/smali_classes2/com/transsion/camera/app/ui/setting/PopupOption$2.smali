.class Lcom/transsion/camera/app/ui/setting/PopupOption$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopupOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 214
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$902(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)Z

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$1000(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupDismissCancel()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 206
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$800(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$902(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)Z

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$200(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 221
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$1000(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$2;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$1000(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupDismissStart()V

    :cond_0
    return-void
.end method
