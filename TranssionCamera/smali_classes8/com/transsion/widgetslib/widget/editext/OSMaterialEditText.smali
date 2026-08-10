.class public Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
.super Landroid/widget/RelativeLayout;
.source "OSMaterialEditText.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;,
        Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OnInputNumListener;
    }
.end annotation


# instance fields
.field private LEFT:I

.field private LEFT_BIG_IMAGE_TYPE_1:I

.field private LEFT_BIG_IMAGE_TYPE_2:I

.field private NONE:I

.field private RIGHT:I

.field private RIGHT_BIG_IMAGE:I

.field private mActiveColor:I

.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/widget/ImageView;

.field private mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

.field private mErrorColor:I

.field private mErrorText:Landroid/widget/TextView;

.field private mHasContent:Z

.field private mHasFocus:Z

.field private mLabel:Landroid/widget/TextView;

.field private mLabelText:Ljava/lang/String;

.field private mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftImage:Landroid/widget/ImageView;

.field private mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftSecondImage:Landroid/widget/ImageView;

.field private mLeftText:Ljava/lang/String;

.field private mLeftTextView:Landroid/widget/TextView;

.field private mLeftlayout:Landroid/view/View;

.field private mNormalColor:I

.field private mNumText:Landroid/widget/TextView;

.field private mOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OnInputNumListener;

.field private mRightButtonText:Ljava/lang/String;

.field private mRightDivider:Landroid/view/View;

.field private mRightImage:Landroid/widget/ImageView;

.field private mRightImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightText:Ljava/lang/String;

.field private mRightTextButton:Landroid/widget/TextView;

.field private mRightTextView:Landroid/widget/TextView;

.field private mRightlayout:Landroid/view/View;

.field private mRootEditTextLayout:Landroid/view/View;

.field private mRootLayout:Landroid/view/View;

.field private mShowDelete:Z

.field private mShowDivider:Z

.field private mShowError:Z

.field private mTextNum:I

.field private mTipInputMax:Ljava/lang/String;

.field private mType:I

.field private mUnderlineView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 38
    iput p3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->NONE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->RIGHT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->RIGHT_BIG_IMAGE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT_BIG_IMAGE_TYPE_1:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT_BIG_IMAGE_TYPE_2:I

    .line 85
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    .line 87
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v0, p3

    :goto_0
    if-ge v0, p2, :cond_b

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 91
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_layout_type:I

    if-ne v1, v2, :cond_0

    .line 92
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mType:I

    goto/16 :goto_1

    .line 93
    :cond_0
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_show_delete:I

    if-ne v1, v2, :cond_1

    .line 94
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowDelete:Z

    goto :goto_1

    .line 95
    :cond_1
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_image:I

    if-ne v1, v2, :cond_2

    .line 96
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 97
    :cond_2
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_label:I

    if-ne v1, v2, :cond_3

    .line 98
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLabelText:Ljava/lang/String;

    goto :goto_1

    .line 99
    :cond_3
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_text:I

    if-ne v1, v2, :cond_4

    .line 100
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightText:Ljava/lang/String;

    goto :goto_1

    .line 101
    :cond_4
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_show_divide_line:I

    if-ne v1, v2, :cond_5

    .line 102
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowDivider:Z

    goto :goto_1

    .line 103
    :cond_5
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_left_image:I

    if-ne v1, v2, :cond_6

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 105
    :cond_6
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_left_image_secord:I

    if-ne v1, v2, :cond_7

    .line 106
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 107
    :cond_7
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_left_text:I

    if-ne v1, v2, :cond_8

    .line 108
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftText:Ljava/lang/String;

    goto :goto_1

    .line 109
    :cond_8
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_button_text:I

    if-ne v1, v2, :cond_9

    .line 110
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightButtonText:Ljava/lang/String;

    goto :goto_1

    .line 111
    :cond_9
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_show_error:I

    if-ne v1, v2, :cond_a

    .line 112
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowError:Z

    :cond_a
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 115
    :cond_b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTipInputMax:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private init()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_view_materal_edit_text_layout_base:I

    invoke-static {v0, v1, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_dialog_input_tip_max:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTipInputMax:Ljava/lang/String;

    .line 123
    sget v0, Lcom/transsion/widgetslib/R$id;->oet_edit_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    .line 125
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_left_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftlayout:Landroid/view/View;

    .line 126
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_right_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightlayout:Landroid/view/View;

    .line 127
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_second_root_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    .line 128
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_underline_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderlineView:Landroid/view/View;

    .line 129
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_root:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootEditTextLayout:Landroid/view/View;

    .line 130
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_error_hint:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorColor:I

    .line 133
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->os_gray_secondary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNormalColor:I

    .line 134
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->os_fill_primary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mActiveColor:I

    .line 136
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mType:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->RIGHT:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->RIGHT_BIG_IMAGE:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 173
    :cond_0
    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT_BIG_IMAGE_TYPE_1:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT_BIG_IMAGE_TYPE_2:I

    if-ne v0, v1, :cond_d

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftlayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_left_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftTextView:Landroid/widget/TextView;

    .line 177
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 182
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_left_edit_image_first:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftImage:Landroid/widget/ImageView;

    .line 183
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 188
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_left_edit_image_second:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondImage:Landroid/widget/ImageView;

    .line 189
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mType:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT:I

    if-eq v0, v1, :cond_d

    .line 194
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isXOSorITEL()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_magin_xos:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 197
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_text_field_padding_xos:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 195
    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setRootPaddingRelative(IIII)V

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 200
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 202
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    :cond_6
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 206
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 208
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 137
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightlayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 139
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_image_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImage:Landroid/widget/ImageView;

    .line 140
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_8
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mType:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->RIGHT_BIG_IMAGE:I

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 145
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isXOSorITEL()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 147
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_text_field_padding_xos:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 148
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_magin_xos:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 146
    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setRootPaddingRelative(IIII)V

    .line 150
    :cond_9
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 151
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 152
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 153
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 154
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    :cond_a
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowDivider:Z

    if-eqz v0, :cond_b

    .line 159
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightDivider:Landroid/view/View;

    .line 160
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_b
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 164
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_right_text_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextButton:Landroid/widget/TextView;

    .line 165
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_c
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 169
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_right_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextView:Landroid/widget/TextView;

    .line 170
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLabelText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 214
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_label:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLabel:Landroid/widget/TextView;

    .line 215
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLabelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :cond_e
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowError:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_f

    .line 220
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    :cond_f
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowDelete:Z

    if-eqz v0, :cond_10

    .line 224
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightlayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_delete_all:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDeleteButton:Landroid/widget/ImageView;

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDeleteButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$1;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    :cond_10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .line 325
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 326
    :goto_0
    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasContent:Z

    .line 327
    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasFocus:Z

    invoke-virtual {p0, v3, v4}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateDeleteButton(ZZ)V

    .line 329
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 330
    iget v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTextNum:I

    const-string v4, "/"

    const-string v5, "%d"

    if-ge v0, v3, :cond_1

    .line 331
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-array v7, v1, [Ljava/lang/Object;

    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v1, [Ljava/lang/Object;

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTextNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-ne v0, v3, :cond_2

    .line 334
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTextNum:I

    .line 335
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTextNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OnInputNumListener;

    if-eqz v0, :cond_3

    .line 340
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    invoke-interface {v0, p1, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OnInputNumListener;->onInputNum(Landroid/text/Editable;Landroid/widget/TextView;)V

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getDeleteButton()Landroid/widget/ImageView;
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDeleteButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method public getEditTextLabel()Landroid/widget/TextView;
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method public getErrorText()Landroid/widget/TextView;
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method public getLeftImage()Landroid/widget/ImageView;
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getLeftSecondImage()Landroid/widget/ImageView;
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getLeftTextView()Landroid/widget/TextView;
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getLeftlayout()Landroid/view/View;
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftlayout:Landroid/view/View;

    return-object p0
.end method

.method public getNumTextView()Landroid/widget/TextView;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRightDivider()Landroid/view/View;
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightDivider:Landroid/view/View;

    return-object p0
.end method

.method public getRightImage()Landroid/widget/ImageView;
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getRightText()Landroid/widget/TextView;
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRightTextButton()Landroid/widget/TextView;
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightTextButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRightlayout()Landroid/view/View;
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightlayout:Landroid/view/View;

    return-object p0
.end method

.method public getRootEditTextLayout()Landroid/view/View;
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootEditTextLayout:Landroid/view/View;

    return-object p0
.end method

.method public getRootLayout()Landroid/view/View;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    return-object p0
.end method

.method public getUnderlineView()Landroid/view/View;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderlineView:Landroid/view/View;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 240
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 241
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->setSelfOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 242
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 243
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 248
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 249
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 362
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasFocus:Z

    .line 363
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 364
    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 366
    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    .line 368
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasContent:Z

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateDeleteButton(ZZ)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 297
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateTextPadding()V

    .line 298
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 2

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasFocus:Z

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    goto :goto_1

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowError:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasFocus:Z

    invoke-virtual {p0, p1, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    :goto_1
    return-object p0
.end method

.method public setErrorLine(Z)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasFocus:Z

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    return-object p0
.end method

.method public setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OnInputNumListener;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 4

    .line 345
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_help_hint:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNumText:Landroid/widget/TextView;

    if-gtz p1, :cond_0

    const/4 p1, -0x1

    .line 347
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTextNum:I

    const/16 p1, 0x8

    .line 348
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 350
    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTextNum:I

    const/4 v1, 0x0

    .line 351
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;

    invoke-direct {v3, p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 354
    :goto_0
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OnInputNumListener;

    return-object p0
.end method

.method public setRootPaddingRelative(IIII)V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootLayout:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setTipInputMax(I)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object p0

    return-object p0
.end method

.method public setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mTipInputMax:Ljava/lang/String;

    return-object p0
.end method

.method public updateDeleteButton(ZZ)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 372
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 373
    :goto_1
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mHasFocus:Z

    .line 374
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mDeleteButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mShowDelete:Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 376
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateTextPadding()V

    goto :goto_2

    :cond_2
    const/4 p1, 0x4

    .line 379
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateTextPadding()V

    :cond_3
    :goto_2
    return-void
.end method

.method public updateTextPadding()V
    .locals 3

    .line 281
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mType:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->LEFT_BIG_IMAGE_TYPE_2:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootEditTextLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 283
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftlayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 284
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRootEditTextLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightlayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v2, v2, p0, v2}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftlayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightlayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    :goto_0
    return-void
.end method

.method public updateUnderlineView(ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 313
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderlineView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mErrorColor:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderlineView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mActiveColor:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mUnderlineView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mNormalColor:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
