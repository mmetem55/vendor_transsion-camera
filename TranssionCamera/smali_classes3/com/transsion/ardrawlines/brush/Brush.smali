.class public Lcom/transsion/ardrawlines/brush/Brush;
.super Ljava/lang/Object;
.source "Brush.java"


# instance fields
.field private brushColor:I

.field private brushSize:I

.field private brushType:Lcom/transsion/ardrawlines/brush/BrushType;


# direct methods
.method public constructor <init>(Lcom/transsion/ardrawlines/brush/BrushType;II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/transsion/ardrawlines/brush/Brush;->brushType:Lcom/transsion/ardrawlines/brush/BrushType;

    .line 11
    iput p2, p0, Lcom/transsion/ardrawlines/brush/Brush;->brushSize:I

    .line 12
    iput p3, p0, Lcom/transsion/ardrawlines/brush/Brush;->brushColor:I

    return-void
.end method


# virtual methods
.method public getBrushColor()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/transsion/ardrawlines/brush/Brush;->brushColor:I

    return p0
.end method

.method public getBrushSize()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/transsion/ardrawlines/brush/Brush;->brushSize:I

    return p0
.end method

.method public getBrushType()Lcom/transsion/ardrawlines/brush/BrushType;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/transsion/ardrawlines/brush/Brush;->brushType:Lcom/transsion/ardrawlines/brush/BrushType;

    return-object p0
.end method

.method public setBrushColor(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/transsion/ardrawlines/brush/Brush;->brushColor:I

    return-void
.end method

.method public setBrushSize(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/transsion/ardrawlines/brush/Brush;->brushSize:I

    return-void
.end method

.method public setBrushType(Lcom/transsion/ardrawlines/brush/BrushType;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/transsion/ardrawlines/brush/Brush;->brushType:Lcom/transsion/ardrawlines/brush/BrushType;

    return-void
.end method
