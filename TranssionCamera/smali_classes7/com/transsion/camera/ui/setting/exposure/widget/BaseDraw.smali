.class public abstract Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;
.super Ljava/lang/Object;
.source "BaseDraw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;
    }
.end annotation


# instance fields
.field protected final mColor:I

.field protected final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget p1, p1, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;->mColor:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mColor:I

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;IIII)V
.end method
