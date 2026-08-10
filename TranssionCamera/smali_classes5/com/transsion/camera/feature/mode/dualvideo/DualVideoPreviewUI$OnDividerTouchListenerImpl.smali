.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;
.super Ljava/lang/Object;
.source "DualVideoPreviewUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDividerTouchListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;)V
    .locals 0

    .line 538
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 541
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    const/4 v2, 0x2

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    .line 551
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)F

    move-result v0

    sub-float/2addr p2, v0

    .line 553
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->OnDividerChanging(F)V

    .line 559
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    float-to-int p2, p2

    add-int/2addr v0, p2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_2

    .line 560
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    :goto_0
    sub-int/2addr v0, v3

    goto :goto_1

    .line 561
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_3

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    goto :goto_0

    .line 564
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p2

    .line 567
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, p2

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v2

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_4

    .line 568
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v2

    :goto_2
    add-int/2addr p0, p2

    goto :goto_3

    .line 569
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, p2

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v2

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_5

    .line 570
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v2

    goto :goto_2

    .line 572
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p0

    goto :goto_2

    .line 576
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1, p2, v0, v2, p0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    .line 584
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v2

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v0

    div-int/2addr v0, v2

    if-le p2, v0, :cond_8

    .line 585
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v2

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v0

    div-int/2addr v0, v2

    if-gt p2, v0, :cond_a

    .line 586
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 587
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->OnDividerToMiddle()V

    .line 589
    :cond_7
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result p2

    div-int/2addr p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr p2, v0

    .line 590
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v0

    div-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 592
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v2, p2, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 595
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v2

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v0

    div-int/2addr v0, v2

    if-ge p2, v0, :cond_a

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v2

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v0

    div-int/2addr v0, v2

    if-lt p2, v0, :cond_a

    .line 597
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 598
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->OnDividerToMiddle()V

    .line 600
    :cond_9
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result p2

    div-int/2addr p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr p2, v0

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I

    move-result v0

    div-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 603
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v2, p2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 607
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 608
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->onDividerChangeEnd()V

    goto :goto_5

    .line 544
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$702(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;F)F

    .line 545
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 546
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->onDividerChangeBegin()V

    :cond_c
    :goto_5
    return v1
.end method
