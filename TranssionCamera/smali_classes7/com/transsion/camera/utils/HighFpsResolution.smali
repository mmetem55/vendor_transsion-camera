.class public final Lcom/transsion/camera/utils/HighFpsResolution;
.super Ljava/lang/Object;
.source "HighFpsResolution.java"


# instance fields
.field public fps:I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/transsion/camera/utils/HighFpsResolution;->width:I

    .line 11
    iput p2, p0, Lcom/transsion/camera/utils/HighFpsResolution;->height:I

    .line 12
    iput p3, p0, Lcom/transsion/camera/utils/HighFpsResolution;->fps:I

    return-void
.end method


# virtual methods
.method public getFps()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/transsion/camera/utils/HighFpsResolution;->fps:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 20
    iget p0, p0, Lcom/transsion/camera/utils/HighFpsResolution;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 16
    iget p0, p0, Lcom/transsion/camera/utils/HighFpsResolution;->width:I

    return p0
.end method
