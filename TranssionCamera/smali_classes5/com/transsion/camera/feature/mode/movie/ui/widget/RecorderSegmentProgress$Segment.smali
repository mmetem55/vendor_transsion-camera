.class public final Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;
.super Ljava/lang/Object;
.source "RecorderSegmentProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# instance fields
.field private final mStartAngle:F

.field private final mSweepAngle:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;->mStartAngle:F

    .line 314
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;->mSweepAngle:F

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;)F
    .locals 0

    .line 307
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;->mStartAngle:F

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;)F
    .locals 0

    .line 307
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;->mSweepAngle:F

    return p0
.end method
