.class public Lcom/transsion/widgetslib/view/OSCheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "OSCheckedTextView.java"


# static fields
.field private static final DRAWABLE_STYLE_CHECK:I = 0x2

.field private static final DRAWABLE_STYLE_NOTHING:I = 0x0

.field private static final DRAWABLE_STYLE_RADIO:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCheckedDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCheckedDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCheckedDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCheckedDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCheckedDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mDrawableStyle:I

.field private mListDrawableBottom:Landroid/graphics/drawable/StateListDrawable;

.field private mListDrawableCheckMark:Landroid/graphics/drawable/StateListDrawable;

.field private mListDrawableEnd:Landroid/graphics/drawable/StateListDrawable;

.field private mListDrawableStart:Landroid/graphics/drawable/StateListDrawable;

.field private mListDrawableTop:Landroid/graphics/drawable/StateListDrawable;

.field private mNormalDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mNormalDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mNormalDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mNormalDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mNormalDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/transsion/widgetslib/view/OSCheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    const/4 p1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    .line 60
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    .line 65
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getReverseDrawableBean()Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;
    .locals 2

    .line 210
    iget v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckDrawables(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSCheckedTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 73
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 74
    sget v4, Lcom/transsion/widgetslib/R$styleable;->OSCheckedTextView_check_mark_style:I

    if-ne v3, v4, :cond_0

    .line 75
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    .line 83
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->initDrawableCheckMark()V

    :cond_3
    return-void
.end method

.method private initDrawableBottom()V
    .locals 3

    .line 177
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableBottom:Landroid/graphics/drawable/StateListDrawable;

    .line 185
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 188
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 189
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 192
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcom/transsion/widgetslib/drawable/ReversibleDrawable;Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method private initDrawableCheckMark()V
    .locals 3

    .line 93
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 95
    iget v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableCheckMark:Landroid/graphics/drawable/StateListDrawable;

    .line 103
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 108
    :cond_3
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 109
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 112
    :cond_4
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcom/transsion/widgetslib/drawable/ReversibleDrawable;Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method private initDrawableEnd()V
    .locals 3

    .line 137
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableEnd:Landroid/graphics/drawable/StateListDrawable;

    .line 145
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 148
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 149
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 152
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcom/transsion/widgetslib/drawable/ReversibleDrawable;Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method private initDrawableStart()V
    .locals 3

    .line 117
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableStart:Landroid/graphics/drawable/StateListDrawable;

    .line 125
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 128
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 132
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcom/transsion/widgetslib/drawable/ReversibleDrawable;Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method private initDrawableTop()V
    .locals 3

    .line 157
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableTop:Landroid/graphics/drawable/StateListDrawable;

    .line 165
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 168
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 169
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 172
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcom/transsion/widgetslib/drawable/ReversibleDrawable;Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method private toReverseDrawableBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 316
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 317
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    .line 318
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->initDrawableBottom()V

    .line 319
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableBottom:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 320
    :cond_0
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private toReverseDrawableEnd(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 344
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 345
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    .line 346
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->initDrawableEnd()V

    .line 347
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableEnd:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 348
    :cond_0
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private toReverseDrawableStart(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 358
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 359
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    .line 360
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->initDrawableStart()V

    .line 361
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableStart:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 362
    :cond_0
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private toReverseDrawableTop(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 330
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 331
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    .line 332
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->initDrawableTop()V

    .line 333
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableTop:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 334
    :cond_0
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public getCurrentDrawable(ZLcom/transsion/widgetslib/drawable/ReversibleDrawable;Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)Lcom/transsion/widgetslib/drawable/ReversibleDrawable;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    return-object p2
.end method

.method public getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 198
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 199
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010219

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 391
    invoke-super {p0}, Landroid/widget/CheckedTextView;->onDetachedFromWindow()V

    .line 392
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v0, :cond_0

    .line 393
    invoke-interface {v0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v0, :cond_1

    .line 396
    invoke-interface {v0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v0, :cond_2

    .line 399
    invoke-interface {v0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v0, :cond_3

    .line 402
    invoke-interface {v0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    .line 404
    :cond_3
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz p0, :cond_4

    .line 405
    invoke-interface {p0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    :cond_4
    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 218
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableCheckMark:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 220
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 221
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    .line 227
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 228
    sget-object v0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked, checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getParent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_0

    if-ne v1, v2, :cond_0

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableCheckMark: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-ne v1, v3, :cond_1

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableCheckMark: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 240
    :goto_0
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 241
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-interface {v2, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v3, :cond_7

    if-eqz p1, :cond_4

    if-ne v1, v2, :cond_4

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableStart: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    if-nez p1, :cond_5

    if-ne v1, v3, :cond_5

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableStart: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move-object v2, v3

    .line 257
    :goto_1
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 258
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 259
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-interface {v2, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    .line 263
    :cond_7
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_b

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v3, :cond_b

    if-eqz p1, :cond_8

    if-ne v1, v2, :cond_8

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableEnd: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    if-nez p1, :cond_9

    if-ne v1, v3, :cond_9

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableEnd: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move-object v2, v3

    .line 274
    :goto_2
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 275
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 276
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-interface {v2, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    .line 280
    :cond_b
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v3, :cond_f

    if-eqz p1, :cond_c

    if-ne v1, v2, :cond_c

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableTop: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p1, :cond_d

    if-ne v1, v3, :cond_d

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableTop: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    if-eqz p1, :cond_e

    goto :goto_3

    :cond_e
    move-object v2, v3

    .line 291
    :goto_3
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 292
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 293
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-interface {v2, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    .line 297
    :cond_f
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_13

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_13

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v3, :cond_13

    if-eqz p1, :cond_10

    if-ne v1, v2, :cond_10

    .line 299
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableBottom: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    if-nez p1, :cond_11

    if-ne v1, v3, :cond_11

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableBottom: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    if-eqz p1, :cond_12

    goto :goto_4

    :cond_12
    move-object v2, v3

    .line 308
    :goto_4
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 309
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 310
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-interface {p0, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    :cond_13
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 373
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableStart(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 374
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableEnd(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 375
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableTop(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 376
    invoke-direct {p0, p4}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 377
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 382
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableStart(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 383
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableEnd(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 384
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableTop(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 385
    invoke-direct {p0, p4}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 386
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
