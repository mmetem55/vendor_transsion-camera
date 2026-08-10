.class Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;
.super Ljava/lang/Object;
.source "CameraUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/CameraUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeDesComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/CameraUtil$1;)V
    .locals 0

    .line 935
    invoke-direct {p0}, Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Size;Landroid/util/Size;)I
    .locals 0

    if-ne p2, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 945
    :cond_2
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p2, p1

    sub-int/2addr p0, p2

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 935
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result p0

    return p0
.end method
