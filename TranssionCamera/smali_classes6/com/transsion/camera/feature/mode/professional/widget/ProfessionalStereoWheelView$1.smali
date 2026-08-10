.class Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView$1;
.super Ljava/lang/Object;
.source "ProfessionalStereoWheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->selectIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView$1;->this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView$1;->this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->access$000(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView$1;->this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->access$100(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView$1;->this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->access$200(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView$1;->this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView$1;->this$0:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;->access$300(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalStereoWheelView;)V

    return-void
.end method
