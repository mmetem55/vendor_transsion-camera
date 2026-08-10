.class Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$ColoredAnchor;
.super Ljava/lang/Object;
.source "ARCoreRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColoredAnchor"
.end annotation


# instance fields
.field public final anchor:Lcom/google/ar/core/Anchor;

.field public final color:[F


# direct methods
.method public constructor <init>(Lcom/google/ar/core/Anchor;[F)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$ColoredAnchor;->anchor:Lcom/google/ar/core/Anchor;

    .line 237
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$ColoredAnchor;->color:[F

    return-void
.end method
