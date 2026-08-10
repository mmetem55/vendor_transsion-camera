.class Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable$1;
.super Ljava/lang/Object;
.source "AlmostRippleDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 178
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 179
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {v4}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->access$100(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 180
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {v4}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->access$200(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;)Landroid/view/animation/Interpolator;

    move-result-object v4

    long-to-float v2, v2

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->access$100(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 181
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->access$300(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x10

    add-long/2addr v0, v5

    invoke-virtual {v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->access$400(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;F)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->access$300(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->access$502(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;Z)Z

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->access$400(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;F)V

    :goto_0
    return-void
.end method
