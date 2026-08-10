.class public Lcom/transsion/widgetslib/widget/OSPopupTip;
.super Ljava/lang/Object;
.source "OSPopupTip.java"


# static fields
.field private static final DURATION:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "OSPopupTip"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/TextView;)I
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->getTextActualHeight(Landroid/widget/TextView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/view/View;)I
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->getSafeInsetLeft(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/view/View;)I
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->getSafeInsetRight(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static drawableToBitmap2(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 8

    .line 354
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 355
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 357
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    .line 358
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 360
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p1, v1

    cmpl-float v1, v1, v3

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 363
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 364
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 365
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    goto :goto_1

    .line 367
    :cond_1
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 370
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 371
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v1, :cond_3

    .line 373
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v7, 0x3

    invoke-direct {v1, v4, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/high16 v1, 0x43340000    # 180.0f

    rem-float v1, p1, v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    .line 375
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v0, v7

    div-float/2addr v0, v3

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 377
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v6, p1, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 379
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v4, v4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 380
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v5
.end method

.method private static getCutout(Landroid/view/View;)Landroid/view/DisplayCutout;
    .locals 0

    .line 400
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 403
    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getSafeInsetLeft(Landroid/view/View;)I
    .locals 0

    .line 410
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->getCutout(Landroid/view/View;)Landroid/view/DisplayCutout;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getSafeInsetRight(Landroid/view/View;)I
    .locals 0

    .line 419
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->getCutout(Landroid/view/View;)Landroid/view/DisplayCutout;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getTextActualHeight(Landroid/widget/TextView;)I
    .locals 5

    .line 386
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    .line 388
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 390
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 391
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 392
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static show(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 350
    invoke-static {p0, p1, p2, v0, v0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->show(Landroid/view/View;Ljava/lang/String;III)V

    return-void
.end method

.method public static show(Landroid/view/View;Ljava/lang/String;III)V
    .locals 20

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    if-nez v3, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 57
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/high16 v5, 0x40c00000    # 6.0f

    const/4 v6, 0x1

    .line 59
    invoke-static {v6, v5, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v7, v5

    const/high16 v5, 0x41000000    # 8.0f

    .line 60
    invoke-static {v6, v5, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    .line 61
    invoke-static {v6, v5, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    const/high16 v9, 0x43a40000    # 328.0f

    .line 62
    invoke-static {v6, v9, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v14, v9

    .line 63
    iget v9, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 65
    sget v10, Lcom/transsion/widgetslib/R$layout;->os_popup_tip_layout:I

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 66
    sget v10, Lcom/transsion/widgetslib/R$id;->os_popup_tip_arrow:I

    invoke-virtual {v13, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 67
    sget v11, Lcom/transsion/widgetslib/R$id;->os_popup_tip_text:I

    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/16 v6, 0x50

    move/from16 v17, v9

    const/16 v9, 0x51

    if-eq v2, v6, :cond_2

    if-eq v2, v9, :cond_2

    const v6, 0x800055

    if-ne v2, v6, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v9, v17

    const/16 v16, 0x0

    goto :goto_2

    :cond_2
    :goto_0
    if-ne v2, v9, :cond_3

    .line 72
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0xe

    .line 73
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    invoke-virtual {v15, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v9, v14

    goto :goto_1

    :cond_3
    move/from16 v9, v17

    .line 79
    :goto_1
    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v16, v9

    const/4 v9, 0x3

    .line 80
    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move/from16 v9, v16

    move-object/from16 v16, v6

    :goto_2
    const/16 v6, 0x30

    move/from16 v17, v9

    const/16 v9, 0x31

    if-eq v2, v6, :cond_5

    if-eq v2, v9, :cond_5

    const v6, 0x800035

    if-ne v2, v6, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v6, v16

    move/from16 v9, v17

    move/from16 v16, v14

    goto :goto_5

    .line 84
    :cond_5
    :goto_3
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v16, v14

    const/16 v14, 0xc

    .line 85
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-ne v2, v9, :cond_6

    const/16 v9, 0xe

    .line 87
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move/from16 v9, v16

    goto :goto_4

    :cond_6
    move/from16 v9, v17

    .line 91
    :goto_4
    invoke-virtual {v15, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, 0x43340000    # 180.0f

    .line 92
    invoke-virtual {v15, v6}, Landroid/view/View;->setRotation(F)V

    .line 94
    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, 0x2

    .line 95
    invoke-virtual {v6, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_5
    const v14, 0x800013

    move-object/from16 v17, v6

    const/16 v6, 0xf

    if-ne v2, v14, :cond_8

    .line 99
    sget v9, Lcom/transsion/widgetslib/R$drawable;->os_popup_tip_arrow:I

    invoke-static {v1, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_7

    return-void

    .line 103
    :cond_7
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v18, v12

    const/16 v12, 0x15

    .line 104
    invoke-virtual {v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 105
    invoke-virtual {v14, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    sget v12, Lcom/transsion/widgetslib/R$dimen;->os_popup_tip_arrow_height:I

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    iput v12, v14, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 107
    sget v12, Lcom/transsion/widgetslib/R$dimen;->os_popup_tip_arrow_width:I

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    iput v12, v14, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 108
    invoke-virtual {v15, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v14, 0x42b40000    # 90.0f

    invoke-static {v9, v14}, Lcom/transsion/widgetslib/widget/OSPopupTip;->drawableToBitmap2(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v12, v4, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v15, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v12, 0x10

    .line 112
    invoke-virtual {v9, v12, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 113
    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v17, v9

    move/from16 v9, v16

    goto :goto_6

    :cond_8
    move-object/from16 v18, v12

    :goto_6
    const v12, 0x800015

    if-ne v2, v12, :cond_a

    .line 119
    sget v9, Lcom/transsion/widgetslib/R$drawable;->os_popup_tip_arrow:I

    invoke-static {v1, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_9

    return-void

    .line 123
    :cond_9
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v14, 0x14

    .line 124
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    invoke-virtual {v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 126
    sget v14, Lcom/transsion/widgetslib/R$dimen;->os_popup_tip_arrow_height:I

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    iput v14, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 127
    sget v14, Lcom/transsion/widgetslib/R$dimen;->os_popup_tip_arrow_width:I

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    iput v14, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 128
    invoke-virtual {v15, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v14, -0x3d4c0000    # -90.0f

    invoke-static {v9, v14}, Lcom/transsion/widgetslib/widget/OSPopupTip;->drawableToBitmap2(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v12, v4, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v15, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0x11

    .line 132
    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 133
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move/from16 v9, v16

    goto :goto_7

    :cond_a
    move-object/from16 v4, v17

    :goto_7
    if-nez v4, :cond_b

    return-void

    .line 142
    :cond_b
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v4

    .line 146
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v6

    sub-int v10, v9, v4

    sub-int/2addr v10, v6

    .line 149
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v4, v4

    add-float/2addr v0, v4

    int-to-float v4, v6

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 150
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 151
    sget-object v4, Lcom/transsion/widgetslib/widget/OSPopupTip;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "showPopupTip, textRemainSpace: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", popupWidthTmp: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", popupWidthMax: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", popupWidth: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v6, Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    invoke-direct {v6, v13, v12, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 153
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {v6, v13}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 155
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 156
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 158
    new-instance v4, Lcom/transsion/widgetslib/widget/OSPopupTip$1;

    invoke-direct {v4, v13, v1}, Lcom/transsion/widgetslib/widget/OSPopupTip$1;-><init>(Landroid/view/View;Landroid/content/Context;)V

    .line 179
    invoke-virtual {v6, v4}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 180
    invoke-virtual {v6, v4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    const/4 v1, 0x0

    .line 182
    invoke-virtual {v6, v3, v1, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 184
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setClipToOutline(Z)V

    .line 185
    new-instance v14, Lcom/transsion/widgetslib/widget/OSPopupTip$2;

    move-object v0, v14

    move v1, v8

    move/from16 v2, p2

    move-object/from16 v3, p0

    move v4, v5

    move-object v5, v6

    move/from16 v6, p3

    move/from16 v8, p4

    move v9, v12

    move-object v10, v15

    move-object v15, v11

    move-object v11, v13

    move-object/from16 v12, v18

    move-object v13, v15

    move-object/from16 v19, v14

    move/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/transsion/widgetslib/widget/OSPopupTip$2;-><init>(IILandroid/view/View;ILandroid/widget/PopupWindow;IIIILandroid/view/View;Landroid/view/View;Landroid/util/DisplayMetrics;Landroid/widget/TextView;I)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
