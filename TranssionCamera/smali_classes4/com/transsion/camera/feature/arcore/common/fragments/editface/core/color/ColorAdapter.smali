.class public Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ColorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;,
        Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mColorList:[[D

.field private mColorSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;

.field private mContext:Landroid/content/Context;

.field private mExpandUI:Z

.field private mOtherCount:I

.field private mOtherResList:[I

.field private mSelectPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ColorAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[[DZ)V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mSelectPosition:I

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mColorList:[[D

    .line 32
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mOtherCount:I

    .line 33
    iput-boolean p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mExpandUI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[[D[I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mSelectPosition:I

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mColorList:[[D

    .line 39
    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mOtherResList:[I

    .line 40
    array-length p1, p3

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mOtherCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mSelectPosition:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mOtherCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mColorSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mColorList:[[D

    array-length v0, v0

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mOtherCount:I

    add-int/2addr v0, p0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;I)V
    .locals 11

    .line 50
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p2

    .line 51
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mOtherCount:I

    const/16 v1, 0x8

    if-le v0, p2, :cond_0

    .line 52
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;->mItemImg:Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mOtherResList:[I

    aget v2, v2, p2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setImageResource(I)V

    .line 53
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;->mSelect:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mColorList:[[D

    sub-int v0, p2, v0

    aget-object v0, v2, v0

    const/4 v2, 0x0

    .line 56
    aget-wide v3, v0, v2

    double-to-int v3, v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_1

    aget-wide v6, v0, v5

    double-to-int v3, v6

    if-nez v3, :cond_1

    aget-wide v6, v0, v4

    double-to-int v3, v6

    if-nez v3, :cond_1

    .line 58
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;->mItemImg:Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_gradual_color_icon:I

    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setImageResource(I)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v3, p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;->mItemImg:Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/16 v7, 0xff

    aget-wide v8, v0, v2

    double-to-int v8, v8

    aget-wide v9, v0, v5

    double-to-int v5, v9

    aget-wide v9, v0, v4

    double-to-int v0, v9

    invoke-static {v7, v8, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v6}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :goto_0
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;->mSelect:Landroid/view/View;

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mSelectPosition:I

    if-ne v3, p2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;
    .locals 3

    .line 45
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mExpandUI:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/camera/feature/arcore/R$layout;->layout_edit_face_color_fold:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/camera/feature/arcore/R$layout;->layout_edit_face_color:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setColorSelectListener(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mColorSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;

    return-void
.end method

.method public setSelectPosition(I)V
    .locals 1

    .line 82
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mSelectPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 84
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->mSelectPosition:I

    .line 85
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 86
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
