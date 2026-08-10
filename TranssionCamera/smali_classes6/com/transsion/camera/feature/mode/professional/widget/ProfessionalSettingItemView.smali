.class public Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;
.super Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;
.source "ProfessionalSettingItemView.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;


# instance fields
.field private mDrawableValueView:Landroid/widget/ImageView;

.field private mIsFinishInflated:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mValueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mIsFinishInflated:Z

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 40
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_setting_item_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mTitleView:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_setting_item_value:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mValueView:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_setting_item_drawable_value:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableValueView:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_item_view_shadow_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5, v5, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mValueView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v4, v5, v5, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mIsFinishInflated:Z

    return-void
.end method

.method public updateDrawable(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Z)V
    .locals 0

    return-void
.end method

.method public updateSubTitleAlpha(F)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mValueView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableValueView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public updateTitleColor(I)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateValue(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V
    .locals 4

    .line 50
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mIsFinishInflated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 54
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryExtDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 59
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {v2, p2}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 64
    aget-object p1, p1, p2

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 67
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mValueView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableValueView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 70
    :cond_2
    aget-object p1, v1, p2

    .line 71
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mValueView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableValueView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method
