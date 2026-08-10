.class public Lcom/transsion/widgetslib/view/interpolators/OSEaseInQuadOutCurve2Interpolator;
.super Landroid/view/animation/PathInterpolator;
.source "OSEaseInQuadOutCurve2Interpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    invoke-direct {p0, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method
