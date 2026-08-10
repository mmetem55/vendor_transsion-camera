.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;
.super Ljava/lang/Object;
.source "ModePickerUIManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 338
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$800(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$902(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;F)F

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$802(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z

    goto :goto_0

    .line 346
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1002(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;F)F

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$802(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$900(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)F

    move-result p2

    sub-float/2addr p1, p2

    const/high16 p2, 0x41f00000    # 30.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$900(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$902(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;F)F

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->scrollToPrevious()V

    :cond_2
    :goto_0
    return v0
.end method
