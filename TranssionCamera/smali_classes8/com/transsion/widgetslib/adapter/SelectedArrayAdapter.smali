.class public Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectedArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEF_SELECTED_PST:I = -0x1


# instance fields
.field private final mImageViewResId:I

.field private mIsDropDownSpinner:Z

.field private mSelectedItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mSelectedPst:I

.field private final mTextViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedPst:I

    .line 46
    iput p3, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mTextViewResId:I

    .line 47
    iput p4, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageViewResId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    sget v2, Lcom/transsion/widgetslib/R$layout;->os_popup_item_layout_selected:I

    sget v4, Lcom/transsion/widgetslib/R$id;->os_list_popup_selected:I

    const v3, 0x1020014

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;-><init>(Landroid/content/Context;IIILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;)V"
        }
    .end annotation

    .line 36
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private setSelectedStatus(ILandroid/view/View;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedItem:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 117
    :goto_0
    iget v0, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mTextViewResId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 120
    iget v0, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageViewResId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    iget p0, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedPst:I

    const/16 v2, 0x8

    if-gez p0, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-ne p0, v2, :cond_3

    .line 125
    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 92
    iget-boolean p3, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mIsDropDownSpinner:Z

    if-eqz p3, :cond_0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->setSelectedStatus(ILandroid/view/View;)V

    :cond_0
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 104
    iget-boolean p3, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mIsDropDownSpinner:Z

    if-eqz p3, :cond_0

    .line 105
    iget p0, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageViewResId:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    .line 106
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->setSelectedStatus(ILandroid/view/View;)V

    :cond_1
    :goto_0
    return-object p2
.end method

.method public setDropDownSpinner(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mIsDropDownSpinner:Z

    return-void
.end method

.method public setSelected(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 62
    iput p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedPst:I

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedItem:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedPst:I

    :goto_0
    return-void
.end method

.method public setSelected(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedPst:I

    .line 76
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedItem:Ljava/lang/Object;

    return-void
.end method
