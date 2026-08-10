.class public Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;
.super Lcom/transsion/camera/app/ui/widget/RotateImageView;
.source "ClickZoomView.java"


# instance fields
.field private mOnStateChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;

.field private final mZoomInDrawable:Landroid/graphics/drawable/Drawable;

.field private final mZoomOutDrawable:Landroid/graphics/drawable/Drawable;

.field private mZoomState:I


# direct methods
.method public static synthetic $r8$lambda$kqaimH5_iLteg5R6sWr3QVmW4Pw(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->onClicked(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    .line 36
    sget-object v3, Lcom/transsion/camera/R$styleable;->ClickZoomView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v8

    move v6, p3

    move v7, p4

    .line 38
    invoke-virtual/range {v1 .. v7}, Landroid/widget/ImageView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 41
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomInDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x1

    .line 42
    invoke-virtual {v8, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomOutDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 49
    iget p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->updateDrawable(IZ)V

    .line 50
    new-instance p1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onClicked(Landroid/view/View;)V
    .locals 1

    .line 76
    iget p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    rem-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->updateDrawable(IZ)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mOnStateChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;

    if-eqz p1, :cond_0

    .line 79
    iget p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    invoke-interface {p1, p0}, Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;->onStateChanged(I)V

    :cond_0
    return-void
.end method

.method private updateDrawable(IZ)V
    .locals 0

    if-nez p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomInDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomOutDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public setOnStateChangeListener(Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mOnStateChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;

    return-void
.end method

.method public setState(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iput p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->updateDrawable(IZ)V

    :cond_1
    :goto_0
    return-void
.end method
