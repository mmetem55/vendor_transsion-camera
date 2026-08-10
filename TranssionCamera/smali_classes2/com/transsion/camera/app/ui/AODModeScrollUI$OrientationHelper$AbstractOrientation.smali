.class abstract Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;
.super Ljava/lang/Object;
.source "AODModeScrollUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractOrientation"
.end annotation


# instance fields
.field private final mOrientation:I

.field final synthetic this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;I)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput p2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->mOrientation:I

    return-void
.end method

.method private isLandscape()Z
    .locals 1

    .line 605
    iget p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->mOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected abstract createEnterAnimator(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;II)Landroid/animation/Animator;
.end method

.method final entry()V
    .locals 3

    .line 593
    invoke-static {}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1700(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1700(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    move-result-object v2

    iget v2, v2, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->mOrientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1700(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1700(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1700(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->onLeave()V

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1702(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;)Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    .line 600
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->onEntry()V

    :cond_2
    return-void
.end method

.method protected onEntry()V
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->stopPulling()Z

    .line 610
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->registerVerticalScroll()V

    goto :goto_0

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->registerHorizontalScroll()V

    :goto_0
    return-void
.end method

.method protected onLeave()V
    .locals 1

    .line 618
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->unregisterVerticalScroll()V

    goto :goto_0

    .line 621
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->unregisterHorizontalScroll()V

    :goto_0
    return-void
.end method

.method protected final registerHorizontalScroll()V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1800(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void
.end method

.method protected final registerVerticalScroll()V
    .locals 3

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1800(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_DOWN:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1800(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void
.end method

.method protected scroll(FF)V
    .locals 0

    return-void
.end method

.method protected final unregisterHorizontalScroll()V
    .locals 1

    .line 631
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1800(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void
.end method

.method protected final unregisterVerticalScroll()V
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1800(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_DOWN:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    .line 645
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1800(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void
.end method
