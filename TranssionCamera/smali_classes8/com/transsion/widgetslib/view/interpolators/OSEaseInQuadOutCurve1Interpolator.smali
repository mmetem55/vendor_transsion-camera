.class public Lcom/transsion/widgetslib/view/interpolators/OSEaseInQuadOutCurve1Interpolator;
.super Landroid/view/animation/PathInterpolator;
.source "OSEaseInQuadOutCurve1Interpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 7
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method
