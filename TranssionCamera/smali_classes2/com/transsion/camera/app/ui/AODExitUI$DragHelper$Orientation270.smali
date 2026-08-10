.class Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation270;
.super Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;
.source "AODExitUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Orientation270"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V
    .locals 1

    .line 390
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation270;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    const/16 v0, 0x10e

    .line 391
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;-><init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;I)V

    return-void
.end method


# virtual methods
.method protected drag(FF)Z
    .locals 1

    .line 396
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->drag(FF)Z

    .line 397
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 401
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation270;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$1300(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;F)F

    move-result p1

    .line 402
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation270;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$1416(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;F)F

    .line 403
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation270;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    const/4 p2, 0x0

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$1400(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$1402(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;F)F

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation270;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$1400(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)F

    move-result p2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation270;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$1500(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$1402(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;F)F

    const/4 p0, 0x1

    return p0
.end method

.method protected updateTranslation(Landroid/view/View;F)V
    .locals 0

    .line 410
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->updateTranslation(Landroid/view/View;F)V

    neg-float p0, p2

    .line 411
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
