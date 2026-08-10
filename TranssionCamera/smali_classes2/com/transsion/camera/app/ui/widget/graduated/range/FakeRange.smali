.class public Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;
.super Ljava/lang/Object;
.source "FakeRange.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;


# instance fields
.field private final mGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mOffsetX:I

.field private mOffsetY:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    return-void
.end method


# virtual methods
.method public coordinateToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 2

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v0, -0xa

    if-le p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public offset(II)V
    .locals 3

    .line 32
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mOffsetX:I

    if-nez v0, :cond_1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mOffsetY:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    move v1, p2

    goto :goto_1

    :cond_1
    :goto_0
    sub-int v0, p1, v0

    .line 34
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mOffsetY:I

    sub-int v1, p2, v1

    .line 36
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->offset(II)V

    .line 37
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mOffsetX:I

    .line 38
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mOffsetY:I

    return-void
.end method

.method public valueToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
