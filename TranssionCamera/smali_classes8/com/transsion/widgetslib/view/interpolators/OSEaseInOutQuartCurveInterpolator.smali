.class public Lcom/transsion/widgetslib/view/interpolators/OSEaseInOutQuartCurveInterpolator;
.super Lcom/transsion/widgetscore/utils/EaseCubicInterpolator;
.source "OSEaseInOutQuartCurveInterpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    const v0, 0x3f333333    # 0.7f

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/widgetscore/utils/EaseCubicInterpolator;-><init>(FFFF)V

    return-void
.end method
