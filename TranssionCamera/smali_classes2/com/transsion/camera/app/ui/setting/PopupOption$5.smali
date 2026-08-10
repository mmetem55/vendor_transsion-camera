.class Lcom/transsion/camera/app/ui/setting/PopupOption$5;
.super Ljava/lang/Object;
.source "PopupOption.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/setting/PopupOption;
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

    .line 439
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 442
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$800(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 444
    invoke-static {}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$700()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch xxx  y= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", popupWindowHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mIsDismissing= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$900(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$400(Lcom/transsion/camera/app/ui/setting/PopupOption;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    .line 446
    invoke-static {v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$400(Lcom/transsion/camera/app/ui/setting/PopupOption;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    .line 448
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$900(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$1200(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    move-result-object p0

    const/16 p1, 0x64

    const-wide/16 v0, 0x3c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    cmpl-float v2, p1, v1

    if-ltz v2, :cond_3

    cmpg-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, v0, v1

    if-gez p1, :cond_3

    .line 452
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$800(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 454
    invoke-virtual {p0, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 457
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$900(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 458
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
