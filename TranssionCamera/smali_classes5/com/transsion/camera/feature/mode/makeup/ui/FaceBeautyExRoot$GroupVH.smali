.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
.source "FaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupVH"
.end annotation


# instance fields
.field private final mIconView:Landroid/widget/ImageView;

.field private final mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V
    .locals 1

    .line 887
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    .line 888
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 889
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 890
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    .line 891
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    .line 892
    sget p0, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_shadow_color:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/high16 p1, 0x40a00000    # 5.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v0, v0, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;)Landroid/widget/ImageView;
    .locals 0

    .line 883
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;)Landroid/widget/TextView;
    .locals 0

    .line 883
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .locals 5

    .line 902
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    if-eqz v0, :cond_8

    .line 903
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    .line 904
    iget-boolean v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 906
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->blackExpandDrawableId:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 908
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->expandDrawableId:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 910
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 913
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 914
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 915
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    .line 916
    instance-of v4, v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;

    if-eqz v4, :cond_2

    .line 917
    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;

    .line 918
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->access$1400(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$200(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    .line 925
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 926
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2

    .line 928
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 929
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 931
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_5

    .line 934
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mStateListBlack:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 936
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 938
    :goto_3
    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->drawableId:I

    if-lez v0, :cond_8

    if-eqz p2, :cond_7

    .line 940
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$1800()Ljava/util/Map;

    move-result-object p2

    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->drawableId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_6

    .line 941
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_6

    .line 942
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 944
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->drawableId:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 947
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public getType()I
    .locals 0

    const p0, 0xfa01

    return p0
.end method
