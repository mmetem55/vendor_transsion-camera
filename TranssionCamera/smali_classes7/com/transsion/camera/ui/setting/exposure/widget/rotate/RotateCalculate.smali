.class public Lcom/transsion/camera/ui/setting/exposure/widget/rotate/RotateCalculate;
.super Ljava/lang/Object;
.source "RotateCalculate.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/exposure/widget/IRotateCalculate;


# instance fields
.field private final mProgressTraits:Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/rotate/RotateCalculate;->mProgressTraits:Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;

    return-void
.end method


# virtual methods
.method public calculate(I)I
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/rotate/RotateCalculate;->mProgressTraits:Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;

    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;->traitMin()I

    move-result v0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/rotate/RotateCalculate;->mProgressTraits:Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;

    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;->traitMax()I

    move-result p0

    add-int v1, v0, p0

    .line 32
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p1

    int-to-float p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    sub-int/2addr p0, v0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x43b40000    # 360.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method
