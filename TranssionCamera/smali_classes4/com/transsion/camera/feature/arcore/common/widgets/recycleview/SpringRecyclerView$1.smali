.class Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView$1;
.super Landroid/view/animation/Animation;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 304
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->access$100(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;)F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->access$002(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;F)F

    .line 305
    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->access$002(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;F)F

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->access$200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;I)V

    .line 309
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
