.class public Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "EditWaterMarkSortFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCityInfo:Ljava/lang/String;

.field mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

.field private mEditWaterMarkUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEditWaterMarkUIItemsSort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIFragmentSortControl:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;

.field mShowBrandWaterMarkSort:Landroid/widget/TextView;

.field mShowCityWaterMarkSort:Landroid/widget/TextView;

.field mShowTextWaterMarkSort:Landroid/widget/TextView;

.field mShowTimeWaterMarkSort:Landroid/widget/TextView;

.field private mTextInfo:Ljava/lang/String;

.field private mTimeInfo:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$vWxQlieol8_Rt0xSiBTrGM5lAq0(Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->lambda$initViews$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$initViews$0()V
    .locals 1

    .line 97
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->getEditWaterMarkUIItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mIFragmentSortControl:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;->onUpdateSortWaterMark()V

    .line 102
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->updateTextView()V

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->showWaterMarkSorted()V

    return-void
.end method

.method private showBrandWaterMark(Landroid/widget/TextView;)V
    .locals 3

    .line 176
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->getBrandWatermark()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->getBrandWatermark()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 181
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 182
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 183
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0701a5

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 185
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 186
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 187
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showWaterMarkSorted()V
    .locals 5

    const/4 v0, 0x0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 116
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTimeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 120
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mCityInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 122
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTextInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v3, :cond_f

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->showBrandWaterMark(Landroid/widget/TextView;)V

    goto/16 :goto_1

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_7

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-nez v1, :cond_4

    .line 128
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTimeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 129
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 130
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mCityInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 131
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 132
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTextInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 133
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v3, :cond_f

    .line 134
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->showBrandWaterMark(Landroid/widget/TextView;)V

    goto/16 :goto_1

    .line 136
    :cond_7
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_b

    .line 137
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-nez v1, :cond_8

    .line 138
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTimeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 139
    :cond_8
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 140
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mCityInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 141
    :cond_9
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTextInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 143
    :cond_a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v3, :cond_f

    .line 144
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->showBrandWaterMark(Landroid/widget/TextView;)V

    goto :goto_1

    .line 146
    :cond_b
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    if-ne v0, v1, :cond_f

    .line 147
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-nez v1, :cond_c

    .line 148
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTimeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 149
    :cond_c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 150
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mCityInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 151
    :cond_d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v4, :cond_e

    .line 152
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTextInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 153
    :cond_e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v3, :cond_f

    .line 154
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->showBrandWaterMark(Landroid/widget/TextView;)V

    :cond_f
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method private updateShowTextView(Landroid/widget/TextView;)V
    .locals 2

    .line 191
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07012c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p0, -0x2

    .line 196
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 197
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 198
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateTextView()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->updateShowTextView(Landroid/widget/TextView;)V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->updateShowTextView(Landroid/widget/TextView;)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->updateShowTextView(Landroid/widget/TextView;)V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->updateShowTextView(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .locals 0

    return-void
.end method

.method getBrandWatermark()I
    .locals 0

    .line 267
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f08046b

    return p0

    :cond_0
    const p0, 0x7f08046a

    return p0
.end method

.method public getEditWaterMarkUIItemsSorted()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    return-object p0
.end method

.method protected getPreferenceResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .locals 0

    const p0, 0x7f090169

    .line 234
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    const p1, 0x7f10010e

    .line 235
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 236
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 4

    .line 84
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    const v0, 0x7f090166

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    new-instance v0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    .line 87
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    sget-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editWaterMarkUIItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->updateItemsList(Ljava/util/List;)V

    .line 95
    :cond_0
    new-instance v0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchHelper;

    new-instance v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    new-instance v3, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;-><init>(Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 105
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 63
    new-instance p3, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const p0, 0x7f0c0073

    const/4 p3, 0x0

    .line 64
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mIFragmentSortControl:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;->onExitSortWaterMark()V

    .line 111
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 69
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v0, ""

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_edit_watermark_sort"

    invoke-virtual {p2, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const p2, 0x7f090426

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    const p2, 0x7f090422

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    const p2, 0x7f090424

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    const p2, 0x7f090420

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    .line 79
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->showWaterMarkSorted()V

    return-void
.end method

.method protected removeAllPreferences()V
    .locals 0

    return-void
.end method

.method public setCityInfo(Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mCityInfo:Ljava/lang/String;

    return-void
.end method

.method public setIFragmentSortControl(Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mIFragmentSortControl:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;

    return-void
.end method

.method public setItemsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;",
            ">;)V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    .line 207
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    return-void
.end method

.method public setTextInfo(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTextInfo:Ljava/lang/String;

    return-void
.end method

.method public setTimeInfo(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTimeInfo:Ljava/lang/String;

    return-void
.end method

.method protected unInitViews()V
    .locals 0

    return-void
.end method
