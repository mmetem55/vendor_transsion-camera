.class Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SelectDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private mCheckView:Landroid/widget/CheckBox;

.field private mIconView:Landroid/widget/ImageView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$1;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;->mCheckView:Landroid/widget/CheckBox;

    return-object p0
.end method


# virtual methods
.method public bindData(Lcom/transsion/widgetslib/entity/SelectDialogEntity;)V
    .locals 2

    .line 115
    invoke-virtual {p1}, Lcom/transsion/widgetslib/entity/SelectDialogEntity;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lcom/transsion/widgetslib/entity/SelectDialogEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 123
    iget-object p0, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .line 109
    sget v0, Lcom/transsion/widgetslib/R$id;->image_select_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 110
    sget v0, Lcom/transsion/widgetslib/R$id;->text_select_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/transsion/widgetslib/R$id;->check_select_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;->mCheckView:Landroid/widget/CheckBox;

    return-void
.end method
