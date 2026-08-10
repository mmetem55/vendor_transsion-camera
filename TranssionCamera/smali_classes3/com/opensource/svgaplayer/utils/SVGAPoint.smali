.class public final Lcom/opensource/svgaplayer/utils/SVGAPoint;
.super Ljava/lang/Object;
.source "SVGAStructs.kt"


# instance fields
.field private final value:F

.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAPoint;->x:F

    iput p2, p0, Lcom/opensource/svgaplayer/utils/SVGAPoint;->y:F

    iput p3, p0, Lcom/opensource/svgaplayer/utils/SVGAPoint;->value:F

    return-void
.end method


# virtual methods
.method public final getX()F
    .locals 0

    .line 7
    iget p0, p0, Lcom/opensource/svgaplayer/utils/SVGAPoint;->x:F

    return p0
.end method

.method public final getY()F
    .locals 0

    .line 7
    iget p0, p0, Lcom/opensource/svgaplayer/utils/SVGAPoint;->y:F

    return p0
.end method
