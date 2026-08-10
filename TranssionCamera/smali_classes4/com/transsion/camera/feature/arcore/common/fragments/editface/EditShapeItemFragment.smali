.class public Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;
.super Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;
.source "EditShapeItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;
    }
.end annotation


# instance fields
.field private endColor:I

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;",
            ">;"
        }
    .end annotation
.end field

.field private mColorList:[[D

.field private mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

.field private mColorSeekBar:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;

.field private mColorValueListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

.field private mDefaultValues:D

.field private mEditFaceStatusChaneListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;

.field private mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

.field private mLastSelectPos:I

.field private mOldSelectPos:I

.field private mSelectPos:I

.field private mValues:D

.field private oldProgressValues:D

.field private progress:D

.field private progressValues:D

.field private radio:D

.field private startColor:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mDefaultValues:D

    const/4 v2, 0x0

    .line 41
    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mSelectPos:I

    .line 42
    iput-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mValues:D

    .line 47
    iput-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->progress:D

    .line 49
    iput-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->oldProgressValues:D

    .line 50
    iput-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->progressValues:D

    .line 51
    iput-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->radio:D

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mLastSelectPos:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mLastSelectPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->itemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mEditFaceStatusChaneListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mOldSelectPos:I

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mSelectPos:I

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mSelectPos:I

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorValueListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)D
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mValues:D

    return-wide v0
.end method


# virtual methods
.method public getSeekBarColorValue(D)[D
    .locals 0

    .line 230
    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->getColor(D)[D

    move-result-object p0

    return-object p0
.end method

.method public getSelectPos()I
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->getSelectItem()I

    move-result p0

    return p0
.end method

.method public initDate(Ljava/util/List;Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;",
            ">;",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;",
            "I)V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->itemList:Ljava/util/List;

    .line 188
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mEditFaceStatusChaneListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;

    .line 189
    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mOldSelectPos:I

    .line 190
    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mLastSelectPos:I

    return-void
.end method

.method public initDate(Ljava/util/List;Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;I[[DDLcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;",
            ">;",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;",
            "I[[DD",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->initDate(Ljava/util/List;Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;I)V

    .line 171
    array-length p1, p4

    const/4 p2, 0x0

    aget-object p3, p4, p2

    array-length p3, p3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p3, v0, v1

    aput p1, v0, p2

    const-class p1, D

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorList:[[D

    move p1, p2

    .line 172
    :goto_0
    array-length p3, p4

    if-ge p1, p3, :cond_0

    .line 173
    aget-object p3, p4, p1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorList:[[D

    aget-object v0, v0, p1

    array-length v1, p3

    invoke-static {p3, p2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    iput-wide p5, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mDefaultValues:D

    double-to-int p1, p5

    .line 178
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mSelectPos:I

    int-to-double p1, p1

    sub-double p1, p5, p1

    .line 179
    iput-wide p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mValues:D

    .line 180
    iput-object p7, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorValueListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

    .line 182
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[initDate]FragmentId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mEditFaceBaseFragmentId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ,itemList:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->itemList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ,mColorList:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorList:[[D

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , values:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 57
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 58
    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->fragment_edit_shape_item:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mRootView:Landroid/view/View;

    .line 60
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->itemList:Ljava/util/List;

    if-nez p2, :cond_0

    return-object p1

    .line 64
    :cond_0
    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->shape_item_recycler:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->color_recycler:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->color_seek_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorSeekBar:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->isExpandUI()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->setExpandUI(Z)V

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->itemList:Ljava/util/List;

    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mOldSelectPos:I

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->init(Ljava/util/List;I)V

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    new-instance p2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->setItemControllerListener(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;)V

    .line 81
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mEditFaceBaseFragmentId:I

    const/4 p2, 0x1

    const/16 p3, 0x8

    if-ne p1, p2, :cond_1

    .line 82
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "face......."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->isExpandUI()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->setExpandUI(Z)V

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorSeekBar:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorList:[[D

    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mSelectPos:I

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->init([[DI)V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    new-instance p2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$2;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->setColorSelectListener(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorSeekBar:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 133
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public releaseResource()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    move v2, v1

    .line 141
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 142
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;

    .line 145
    iget-object v3, v3, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;->mItemImg:Landroid/widget/ImageView;

    check-cast v3, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;

    .line 146
    invoke-virtual {v3}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->releaseResource()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 155
    :goto_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 156
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 158
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;

    .line 159
    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;->mItemImg:Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;

    .line 160
    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->releaseResource()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public resetSelect()V
    .locals 4

    .line 211
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mOldSelectPos:I

    if-gtz v0, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->setSelectPosition(I)V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mEditFaceStatusChaneListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mEditFaceBaseFragmentId:I

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mLastSelectPos:I

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mOldSelectPos:I

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->itemList:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;->editFacePointChaneListener(IIILcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;)V

    return-void
.end method

.method public setColorItem(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mSelectPos:I

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->setColorItem(I)V

    return-void
.end method

.method public setColorPickGradient(DI)D
    .locals 1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 202
    iput-wide p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->progress:D

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0

    .line 205
    :cond_0
    invoke-static {p3}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->getRadio(I)F

    move-result p1

    float-to-double p1, p1

    iput-wide p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->progress:D

    return-wide p1
.end method

.method public setItem(I)V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->setItem(I)V

    return-void
.end method

.method public setProgress(D)V
    .locals 2

    .line 194
    iput-wide p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->progress:D

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->mColorSeekBar:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 196
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
