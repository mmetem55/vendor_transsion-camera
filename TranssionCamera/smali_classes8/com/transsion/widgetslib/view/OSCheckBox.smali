.class public Lcom/transsion/widgetslib/view/OSCheckBox;
.super Landroid/widget/CheckBox;
.source "OSCheckBox.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/OSCheckBox;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSCheckBox;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckBox;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckBox;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static getCheckDrawables(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;
    .locals 6

    .line 127
    new-instance v0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    invoke-direct {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;-><init>()V

    .line 129
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    .line 131
    invoke-static {p0, v2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getInstance(Landroid/content/Context;Z)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 132
    fill-array-data v4, :array_0

    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v4, v3, [I

    .line 134
    fill-array-data v4, :array_1

    sget v5, Lcom/transsion/widgetslib/R$drawable;->os_check_drawable_end_checked:I

    .line 135
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 134
    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v3, [I

    .line 137
    fill-array-data v3, :array_2

    sget v4, Lcom/transsion/widgetslib/R$drawable;->os_check_drawable_start_unchecked:I

    .line 138
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 137
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-static {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getInstance(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object p0

    const/4 v3, 0x0

    new-array v3, v3, [I

    .line 141
    invoke-virtual {v1, v3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->setStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)V

    .line 144
    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->setCheckedDrawable(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    .line 145
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

    .line 52
    invoke-interface {p1, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    :goto_0
    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->initDrawable()V

    .line 61
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    goto :goto_1

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    :cond_2
    :goto_1
    return-void
.end method

.method private initDrawable()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckDrawables(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 75
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OSCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 80
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    :cond_2
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 120
    invoke-super {p0}, Landroid/widget/CheckBox;->onDetachedFromWindow()V

    .line 121
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz p0, :cond_0

    .line 122
    invoke-interface {p0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 90
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    .line 96
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    sget-object v0, Lcom/transsion/widgetslib/view/OSCheckBox;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked, checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getParent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    if-ne v1, v2, :cond_1

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v3, :cond_2

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

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

    .line 112
    :goto_0
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 113
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 114
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-interface {p0, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    :cond_4
    :goto_1
    return-void
.end method
