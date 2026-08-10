.class Lcom/transsion/camera/ui/setting/BarcodeUI$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BarcodeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/BarcodeUI$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/ui/setting/BarcodeUI$2;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/BarcodeUI$2;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2$1;->this$1:Lcom/transsion/camera/ui/setting/BarcodeUI$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 419
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2$1;->this$1:Lcom/transsion/camera/ui/setting/BarcodeUI$2;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
