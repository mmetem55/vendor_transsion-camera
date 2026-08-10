.class Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$1;
.super Ljava/lang/Object;
.source "TakePictureCallBackView.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)F

    move-result p3

    add-float/2addr p3, p2

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)F

    move-result v0

    div-float/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)F

    move-result p3

    add-float/2addr p3, p2

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)F

    move-result v0

    div-float/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->access$100(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)F

    move-result p3

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->access$200(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)F

    move-result v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->access$200(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)F

    move-result p0

    sub-float/2addr v0, p0

    div-float/2addr p2, v0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    mul-float/2addr p3, p0

    invoke-virtual {p1, p3}, Landroid/view/View;->setX(F)V

    return-void
.end method
