.class public Lcom/bef/effectsdk/ImgporcUtils;
.super Ljava/lang/Object;
.source "ImgporcUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bef/effectsdk/ImgporcUtils$InterpolationFlags;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateAspectRatio([Landroid/graphics/PointF;II)F
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lcom/bef/effectsdk/ImgporcUtils;->nativeCalculateAspectRatio([Landroid/graphics/PointF;II)F

    move-result p0

    return p0
.end method

.method public static correctPerspective(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bef/effectsdk/ImgporcUtils;->nativeCorrectPerspective(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static correctPerspective(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;III)Landroid/graphics/Bitmap;
    .locals 0

    .line 25
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bef/effectsdk/ImgporcUtils;->nativeCorrectPerspective(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeCalculateAspectRatio([Landroid/graphics/PointF;II)F
.end method

.method private static native nativeCorrectPerspective(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;III)Landroid/graphics/Bitmap;
.end method
