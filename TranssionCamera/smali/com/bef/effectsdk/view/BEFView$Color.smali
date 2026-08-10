.class public Lcom/bef/effectsdk/view/BEFView$Color;
.super Ljava/lang/Object;
.source "BEFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/effectsdk/view/BEFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Color"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private g:F

.field private r:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/bef/effectsdk/view/BEFView$Color;->setColor(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bef/effectsdk/view/BEFView$Color;->setColor(FFFF)V

    return-void
.end method


# virtual methods
.method public alpha()F
    .locals 0

    .line 62
    iget p0, p0, Lcom/bef/effectsdk/view/BEFView$Color;->a:F

    return p0
.end method

.method public blue()F
    .locals 0

    .line 60
    iget p0, p0, Lcom/bef/effectsdk/view/BEFView$Color;->b:F

    return p0
.end method

.method public green()F
    .locals 0

    .line 58
    iget p0, p0, Lcom/bef/effectsdk/view/BEFView$Color;->g:F

    return p0
.end method

.method public red()F
    .locals 0

    .line 56
    iget p0, p0, Lcom/bef/effectsdk/view/BEFView$Color;->r:F

    return p0
.end method

.method public setColor(FFFF)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/bef/effectsdk/view/BEFView$Color;->r:F

    .line 50
    iput p2, p0, Lcom/bef/effectsdk/view/BEFView$Color;->g:F

    .line 51
    iput p3, p0, Lcom/bef/effectsdk/view/BEFView$Color;->b:F

    .line 52
    iput p4, p0, Lcom/bef/effectsdk/view/BEFView$Color;->a:F

    return-void
.end method
