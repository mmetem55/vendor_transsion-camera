.class public final Lcom/opensource/svgaplayer/utils/SVGARect;
.super Ljava/lang/Object;
.source "SVGAStructs.kt"


# instance fields
.field private final height:D

.field private final width:D

.field private final x:D

.field private final y:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->x:D

    iput-wide p3, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->y:D

    iput-wide p5, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->width:D

    iput-wide p7, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->height:D

    return-void
.end method


# virtual methods
.method public final getHeight()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->height:D

    return-wide v0
.end method

.method public final getWidth()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->width:D

    return-wide v0
.end method
