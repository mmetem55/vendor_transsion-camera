.class public Lcom/bef/effectsdk/algorithm/RectDocDetResult;
.super Ljava/lang/Object;
.source "RectDocDetResult.java"


# static fields
.field public static final DETECT_FAIL:I = -0x1

.field public static final DETECT_SUCCESS:I


# instance fields
.field private rectDocDetRatio:Lcom/bef/effectsdk/algorithm/RectDocDetRatio;

.field private rectDocDetTargetArea:Lcom/bef/effectsdk/algorithm/RectDocDetTargetArea;

.field private resultStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/bef/effectsdk/algorithm/RectDocDetResult;->resultStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/bef/effectsdk/algorithm/RectDocDetTargetArea;Lcom/bef/effectsdk/algorithm/RectDocDetRatio;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/bef/effectsdk/algorithm/RectDocDetResult;->resultStatus:I

    .line 22
    iput-object p1, p0, Lcom/bef/effectsdk/algorithm/RectDocDetResult;->rectDocDetTargetArea:Lcom/bef/effectsdk/algorithm/RectDocDetTargetArea;

    .line 23
    iput-object p2, p0, Lcom/bef/effectsdk/algorithm/RectDocDetResult;->rectDocDetRatio:Lcom/bef/effectsdk/algorithm/RectDocDetRatio;

    return-void
.end method


# virtual methods
.method public getRectDocDetRatio()Lcom/bef/effectsdk/algorithm/RectDocDetRatio;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/bef/effectsdk/algorithm/RectDocDetResult;->rectDocDetRatio:Lcom/bef/effectsdk/algorithm/RectDocDetRatio;

    return-object p0
.end method

.method public getRectDocDetTargetArea()Lcom/bef/effectsdk/algorithm/RectDocDetTargetArea;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bef/effectsdk/algorithm/RectDocDetResult;->rectDocDetTargetArea:Lcom/bef/effectsdk/algorithm/RectDocDetTargetArea;

    return-object p0
.end method

.method public getResultStatus()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/bef/effectsdk/algorithm/RectDocDetResult;->resultStatus:I

    return p0
.end method
