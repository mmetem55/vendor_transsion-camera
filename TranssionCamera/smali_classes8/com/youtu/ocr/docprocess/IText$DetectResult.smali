.class public Lcom/youtu/ocr/docprocess/IText$DetectResult;
.super Ljava/lang/Object;
.source "IText.java"


# instance fields
.field public hasResult:Z

.field public pointArr:[Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z[Landroid/graphics/Point;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean p1, p0, Lcom/youtu/ocr/docprocess/IText$DetectResult;->hasResult:Z

    .line 119
    iput-object p2, p0, Lcom/youtu/ocr/docprocess/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public getHasResult()Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lcom/youtu/ocr/docprocess/IText$DetectResult;->hasResult:Z

    return p0
.end method

.method public getPointArr()[Landroid/graphics/Point;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/youtu/ocr/docprocess/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    return-object p0
.end method

.method public setHasResult(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/youtu/ocr/docprocess/IText$DetectResult;->hasResult:Z

    return-void
.end method

.method public setPointArr([Landroid/graphics/Point;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/youtu/ocr/docprocess/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    return-void
.end method
