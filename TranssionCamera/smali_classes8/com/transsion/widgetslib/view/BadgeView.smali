.class public Lcom/transsion/widgetslib/view/BadgeView;
.super Landroid/view/View;
.source "BadgeView.java"


# static fields
.field private static final DOT_WIDTH_BIG:I = 0xc

.field private static final DOT_WIDTH_MEDIUM:I = 0x8

.field private static final DOT_WIDTH_SMALL:I = 0x6

.field public static final OSRedPointTypeBig:I = 0x2

.field public static final OSRedPointTypeMedium:I = 0x1

.field public static final OSRedPointTypeNumBig:I = 0x5

.field public static final OSRedPointTypeNumMedium:I = 0x4

.field public static final OSRedPointTypeNumSmall:I = 0x3

.field public static final OSRedPointTypeSmall:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RedPointView"


# instance fields
.field private corner:I

.field private mBackgroundColor:I

.field private mContext:Landroid/content/Context;

.field private mCurrentRedPointType:I

.field private mHaveOuterCircle:Z

.field private mHeight:I

.field private mNumColor:I

.field private mNumText:Ljava/lang/String;

.field private mOutCircleWidth:I

.field private mOuterCircleBgColor:I

.field private mOuterRectf:Landroid/graphics/RectF;

.field private mPadding:I

.field private mPaintBg:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private mPlusWidth:F

.field private mRectf:Landroid/graphics/RectF;

.field private mTextSize:I

.field private mTextWidth:F

.field private mWidth:I

.field private plusTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "#FFFFFF"

    .line 27
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumColor:I

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mCurrentRedPointType:I

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/view/BadgeView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static dp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 225
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 224
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getNotWidthByType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 p0, 0xc

    return p0

    :cond_1
    const/16 p0, 0x8

    return p0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 76
    iput-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mRectf:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mOuterRectf:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintBg:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSRedPointTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 84
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSRedPointTextView_osRedPointTextViewType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/BadgeView;->mCurrentRedPointType:I

    .line 85
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSRedPointTextView_osRedPointTextViewNum:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/BadgeView;->setNum(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    .line 86
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSRedPointTextView_osRedPointTextViewHaveOuterCircle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHaveOuterCircle:Z

    new-array p2, v1, [I

    .line 87
    sget v2, Lcom/transsion/widgetslib/R$attr;->OsBgPrimary:I

    aput v2, p2, v0

    .line 88
    iget-object v2, p0, Lcom/transsion/widgetslib/view/BadgeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 89
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSRedPointTextView_osRedPointTextViewBg:I

    const-string v3, "#FF575C"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/BadgeView;->mBackgroundColor:I

    .line 90
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSRedPointTextView_osRedPointTextViewOutCircleBg:I

    iget-object v3, p0, Lcom/transsion/widgetslib/view/BadgeView;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$color;->os_bg_primary_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mOuterCircleBgColor:I

    .line 91
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mOutCircleWidth:I

    .line 94
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mCurrentRedPointType:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/BadgeView;->setRedPointType(I)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 0

    .line 238
    iget p0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mBackgroundColor:I

    return p0
.end method

.method public getRedPointType()I
    .locals 0

    .line 220
    iget p0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mCurrentRedPointType:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 250
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 252
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHaveOuterCircle:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintBg:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mOuterCircleBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mOuterRectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgetslib/view/BadgeView;->corner:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 255
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintBg:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mRectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgetslib/view/BadgeView;->corner:I

    iget v2, p0, Lcom/transsion/widgetslib/view/BadgeView;->mOutCircleWidth:I

    sub-int v3, v1, v2

    int-to-float v3, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintBg:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mOuterRectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgetslib/view/BadgeView;->corner:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 263
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 264
    iget v1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 265
    iget v1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextWidth:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 266
    iget-object v3, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v5, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 268
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/view/BadgeView;->plusTextSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 269
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 270
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v3, v0

    div-float/2addr v0, v2

    sub-float/2addr v0, v3

    .line 271
    iget v2, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    .line 272
    iget v2, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextWidth:F

    iget v3, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPlusWidth:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget p0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextSize:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 243
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 244
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    iget p2, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mBackgroundColor:I

    .line 283
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mCurrentRedPointType:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/BadgeView;->setRedPointType(I)V

    return-void
.end method

.method public setNum(I)Ljava/lang/String;
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    const-string p1, "99+"

    .line 231
    iput-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    .line 233
    :cond_0
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mCurrentRedPointType:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/BadgeView;->setRedPointType(I)V

    .line 234
    iget-object p0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    return-object p0
.end method

.method public setRedPointType(I)V
    .locals 9

    .line 98
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintBg:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mCurrentRedPointType:I

    const/4 v0, 0x6

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_e

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eq p1, v4, :cond_d

    const/16 v5, 0xc

    if-eq p1, v1, :cond_c

    const/4 v6, 0x3

    const/4 v7, 0x4

    const-string v8, "+"

    if-eq p1, v6, :cond_8

    if-eq p1, v7, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 p1, 0x14

    .line 175
    invoke-static {p1}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    .line 176
    invoke-static {v7}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPadding:I

    .line 177
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHaveOuterCircle:Z

    if-eqz v0, :cond_1

    .line 178
    iget v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mOutCircleWidth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPadding:I

    .line 180
    :cond_1
    invoke-static {v5}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextSize:I

    .line 181
    invoke-static {v3}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->plusTextSize:I

    .line 182
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 183
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 184
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 185
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 186
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 187
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/view/BadgeView;->plusTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 188
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPlusWidth:F

    add-float/2addr p1, v0

    .line 189
    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextWidth:F

    goto :goto_0

    .line 191
    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextWidth:F

    .line 193
    :goto_0
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextWidth:F

    iget v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPadding:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    goto/16 :goto_3

    .line 195
    :cond_3
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    goto/16 :goto_3

    :cond_4
    const/16 p1, 0x10

    .line 149
    invoke-static {p1}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    .line 150
    invoke-static {v7}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mOutCircleWidth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPadding:I

    .line 151
    iget-boolean v5, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHaveOuterCircle:Z

    if-eqz v5, :cond_5

    sub-int/2addr p1, v0

    .line 152
    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPadding:I

    :cond_5
    const/16 p1, 0xa

    .line 154
    invoke-static {p1}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextSize:I

    .line 155
    invoke-static {v3}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->plusTextSize:I

    .line 156
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 157
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 158
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 159
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 161
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/view/BadgeView;->plusTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 162
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPlusWidth:F

    add-float/2addr p1, v0

    .line 163
    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextWidth:F

    goto :goto_1

    .line 165
    :cond_6
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextWidth:F

    .line 167
    :goto_1
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextWidth:F

    iget v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPadding:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    goto/16 :goto_3

    .line 169
    :cond_7
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    goto/16 :goto_3

    :cond_8
    const/16 p1, 0xe

    .line 124
    invoke-static {p1}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    .line 125
    invoke-static {v7}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPadding:I

    .line 126
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHaveOuterCircle:Z

    if-eqz v3, :cond_9

    .line 127
    iget v3, p0, Lcom/transsion/widgetslib/view/BadgeView;->mOutCircleWidth:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPadding:I

    :cond_9
    const/16 p1, 0x9

    .line 129
    invoke-static {p1}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextSize:I

    .line 130
    invoke-static {v0}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->plusTextSize:I

    .line 131
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 132
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 133
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 134
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 136
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/view/BadgeView;->plusTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 137
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPlusWidth:F

    add-float/2addr p1, v0

    .line 138
    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextWidth:F

    goto :goto_2

    .line 140
    :cond_a
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextWidth:F

    .line 142
    :goto_2
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextWidth:F

    iget v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPadding:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    goto :goto_3

    .line 144
    :cond_b
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    goto :goto_3

    .line 117
    :cond_c
    invoke-static {v5}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    .line 118
    invoke-static {v2}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPadding:I

    .line 119
    invoke-static {v2}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextSize:I

    .line 120
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    goto :goto_3

    .line 110
    :cond_d
    invoke-static {v3}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    .line 111
    invoke-static {v2}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPadding:I

    .line 112
    invoke-static {v2}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextSize:I

    .line 113
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    goto :goto_3

    .line 103
    :cond_e
    invoke-static {v0}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    .line 104
    invoke-static {v2}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPadding:I

    .line 105
    invoke-static {v2}, Lcom/transsion/widgetslib/view/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextSize:I

    .line 106
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    .line 201
    :goto_3
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 202
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHaveOuterCircle:Z

    if-eqz p1, :cond_f

    .line 203
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    iget v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mOutCircleWidth:I

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr p1, v2

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    .line 204
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    mul-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    .line 206
    :cond_f
    iget p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->corner:I

    .line 207
    iget v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    .line 208
    iget-object v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mOuterRectf:Landroid/graphics/RectF;

    int-to-float p1, p1

    iget v1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 209
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHaveOuterCircle:Z

    if-eqz p1, :cond_10

    .line 210
    iget-object p1, p0, Lcom/transsion/widgetslib/view/BadgeView;->mRectf:Landroid/graphics/RectF;

    iget v0, p0, Lcom/transsion/widgetslib/view/BadgeView;->mOutCircleWidth:I

    int-to-float v1, v0

    int-to-float v2, v0

    iget v3, p0, Lcom/transsion/widgetslib/view/BadgeView;->mWidth:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/widgetslib/view/BadgeView;->mHeight:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 215
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
