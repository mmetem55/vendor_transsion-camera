.class Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopupOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/setting/PopupOption$1;->onLayoutEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/setting/PopupOption$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption$1;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;->this$1:Lcom/transsion/camera/app/ui/setting/PopupOption$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;->this$1:Lcom/transsion/camera/app/ui/setting/PopupOption$1;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$502(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;->this$1:Lcom/transsion/camera/app/ui/setting/PopupOption$1;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$502(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;->this$1:Lcom/transsion/camera/app/ui/setting/PopupOption$1;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$502(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)Z

    return-void
.end method
