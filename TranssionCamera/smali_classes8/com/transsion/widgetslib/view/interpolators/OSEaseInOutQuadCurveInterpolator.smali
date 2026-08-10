.class public Lcom/transsion/widgetslib/view/interpolators/OSEaseInOutQuadCurveInterpolator;
.super Lcom/transsion/widgetscore/utils/EaseCubicInterpolator;
.source "OSEaseInOutQuadCurveInterpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    invoke-direct {p0, v0, v1, v0, v2}, Lcom/transsion/widgetscore/utils/EaseCubicInterpolator;-><init>(FFFF)V

    return-void
.end method
