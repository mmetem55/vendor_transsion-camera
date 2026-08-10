.class Lcom/transsion/widgetslib/widget/OSPopupTip$2;
.super Landroid/view/ViewOutlineProvider;
.source "OSPopupTip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSPopupTip;->show(Landroid/view/View;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$displayMetrics:Landroid/util/DisplayMetrics;

.field final synthetic val$gravity:I

.field final synthetic val$layout:Landroid/view/View;

.field final synthetic val$marginHorizontal:I

.field final synthetic val$maxWidthSpaceCenter:I

.field final synthetic val$offset:I

.field final synthetic val$popupWidth:I

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;

.field final synthetic val$radius:I

.field final synthetic val$viewAnchor:Landroid/view/View;

.field final synthetic val$viewArrow:Landroid/view/View;

.field final synthetic val$viewText:Landroid/widget/TextView;

.field final synthetic val$xoff:I

.field final synthetic val$yoff:I


# direct methods
.method constructor <init>(IILandroid/view/View;ILandroid/widget/PopupWindow;IIIILandroid/view/View;Landroid/view/View;Landroid/util/DisplayMetrics;Landroid/widget/TextView;I)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$radius:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iput p4, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    iput-object p5, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iput p6, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    iput p7, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    iput p8, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    iput p9, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iput-object p10, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    iput-object p11, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    iput-object p12, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$displayMetrics:Landroid/util/DisplayMetrics;

    iput-object p13, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewText:Landroid/widget/TextView;

    iput p14, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$maxWidthSpaceCenter:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 16

    move-object/from16 v0, p0

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v1, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$radius:I

    int-to-float v6, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 194
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/16 v7, 0x50

    if-ne v3, v7, :cond_2

    .line 195
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v6

    .line 198
    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    if-ge v3, v7, :cond_0

    sub-int/2addr v7, v3

    goto :goto_0

    :cond_0
    move v7, v6

    .line 202
    :goto_0
    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int v10, v3, v7

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v11, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v3, v11

    iget v11, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int/2addr v11, v3

    iget v12, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    const/4 v13, -0x2

    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 205
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v3, v8

    div-int/2addr v3, v1

    sub-int/2addr v3, v7

    .line 207
    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$radius:I

    if-ge v3, v7, :cond_1

    move v3, v7

    .line 210
    :cond_1
    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 212
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v7

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotX(F)V

    .line 213
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 216
    :cond_2
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const/16 v7, 0x51

    if-ne v3, v7, :cond_3

    .line 217
    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    sub-int/2addr v3, v7

    div-int/2addr v3, v1

    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int v10, v3, v7

    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v3, v7

    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int v11, v3, v7

    iget v12, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    const/4 v13, -0x2

    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 219
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotX(F)V

    .line 220
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 223
    :cond_3
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const v7, 0x800055

    if-ne v3, v7, :cond_5

    .line 224
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v6

    .line 225
    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v3, v7

    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    add-int/2addr v3, v7

    .line 227
    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    .line 229
    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v8, :cond_4

    sub-int/2addr v3, v8

    add-int/2addr v7, v3

    goto :goto_1

    :cond_4
    move v3, v6

    .line 234
    :goto_1
    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    sub-int/2addr v10, v7

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v11, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v7, v11

    iget v11, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int/2addr v11, v7

    iget v12, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    const/4 v13, -0x2

    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 237
    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v1

    sub-int/2addr v7, v8

    add-int/2addr v7, v3

    .line 239
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v3, v8

    iget v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$radius:I

    sub-int/2addr v3, v8

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 240
    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 242
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v7

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotX(F)V

    .line 243
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 246
    :cond_5
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const/16 v7, 0x30

    const/4 v8, 0x1

    if-ne v3, v7, :cond_9

    .line 247
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v6

    .line 250
    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    if-ge v3, v7, :cond_6

    sub-int/2addr v7, v3

    goto :goto_2

    :cond_6
    move v7, v6

    .line 255
    :goto_2
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_7

    .line 256
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewText:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$000(Landroid/widget/TextView;)I

    move-result v3

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v3, v9

    move v14, v3

    goto :goto_3

    :cond_7
    move v14, v8

    .line 258
    :goto_3
    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int v11, v3, v7

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v3, v14

    neg-int v3, v3

    iget v12, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int/2addr v12, v3

    iget v13, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    invoke-virtual/range {v9 .. v14}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 260
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v3, v9

    div-int/2addr v3, v1

    sub-int/2addr v3, v7

    .line 262
    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$radius:I

    if-ge v3, v7, :cond_8

    move v3, v7

    .line 265
    :cond_8
    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 267
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v7

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    add-float/2addr v7, v9

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotX(F)V

    .line 268
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotY(F)V

    .line 271
    :cond_9
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const/16 v7, 0x31

    if-ne v3, v7, :cond_b

    .line 273
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_a

    .line 274
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewText:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$000(Landroid/widget/TextView;)I

    move-result v3

    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v3, v7

    move v14, v3

    goto :goto_4

    :cond_a
    move v14, v8

    .line 276
    :goto_4
    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v13, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    sub-int/2addr v3, v13

    div-int/2addr v3, v1

    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int v11, v3, v7

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v3, v14

    neg-int v3, v3

    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int v12, v3, v7

    invoke-virtual/range {v9 .. v14}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 278
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotX(F)V

    .line 279
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotY(F)V

    .line 282
    :cond_b
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const v7, 0x800035

    if-ne v3, v7, :cond_e

    .line 283
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v6

    .line 284
    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v3, v7

    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    add-int/2addr v3, v7

    .line 287
    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    if-lez v7, :cond_c

    .line 288
    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewText:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$000(Landroid/widget/TextView;)I

    move-result v7

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v7, v9

    move v14, v7

    goto :goto_5

    :cond_c
    move v14, v8

    .line 290
    :goto_5
    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v7, v9

    .line 292
    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$displayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v9, :cond_d

    sub-int/2addr v3, v9

    add-int/2addr v7, v3

    goto :goto_6

    :cond_d
    move v3, v6

    .line 296
    :goto_6
    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v11, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    sub-int/2addr v11, v7

    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v7, v14

    neg-int v7, v7

    iget v12, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int/2addr v12, v7

    iget v13, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    invoke-virtual/range {v9 .. v14}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 298
    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v7, v9

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/2addr v9, v1

    sub-int/2addr v7, v9

    add-int/2addr v7, v3

    .line 300
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v3, v9

    iget v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$radius:I

    sub-int/2addr v3, v9

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 301
    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 303
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v7

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    add-float/2addr v7, v9

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotX(F)V

    .line 304
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotY(F)V

    .line 307
    :cond_e
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const v7, 0x800013

    const/high16 v9, 0x3f000000    # 0.5f

    if-ne v3, v7, :cond_10

    .line 308
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 309
    invoke-static/range {p1 .. p1}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$100(Landroid/view/View;)I

    move-result v3

    aget v7, v2, v6

    .line 310
    iget v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    mul-int/2addr v10, v1

    sub-int/2addr v7, v10

    sub-int/2addr v7, v3

    .line 311
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$maxWidthSpaceCenter:I

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    add-float/2addr v3, v7

    float-to-int v3, v3

    .line 312
    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v7, v10

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 316
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_f

    .line 317
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewText:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$000(Landroid/widget/TextView;)I

    move-result v3

    move v15, v3

    goto :goto_7

    :cond_f
    move v15, v8

    .line 319
    :goto_7
    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v11, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v3, v14

    neg-int v3, v3

    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int v12, v3, v7

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v15

    div-int/2addr v3, v1

    iget v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int v13, v3, v7

    invoke-virtual/range {v10 .. v15}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 321
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotX(F)V

    .line 322
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotY(F)V

    .line 325
    :cond_10
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const v7, 0x800015

    if-ne v3, v7, :cond_12

    .line 326
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 327
    invoke-static/range {p1 .. p1}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$100(Landroid/view/View;)I

    move-result v3

    .line 328
    invoke-static/range {p1 .. p1}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$200(Landroid/view/View;)I

    move-result v7

    .line 329
    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$displayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v2, v2, v6

    iget-object v6, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    sub-int/2addr v10, v2

    iget v2, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    mul-int/2addr v2, v1

    sub-int/2addr v10, v2

    add-int/2addr v10, v3

    add-int/2addr v10, v7

    .line 330
    iget v2, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$maxWidthSpaceCenter:I

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 331
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iget-object v6, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 336
    iget-object v2, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_11

    .line 337
    iget-object v2, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewText:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$000(Landroid/widget/TextView;)I

    move-result v8

    :cond_11
    move v14, v8

    .line 339
    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int v11, v2, v3

    iget-object v2, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v14

    div-int/2addr v2, v1

    iget v1, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int v12, v2, v1

    invoke-virtual/range {v9 .. v14}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 341
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 342
    iget-object v0, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_12
    return-void
.end method
