.class public Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;
.super Ljava/lang/Object;
.source "ShapeInfo.java"


# instance fields
.field public final mBorder:I

.field public mBorderColor:I

.field public mGraduationColor:I

.field public final mHeight:I

.field public final mRoundCorner:F

.field public mShapeType:I

.field public final mWidth:I


# direct methods
.method public constructor <init>(IIIFII)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 18
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mShapeType:I

    .line 34
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mWidth:I

    .line 35
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mHeight:I

    .line 36
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorder:I

    .line 37
    iput p4, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mRoundCorner:F

    .line 38
    iput p5, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorderColor:I

    .line 39
    iput p6, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mGraduationColor:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9

    int-to-float v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p4

    move v8, p5

    .line 29
    invoke-direct/range {v2 .. v8}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIFII)V

    return-void
.end method


# virtual methods
.method public setShapeType(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mShapeType:I

    return-void
.end method

.method public updateBorderColor(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorderColor:I

    return-void
.end method

.method public updateGraduationColor(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mGraduationColor:I

    return-void
.end method
