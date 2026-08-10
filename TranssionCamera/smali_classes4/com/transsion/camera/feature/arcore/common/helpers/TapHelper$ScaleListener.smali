.class Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;
.super Ljava/lang/Object;
.source "TapHelper.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;-><init>(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$000(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$000(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;->onScale(D)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$102(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;F)F

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$300(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$202(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;F)F

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$200(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$200(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)F

    move-result p1

    float-to-double v1, p1

    const-wide v3, 0x3fd3333333333333L    # 0.3

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$200(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$302(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;F)F

    :cond_2
    :goto_0
    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$402(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Z)Z

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$402(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Z)Z

    return-void
.end method
