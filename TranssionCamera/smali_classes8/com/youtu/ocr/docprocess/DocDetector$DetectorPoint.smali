.class public Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;
.super Ljava/lang/Object;
.source "DocDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youtu/ocr/docprocess/DocDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetectorPoint"
.end annotation


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput p1, p0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    .line 285
    iput p2, p0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    return-void
.end method
