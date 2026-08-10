.class Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FrontWideCameraUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$3;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$600(Lcom/transsion/camera/app/ui/FrontWideCameraUI;I)V

    return-void
.end method
