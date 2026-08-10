.class Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;
.super Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;
.source "AODModeScrollUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Orientation90"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)V
    .locals 1

    .line 687
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    const/16 v0, 0x5a

    .line 688
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;I)V

    return-void
.end method


# virtual methods
.method protected createEnterAnimator(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;II)Landroid/animation/Animator;
    .locals 0

    if-ge p2, p3, :cond_0

    .line 707
    invoke-static {p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->access$2500(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)Landroid/animation/Animator;

    move-result-object p0

    goto :goto_0

    .line 708
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->access$2600(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)Landroid/animation/Animator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected scroll(FF)V
    .locals 1

    .line 693
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;->scroll(FF)V

    float-to-int p1, p2

    .line 694
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1900(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)I

    move-result p2

    div-int/2addr p1, p2

    const/4 p2, 0x1

    if-gez p1, :cond_0

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$2000(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$2100(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->scrollToNext()V

    .line 697
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$2102(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;Z)Z

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 698
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$2200(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$2100(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 699
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->scrollToPrevious()V

    .line 700
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$2102(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
