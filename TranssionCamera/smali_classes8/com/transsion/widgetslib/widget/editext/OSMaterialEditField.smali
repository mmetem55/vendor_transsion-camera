.class public Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
.super Landroid/widget/RelativeLayout;
.source "OSMaterialEditField.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$OnInputNumListener;
    }
.end annotation


# instance fields
.field private mBGLayout:Landroid/view/View;

.field private mBGRadius:I

.field private mContext:Landroid/content/Context;

.field private mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

.field private mErrorColor:I

.field private mErrorText:Landroid/widget/TextView;

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mLabel:Landroid/widget/TextView;

.field private mLabelText:Ljava/lang/String;

.field private mNormalColor:I

.field private mNumText:Landroid/widget/TextView;

.field private mOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$OnInputNumListener;

.field private mRootLayout:Landroid/view/View;

.field private mShowError:Z

.field private mTextNum:I

.field private mTipInputMax:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    .line 56
    sget-object p3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 59
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 60
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_field_label:I

    if-ne v2, v3, :cond_0

    .line 61
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabelText:Ljava/lang/String;

    goto :goto_1

    .line 62
    :cond_0
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_show_error:I

    if-ne v2, v3, :cond_1

    .line 63
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mShowError:Z

    goto :goto_1

    .line 64
    :cond_1
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_field_radius:I

    if-ne v2, v3, :cond_2

    const/4 v3, 0x6

    .line 65
    invoke-static {p1, v3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBGRadius:I

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_view_materal_edit_field_layout_base:I

    invoke-static {v0, v1, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_dialog_input_tip_max:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTipInputMax:Ljava/lang/String;

    .line 76
    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_edit_field:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    .line 77
    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_edit_text_error_hint:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorText:Landroid/widget/TextView;

    .line 78
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mShowError:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :cond_0
    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_second_root_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mRootLayout:Landroid/view/View;

    .line 82
    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_edit_field_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBGLayout:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorColor:I

    .line 85
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->os_gray_quaternary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNormalColor:I

    .line 87
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 88
    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBGRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 90
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mBGLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabelText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 93
    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_edit_text_label:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabel:Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabelText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :cond_1
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isXOSorITEL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_magin_xos:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 101
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 99
    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->setRootPaddingRelative(IIII)V

    .line 102
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 104
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 105
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 106
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .line 196
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 197
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 198
    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTextNum:I

    const-string v2, "/"

    const/4 v3, 0x0

    const-string v4, "%d"

    const/4 v5, 0x1

    if-ge v0, v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-array v7, v5, [Ljava/lang/Object;

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTextNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-array v7, v5, [Ljava/lang/Object;

    iget v8, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTextNum:I

    .line 203
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTextNum:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTipInputMax:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTipInputMax:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mToast:Landroid/widget/Toast;

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    if-lez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_secondary_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_quaternary_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$OnInputNumListener;

    if-eqz v0, :cond_5

    .line 220
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    invoke-interface {v0, p1, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$OnInputNumListener;->onInputNum(Landroid/text/Editable;Landroid/widget/TextView;)V

    :cond_5
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method public getEditTextLabel()Landroid/widget/TextView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method public getNumText()Landroid/widget/TextView;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 173
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 174
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 180
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 181
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
    .locals 2

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 129
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->updateUnderlineView(Z)V

    goto :goto_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mShowError:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->updateUnderlineView(Z)V

    :goto_1
    return-object p0
.end method

.method public setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditField$OnInputNumListener;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
    .locals 6

    .line 156
    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_num_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    if-gtz p1, :cond_0

    const/4 p1, -0x1

    .line 158
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTextNum:I

    const/16 p1, 0x8

    .line 159
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTextNum:I

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 164
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mNumText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    .line 165
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mOnInputNumListener:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$OnInputNumListener;

    return-object p0
.end method

.method public setRootPaddingRelative(IIII)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mRootLayout:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setTipInputMax(I)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    move-result-object p0

    return-object p0
.end method

.method public setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mTipInputMax:Ljava/lang/String;

    return-object p0
.end method

.method public updateUnderlineView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x2

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mErrorColor:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_0
    return-void
.end method
