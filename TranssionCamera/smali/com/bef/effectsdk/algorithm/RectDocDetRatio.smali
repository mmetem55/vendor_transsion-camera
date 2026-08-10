.class public Lcom/bef/effectsdk/algorithm/RectDocDetRatio;
.super Ljava/lang/Object;
.source "RectDocDetRatio.java"


# instance fields
.field private heightVal:I

.field private ratio:F

.field private widthVal:I


# direct methods
.method public constructor <init>(FII)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/bef/effectsdk/algorithm/RectDocDetRatio;->ratio:F

    .line 14
    iput p2, p0, Lcom/bef/effectsdk/algorithm/RectDocDetRatio;->widthVal:I

    .line 15
    iput p3, p0, Lcom/bef/effectsdk/algorithm/RectDocDetRatio;->heightVal:I

    return-void
.end method


# virtual methods
.method public getHeightVal()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/bef/effectsdk/algorithm/RectDocDetRatio;->heightVal:I

    return p0
.end method

.method public getRatio()F
    .locals 0

    .line 19
    iget p0, p0, Lcom/bef/effectsdk/algorithm/RectDocDetRatio;->ratio:F

    return p0
.end method

.method public getWidthVal()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/bef/effectsdk/algorithm/RectDocDetRatio;->widthVal:I

    return p0
.end method
