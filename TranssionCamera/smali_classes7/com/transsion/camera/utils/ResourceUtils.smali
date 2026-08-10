.class public Lcom/transsion/camera/utils/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# direct methods
.method public static dpInt(I)I
    .locals 2

    int-to-float p0, p0

    .line 12
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static dpRes(I)I
    .locals 1

    .line 16
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
