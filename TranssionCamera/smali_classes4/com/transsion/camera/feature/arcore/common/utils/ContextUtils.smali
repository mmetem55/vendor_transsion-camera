.class public Lcom/transsion/camera/feature/arcore/common/utils/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;
    .locals 2

    .line 14
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 15
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 16
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 17
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method
