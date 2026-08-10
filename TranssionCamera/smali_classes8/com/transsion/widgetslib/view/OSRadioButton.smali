.class public Lcom/transsion/widgetslib/view/OSRadioButton;
.super Landroid/widget/RadioButton;
.source "OSRadioButton.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mIsInit:Z

.field private mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/transsion/widgetslib/view/OSRadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/OSRadioButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mIsInit:Z

    const/4 p1, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSRadioButton;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mIsInit:Z

    .line 41
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSRadioButton;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mIsInit:Z

    .line 46
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSRadioButton;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/view/OSRadioButton;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mIsInit:Z

    return p1
.end method

.method public static getRadioDrawables(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;
    .locals 7

    .line 137
    new-instance v0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    invoke-direct {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;-><init>()V

    .line 139
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    .line 141
    invoke-static {p0, v2}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->getInstance(Landroid/content/Context;Z)Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 142
    fill-array-data v4, :array_0

    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 144
    sget v4, Lcom/transsion/widgetslib/R$drawable;->os_radio_drawable_end_checked:I

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 146
    sget v5, Lcom/transsion/widgetslib/R$attr;->os_platform_disabled_color:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_platform_disabled_color_hios:I

    invoke-static {p0, v5, v6}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-array v5, v3, [I

    .line 147
    fill-array-data v5, :array_1

    invoke-virtual {v1, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_0
    sget v4, Lcom/transsion/widgetslib/R$drawable;->os_radio_drawable_start_unchecked:I

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 152
    sget v5, Lcom/transsion/widgetslib/R$color;->os_gray_tertiary_color:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-array v3, v3, [I

    .line 153
    fill-array-data v3, :array_2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_1
    invoke-static {p0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->getInstance(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    move-result-object p0

    const/4 v3, 0x0

    new-array v3, v3, [I

    .line 157
    invoke-virtual {v1, v3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->setStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)V

    .line 160
    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->setCheckedDrawable(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    .line 161
    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->setNormalDrawable(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    return-object v0

    :array_0
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x10100a0
        -0x101009e
    .end array-data

    :array_2
    .array-data 4
        -0x10100a0
        -0x101009e
    .end array-data
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "button"

    .line 54
    invoke-interface {p1, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    :goto_0
    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    goto :goto_1

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 71
    :goto_1
    new-instance p1, Lcom/transsion/widgetslib/view/OSRadioButton$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/OSRadioButton$1;-><init>(Lcom/transsion/widgetslib/view/OSRadioButton;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RadioButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private initDrawable()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/view/OSRadioButton;->getRadioDrawables(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 84
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OSRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    :cond_2
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 130
    invoke-super {p0}, Landroid/widget/RadioButton;->onDetachedFromWindow()V

    .line 131
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz p0, :cond_0

    .line 132
    invoke-interface {p0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 100
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    .line 106
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 107
    sget-object v0, Lcom/transsion/widgetslib/view/OSRadioButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked, checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getParent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    if-ne v1, v2, :cond_1

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v3, :cond_2

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v3

    .line 121
    :goto_0
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 122
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mIsInit:Z

    if-nez p1, :cond_4

    .line 123
    invoke-interface {v2, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    :cond_4
    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mIsInit:Z

    :cond_5
    :goto_1
    return-void
.end method
