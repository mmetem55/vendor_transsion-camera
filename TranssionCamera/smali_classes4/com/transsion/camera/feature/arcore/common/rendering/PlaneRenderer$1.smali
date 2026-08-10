.class Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$1;
.super Ljava/lang/Object;
.source "PlaneRenderer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->drawPlanes(Ljava/util/Collection;Lcom/google/ar/core/Pose;[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;)I
    .locals 0

    .line 328
    iget p0, p1, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;->distance:F

    iget p1, p2, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;->distance:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 325
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;

    check-cast p2, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$1;->compare(Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;)I

    move-result p0

    return p0
.end method
