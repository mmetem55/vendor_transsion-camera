.class Lcom/transsion/camera/app/ui/BaseAppUI$8$1;
.super Ljava/lang/Object;
.source "BaseAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/BaseAppUI$8;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/BaseAppUI$8;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI$8;)V
    .locals 0

    .line 4052
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8$1;->this$1:Lcom/transsion/camera/app/ui/BaseAppUI$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 4055
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8$1;->this$1:Lcom/transsion/camera/app/ui/BaseAppUI$8;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$5200(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
