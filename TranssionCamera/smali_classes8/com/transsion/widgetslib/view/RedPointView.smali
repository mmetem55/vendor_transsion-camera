.class public Lcom/transsion/widgetslib/view/RedPointView;
.super Landroid/view/View;
.source "RedPointView.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final OSRedPointTypeBig:I = 0x2

.field public static final OSRedPointTypeMedium:I = 0x1

.field public static final OSRedPointTypeNumBig:I = 0x5

.field public static final OSRedPointTypeNumMedium:I = 0x4

.field public static final OSRedPointTypeNumSmall:I = 0x3

.field public static final OSRedPointTypeSmall:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RedPointView"


# instance fields
.field private backgroundColor:I

.field private corner:I

.field private mCurrentRedPointType:I

.field private mHeight:I

.field private mNumColor:I

.field private mNumText:Ljava/lang/String;

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

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/RedPointView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "#FB2C2F"

    .line 25
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->backgroundColor:I

    const-string v0, "#FFFFFF"

    .line 26
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumColor:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mCurrentRedPointType:I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/view/RedPointView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static dp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 157
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 156
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mRectf:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintBg:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSRedPointTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 62
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSRedPointTextView_osRedPointTextViewType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/RedPointView;->mCurrentRedPointType:I

    .line 63
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSRedPointTextView_osRedPointTextViewNum:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/RedPointView;->setNum(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    iget p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mCurrentRedPointType:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/RedPointView;->setRedPointType(I)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 0

    .line 172
    iget p0, p0, Lcom/transsion/widgetslib/view/RedPointView;->backgroundColor:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 184
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 185
    iget-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mRectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgetslib/view/RedPointView;->corner:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 186
    iget-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 188
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 189
    iget v1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 190
    iget v1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextWidth:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 191
    iget v3, p0, Lcom/transsion/widgetslib/view/RedPointView;->mCurrentRedPointType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v5, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 193
    iget-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/view/RedPointView;->plusTextSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    iget-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 195
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v3, v0

    div-float/2addr v0, v2

    sub-float/2addr v0, v3

    .line 196
    iget v2, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    .line 197
    iget v2, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextWidth:F

    iget v3, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPlusWidth:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 198
    iget-object p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    iget p0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextSize:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 177
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 178
    iget p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    iget p2, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->backgroundColor:I

    .line 207
    iget p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mCurrentRedPointType:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/RedPointView;->setRedPointType(I)V

    return-void
.end method

.method public setNum(I)Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    .line 162
    iget v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mCurrentRedPointType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x63

    if-le p1, v1, :cond_1

    const-string p1, "99+"

    .line 164
    iput-object p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    .line 167
    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/RedPointView;->setRedPointType(I)V

    .line 168
    iget-object p0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    return-object p0
.end method

.method public setRedPointType(I)V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintBg:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/RedPointView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mCurrentRedPointType:I

    const/4 v0, 0x6

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    const/4 v3, 0x1

    if-eq p1, v3, :cond_8

    const/16 v4, 0xc

    if-eq p1, v1, :cond_7

    const/16 v5, 0x9

    const/4 v6, 0x3

    if-eq p1, v6, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 p1, 0x14

    .line 123
    invoke-static {p1}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    .line 124
    invoke-static {v6}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPadding:I

    .line 125
    invoke-static {v4}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextSize:I

    .line 126
    invoke-static {v5}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->plusTextSize:I

    .line 127
    iget-object p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    iget-object p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 129
    iget-object p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 131
    iget-object v2, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 132
    iget-object v2, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    invoke-static {v5}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-object v2, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPlusWidth:F

    add-float/2addr p1, v0

    .line 134
    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextWidth:F

    goto :goto_0

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextWidth:F

    .line 138
    :goto_0
    iget p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextWidth:F

    iget v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPadding:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    goto/16 :goto_1

    .line 140
    :cond_2
    iget p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    goto/16 :goto_1

    :cond_3
    const/16 p1, 0x13

    .line 109
    invoke-static {p1}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    .line 110
    invoke-static {v0}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPadding:I

    .line 111
    invoke-static {v4}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextSize:I

    .line 112
    iget-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    iget-object p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 114
    iget-object p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextWidth:F

    .line 115
    iget v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPadding:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    goto/16 :goto_1

    .line 117
    :cond_4
    iget p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    goto/16 :goto_1

    :cond_5
    const/16 p1, 0xe

    .line 95
    invoke-static {p1}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    .line 96
    invoke-static {v6}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPadding:I

    .line 97
    invoke-static {v5}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextSize:I

    .line 98
    invoke-static {v0}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->plusTextSize:I

    .line 99
    iget-object p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    iget-object p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 101
    iget-object p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextWidth:F

    .line 102
    iget v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPadding:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    goto :goto_1

    .line 104
    :cond_6
    iget p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    goto :goto_1

    .line 88
    :cond_7
    invoke-static {v4}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    .line 89
    invoke-static {v2}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPadding:I

    .line 90
    invoke-static {v2}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextSize:I

    .line 91
    iget p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    goto :goto_1

    :cond_8
    const/16 p1, 0x8

    .line 81
    invoke-static {p1}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    .line 82
    invoke-static {v2}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPadding:I

    .line 83
    invoke-static {v2}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextSize:I

    .line 84
    iget p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    goto :goto_1

    .line 74
    :cond_9
    invoke-static {v0}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    .line 75
    invoke-static {v2}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPadding:I

    .line 76
    invoke-static {v2}, Lcom/transsion/widgetslib/view/RedPointView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextSize:I

    .line 77
    iget p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    .line 145
    :goto_1
    iget p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    div-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->corner:I

    .line 146
    iget-object p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mPaintText:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    iget p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    iget v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mWidth:I

    .line 148
    iget-object v0, p0, Lcom/transsion/widgetslib/view/RedPointView;->mRectf:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 149
    iput v1, v0, Landroid/graphics/RectF;->top:F

    int-to-float p1, p1

    .line 150
    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 151
    iget p1, p0, Lcom/transsion/widgetslib/view/RedPointView;->mHeight:I

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
