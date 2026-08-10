.class Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;
.super Ljava/lang/Object;
.source "PlaneRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SortablePlane"
.end annotation


# instance fields
.field final distance:F

.field final plane:Lcom/google/ar/core/Plane;


# direct methods
.method constructor <init>(FLcom/google/ar/core/Plane;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;->distance:F

    .line 295
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;->plane:Lcom/google/ar/core/Plane;

    return-void
.end method
